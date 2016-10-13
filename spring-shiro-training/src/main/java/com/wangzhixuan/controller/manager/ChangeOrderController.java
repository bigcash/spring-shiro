package com.wangzhixuan.controller.manager;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.commons.utils.ResponseUtil;
import com.wangzhixuan.model.User;
import com.wangzhixuan.model.bus.ChangeHistory;
import com.wangzhixuan.model.bus.Dictionary;
import com.wangzhixuan.service.bus.AbstractService;
import com.wangzhixuan.service.bus.OtherService;

/***
 * 1、查询变更列表 2、新增变更单 3、查询字典表 4、根据下拉选择查询mac信息 5、根据选择的mac信息加载修改页面所有信息
 * 
 * @author kate
 *
 */
@Controller
@RequestMapping("/changeOrder")
@SuppressWarnings({ "rawtypes","unchecked" })
public class ChangeOrderController extends BaseController {
	private static Logger LOGGER = LoggerFactory.getLogger(ChangeOrderController.class);

	@Resource(name = "changeHistoryImpl")
	private AbstractService changeHistoryImpl;
	
	@Resource(name = "dictorynaryImpl")
	private AbstractService dictorynaryImpl;
	//OtherService
	@Resource(name = "daoImpl")
	private OtherService daoImpl;
	/**
	 * 加载页面
	 *
	 * @return
	 */
	@RequestMapping(value = "/managerAdd", method = RequestMethod.GET)
	public String managerAdd() {
		return "changehistory/serverManageAdd";
	}
	
	
	@RequestMapping(value = "/managerModify", method = RequestMethod.GET)
	public String managerModify() {
		return "changehistory/serverManageModify";
	}
	
	@RequestMapping(value = "/managerReturn", method = RequestMethod.GET)
	public String managerReturn() {
		return "changehistory/serverManageReturn";
	}
	@RequestMapping(value = "/scheduleList", method = RequestMethod.GET)
	public String scheduleList() {
		return "changehistory/scheduleList";
	}

	/**
	 * 查询变更单历史信息 当前登录人只能查看自己提交的变更单
	 * 
	 * @param changeHistory
	 * @param page
	 * @param rows
	 * @param sort
	 * @param order
	 * @return
	 */

	@RequestMapping(value = "dataGrid", method = RequestMethod.POST)
	@ResponseBody
	public Object historyDataGrid(String param,ChangeHistory changeHistory, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();
		User currentUser = getCurrentUser();
		int userType = currentUser.getUsertype();
		if (userType != 0) {
			condition.put("applicant", currentUser.getId().toString());
		}
		condition.put("bustype", param);
		pageInfo.setCondition(condition);
		try {
			changeHistoryImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("变更单历史信息分页查询失败,失败的原因是:", e);
		}
		return pageInfo;
	}

	/**
	 * 加载页面
	 *
	 * @return
	 */
	@RequestMapping(value = "/editPage", method = RequestMethod.GET)
	public String add() {
		return "changehistory/changehistoryModify";
	}


   /***
    * 字典表参数查询  台账名称和对应的表名称 	
    * @param request
    * @param response
    */
	@RequestMapping(value = "/queryParam", method = RequestMethod.POST)
	@ResponseBody
	public void queryParam(String param,HttpServletRequest request, HttpServletResponse response) {
		List<Dictionary> list = null;
		List resultList=new ArrayList();
		try {
			list = dictorynaryImpl.getDataList(param);
			for (Dictionary dictionary : list) {
				String key=dictionary.getKeys_();
				String value=dictionary.getName();
				String url=dictionary.getUrl();
				Map resultMap=new HashMap();
				resultMap.put("value", value);
				resultMap.put("key", key+"_"+url);
				resultList.add(resultMap);
			}
		} catch (Exception e) {
			LOGGER.error("查询参数列表失败,失败的原因是:", e);
		}
		try {
			ResponseUtil.WriteJson("queryParam", resultList, request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	/***
	 * 根据表名信息查询mac信息
	 * @param name
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "/queryDevno", method = RequestMethod.POST)
	@ResponseBody
	public void queryDevno(String name,HttpServletRequest request, HttpServletResponse response) {
		List<Map<String, Object>> list = null;
		try {
			list = daoImpl.getMacList(name.split("_")[0]);
			
		} catch (Exception e) {
			LOGGER.error("查询设备编号列表失败,失败的原因是:", e);
		}
		try {
			ResponseUtil.WriteJson("list", list, request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	/**
	 * 删除数据
	 *
	 * @param id
	 * @return
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Object delete(String id) {
		try {
			changeHistoryImpl.deleteById(id);
		} catch (Exception e) {
			LOGGER.error("变更单历史信息数据删除失败，失败的原因是:", e);
		}
		return renderSuccess("删除成功！");
	}

	
	
	@RequestMapping("/confirm")
	@ResponseBody
	public Object confirm(String id) {
		try {
			//changeHistoryImpl.deleteById(id);
			ChangeHistory changeHistory=new ChangeHistory();
			changeHistory.setId(id);
			changeHistory.setStatus("0");
			changeHistoryImpl.updateEntity(changeHistory);
			ChangeHistory chs=(ChangeHistory) changeHistoryImpl.findById(id);
			Map changeMap=new HashMap();
			changeMap.put("tablename", chs.getTablename());
			changeMap.put("rowid", chs.getRowid());
			changeMap.put("uuid", chs.getUpdatekey());
			daoImpl.updateObject(changeMap);
		} catch (Exception e) {
			LOGGER.error("变更单历史信息数据删除失败，失败的原因是:", e);
		}
		return renderSuccess("确定成功！");
	}
	
	
	
	
	
	@RequestMapping(value = "/addPage", method = RequestMethod.GET)
	public String addOrderPage() {
		return "changehistory/changehistoryAdd";
	}
	
	
	
	@RequestMapping(value = "/returnPage", method = RequestMethod.GET)
	public String returnPage() {
		return "changehistory/changehistoryReturn";
	}
	
	
	
	
	
	
	
	
	

}
