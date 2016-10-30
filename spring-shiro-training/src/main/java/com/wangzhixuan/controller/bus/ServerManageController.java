package com.wangzhixuan.controller.bus;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.utils.JsonUtil;
import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.commons.utils.PoiUtil;
import com.wangzhixuan.commons.utils.ResponseUtil;
import com.wangzhixuan.model.bus.ChangeHistory;
import com.wangzhixuan.model.bus.ServerInfo;
import com.wangzhixuan.service.bus.AbstractService;
import com.wangzhixuan.service.bus.OtherService;

@Controller
@RequestMapping("/serverManage")
@SuppressWarnings({ "rawtypes", "unchecked" })
public class ServerManageController extends BaseController {
	private static Logger LOGGER = LoggerFactory.getLogger(ServerManageController.class);

	@Resource(name = "serverManageImpl")
	private AbstractService serverManageImpl;

	@Resource(name = "daoImpl")
	private OtherService daoImpl;
	/**
	 * 加载页面
	 *
	 * @return
	 */
	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public String manager() {
		return "server/serverManage";
	}

	/**
	 * 数据列表
	 *
	 * @param userVo
	 * @param page
	 * @param rows
	 * @param sort
	 * @param order
	 * @return
	 */
	@RequestMapping(value = "/dataGrid", method = RequestMethod.POST)
	@ResponseBody
	public Object dataGrid(ServerInfo serverInfo, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("status", "0");
		if (StringUtils.isNoneBlank(serverInfo.getRespondepart())) {
			condition.put("respondepart", serverInfo.getRespondepart());
		}
		if (StringUtils.isNoneBlank(serverInfo.getMarcher())) {
			condition.put("marcher", serverInfo.getMarcher());
		}
		if (StringUtils.isNoneBlank(serverInfo.getModel())) {
			condition.put("model", serverInfo.getModel());
		}
		pageInfo.setCondition(condition);
		try {
			serverManageImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂服务器台账分页查询失败,失败的原因是:", e);
		}
		return pageInfo;
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
			serverManageImpl.deleteById(id);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂服务器台账数据删除失败，失败的原因是:", e);
		}
		return renderSuccess("删除成功！");
	}

	@RequestMapping(value = "/fileUpload", method = RequestMethod.GET)
	public String fileUpload() {
		return "server/serverFileUpload";
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	@ResponseBody
	public void upload(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request,
			HttpServletResponse response, ModelMap model) {
		String path = request.getSession().getServletContext().getRealPath("upload");
		String fileName = file.getOriginalFilename();
		File targetFile = new File(path, fileName);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		Map resultMap = new HashMap();
		// 保存
		try {
			file.transferTo(targetFile);
			List<Map> list = getExcelList(targetFile.getAbsolutePath());
			for (Map map : list) {
				ServerInfo serverInfo = (ServerInfo) JsonUtil.getObjectFromJson(JsonUtil.getObjectToJson(map),
						ServerInfo.class);
				serverManageImpl.addEntity(serverInfo);
			}
		} catch (Exception e) {
			logger.error("文件上传失败,失败的原因是:");
			resultMap.put("code", "-1");
		}
		resultMap.put("code", "1");
		try {
			ResponseUtil.WriteJson("upload", resultMap, request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<Map> getExcelList(String filePath) throws Exception {
		// 获取类的属性字段信息

		String[] columns = { "serialno", "newcertifno", "unicertifno", "respondepart", "marcher", "model", "equipment",
				"devno", "diskno", "osversion", "usedate", "secequipment", "mac", "ipaddress", "roomaddress",
				"usestatus", "mainuse", "accesspoint", "devtype", "remark" };

		List<Map> list = PoiUtil.getData(filePath, 2, columns);
		return list;
	}
	
	
	/****
	 * 新增十三所二三〇厂服务器台账
	 */
	@RequestMapping(value = "/serverAddPage")
	public String changeAddPage() {
		return "server/serverAdd";
	}
	
	
	
	/***
	 * 新增计算机内网台账变更单
	 * 
	 * @param computerInfo
	 * @return
	 */
	@RequestMapping(value = "/serverDataSave", method = RequestMethod.POST)
	@ResponseBody
	public Object serverDataSave(ServerInfo serverInfo) {
		String message=serverInfo.getBus_type();
		try {
			ChangeHistory changeHistory = new ChangeHistory();
			changeHistory.setApplicant(getCurrentUser().getId().toString());
			changeHistory.setApplicationno(serverInfo.getChange_no());
			changeHistory.setStatus("1");
			changeHistory.setBustype(serverInfo.getBus_type());
			changeHistory.setChangecontent(message+"服务器台账变更单");
			String updatekey = UUID.randomUUID().toString();
			changeHistory.setUpdatekey(updatekey);
			changeHistory.setTablename("servermanage");
			daoImpl.updateEntity(changeHistory);
			serverInfo.setStatus("1");
			serverInfo.setUpdatetime(new Date());
			serverInfo.setChangeid(updatekey);
			serverManageImpl.addEntity(serverInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂服务器台账数据添加失败,失败的原因是:", e);
		}
		
		
		return renderSuccess(message+"成功");
	}

	
	
	@RequestMapping("/serverEditPage")
	// @ResponseBody
	public String serverEditPage(String id, Model model) {
		ServerInfo serverInfo;
		try {
			serverInfo = (ServerInfo) serverManageImpl.findById(id);
			model.addAttribute("serverInfo", serverInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂服务器台账数据根据ID查询失败，失败的原因是:", e);
		}
		return "server/serverEdit";
	}

	

	/***
	 * 台账清退内网计算机台账页面
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/serverReturnPage")
	// @ResponseBody
	public String returnPage(String id, Model model) {
		ServerInfo serverInfo;
		try {
			serverInfo = (ServerInfo) serverManageImpl.findById(id);
			model.addAttribute("serverInfo", serverInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂服务器台账数据根据ID查询失败，失败的原因是:", e);
		}
		return "server/serverReturn";
	}


	
	
	@RequestMapping("/serverDetail")
	public String serverDetail(String id, String mac, Model model) {
		ServerInfo serverInfo;
		try {
			serverInfo = (ServerInfo) serverManageImpl.findById(id);
			//serverInfo.setParam_url("/computerManage/computerDetail");
			model.addAttribute("serverInfo", serverInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂服务器台账数据根据ID查询失败，失败的原因是:", e);
		}
		return "server/serverDetail";
	}
	
	
	@RequestMapping("/queryDetail")
	// @ResponseBody
	public String queryDetail(String id, Model model) {
		ServerInfo serverInfo;
		try {
			serverInfo = (ServerInfo) serverManageImpl.findById(id);
			serverInfo.setParam_url("/serverManage/serverDetail");
			model.addAttribute("serverInfo", serverInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂服务器台账数据根据ID查询失败，失败的原因是:", e);
		}
		return "collectionInfo/serverInfo";
	}

	/**
	 * 数据列表
	 *
	 * @param userVo
	 * @param page
	 * @param rows
	 * @param sort
	 * @param order
	 * @return
	 */
	@RequestMapping(value = "/historyDataGrid", method = RequestMethod.POST)
	@ResponseBody
	public Object historyDataGrid(String devno, String mac, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();
		// condition.put("status", "1");
		if (StringUtils.isNoneBlank(devno)) {
			condition.put("devno", devno);
		}
		if (StringUtils.isNoneBlank(mac)) {
			condition.put("mac", mac);
		}

		pageInfo.setCondition(condition);
		try {
			serverManageImpl.findHistoryDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("根据mac、ip分页查询cpu信息失败,失败的原因是:", e);
		}
		return pageInfo;
	}
	
	
	
	
	
	
	
	
	
	
	

}
