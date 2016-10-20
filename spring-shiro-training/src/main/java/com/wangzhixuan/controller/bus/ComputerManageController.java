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
import com.wangzhixuan.model.bus.ComputerInfo;
import com.wangzhixuan.service.bus.AbstractService;
import com.wangzhixuan.service.bus.OtherService;

/***
 * 十三所二三〇厂涉密内网计算机台账
 * 
 * @author kate
 *
 */
@Controller
@RequestMapping("/computerManage")
@SuppressWarnings({ "rawtypes", "unchecked" })
public class ComputerManageController extends BaseController {
	private static Logger LOGGER = LoggerFactory.getLogger(ComputerManageController.class);

	@Resource(name = "computerManageImpl")
	private AbstractService computerManageImpl;

	@Resource(name = "daoImpl")
	private OtherService daoImpl;

	/**
	 * 管理页
	 *
	 * @return
	 */
	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public String manager() {
		return "bus/computerManage";
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
	public Object dataGrid(ComputerInfo computerInfo, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();
		// condition.put("status", "0");
		if (StringUtils.isNoneBlank(computerInfo.getDepname())) {
			condition.put("depname", computerInfo.getDepname());
		}
		if (StringUtils.isNoneBlank(computerInfo.getResperson())) {
			condition.put("resperson", computerInfo.getResperson());
		}
		if (StringUtils.isNoneBlank(computerInfo.getDevno())) {
			condition.put("devno", computerInfo.getDevno());
		}
		pageInfo.setCondition(condition);
		try {
			computerManageImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密内网计算机台账分页查询失败,失败的原因是:", e);
		}
		return pageInfo;
	}

	/**
	 * 添加用户页
	 *
	 * @return
	 */
	@RequestMapping(value = "/addPage", method = RequestMethod.GET)
	public String addPage() {
		return "bus/computerManageAdd";
	}

	/**
	 * 添加数据
	 *
	 * @param userVo
	 * @return
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public Object add(ComputerInfo computerInfo) {
		try {
			computerManageImpl.addEntity(computerInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密内网计算机台账数据添加失败,失败的原因是:", e);
		}
		return renderSuccess("添加成功");
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
			computerManageImpl.deleteById(id);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密内网计算机台账数据删除失败，失败的原因是:", e);
		}
		return renderSuccess("删除成功！");
	}

	@RequestMapping(value = "/fileUpload", method = RequestMethod.GET)
	public String fileUpload() {
		return "bus/computerFileUpload";
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
				ComputerInfo computerInfo = (ComputerInfo) JsonUtil.getObjectFromJson(JsonUtil.getObjectToJson(map),
						ComputerInfo.class);
				computerManageImpl.addEntity(computerInfo);
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
		String[] columns = { "infodevno", "depname", "resperson", "devseclevel", "propertyno", "propertyown", "devorigno",
				"devno", "diskno", "devstandard", "starttime", "devname", "ipaddress", "vlan", "mac", "switchport", "patchpanel",
				"phylocation", "osversion", "osinstime", "cakeyno", "networkmark", "usedstatus", "leaveTime", "remark",
				"isInstall" };

		List<Map> list = PoiUtil.getData(filePath, 2, columns);
		return list;
	}

	/***
	 * 新增内网计算机台账变更单页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/changeAddPage")
	public String changeAddPage() {
		return "bus/changeComputerAdd";
	}

	/***
	 * 新增计算机内网台账变更单
	 * 
	 * @param computerInfo
	 * @return
	 */
	@RequestMapping(value = "/changeAdd", method = RequestMethod.POST)
	@ResponseBody
	public Object changeAdd(ComputerInfo computerInfo) {
		try {
			ChangeHistory changeHistory = new ChangeHistory();
			changeHistory.setApplicant(getCurrentUser().getId().toString());
			changeHistory.setApplicationno(computerInfo.getChange_no());
			changeHistory.setStatus("1");
			changeHistory.setBustype("新增");
			changeHistory.setChangecontent("新增变更单");
			String updatekey = UUID.randomUUID().toString();
			changeHistory.setUpdatekey(updatekey);
			changeHistory.setTablename("computermanage");
			daoImpl.updateEntity(changeHistory);
			computerInfo.setStatus("1");
			computerInfo.setUpdatetime(new Date());
			computerInfo.setChangeid(updatekey);
			computerManageImpl.addEntity(computerInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密内网计算机台账数据添加失败,失败的原因是:", e);
		}
		return renderSuccess("添加成功");
	}

	/**
	 * 变更单内网计算机台账修改数据页面加载
	 *
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/editPage")
	// @ResponseBody
	public String editPage(String id, Model model) {
		ComputerInfo computerInfo;
		try {
			computerInfo = (ComputerInfo) computerManageImpl.findById(id);
			model.addAttribute("computerInfo", computerInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密内网计算机台账数据根据ID查询失败，失败的原因是:", e);
		}
		return "bus/computerManageEdit";
	}

	/**
	 * 变更单内网计算机台账修改数据保存
	 *
	 */
	@RequestMapping("/edit")
	@ResponseBody
	public Object edit(ComputerInfo computerInfo) {
		try {
			ChangeHistory changeHistory = new ChangeHistory();
			changeHistory.setApplicant(getCurrentUser().getId().toString());
			// changeHistory.setApplicationdate(new Date());
			changeHistory.setApplicationno(computerInfo.getChange_no());
			changeHistory.setChangecontent(computerInfo.getChange_content());
			changeHistory.setStatus("1");
			String updatekey = UUID.randomUUID().toString();
			changeHistory.setUpdatekey(updatekey);
			changeHistory.setRowid(computerInfo.getId());
			changeHistory.setBustype("修改");
			changeHistory.setTablename("computermanage");
			daoImpl.updateEntity(changeHistory);
			computerInfo.setStatus("1");
			computerInfo.setUpdatetime(new Date());
			computerInfo.setChangeid(updatekey);
			computerManageImpl.addEntity(computerInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密内网计算机台账数据根据更新失败，失败的原因是:", e);
		}
		return renderSuccess("修改成功！");
	}

	/***
	 * 台账清退内网计算机台账页面
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/returnPage")
	// @ResponseBody
	public String returnPage(String id, Model model) {
		ComputerInfo computerInfo;
		try {
			computerInfo = (ComputerInfo) computerManageImpl.findById(id);
			model.addAttribute("computerInfo", computerInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密内网计算机台账数据根据ID查询失败，失败的原因是:", e);
		}
		return "bus/computerManageReturn";
	}

	/***
	 * 保存内网计算机台账清退数据
	 * 
	 * @param computerInfo
	 * @return
	 */
	@RequestMapping("/returnSave")
	@ResponseBody
	public Object returnSave(ComputerInfo computerInfo) {
		try {
			ChangeHistory changeHistory = new ChangeHistory();
			changeHistory.setApplicant(getCurrentUser().getId().toString());
			// changeHistory.setApplicationdate(new Date());
			changeHistory.setApplicationno(computerInfo.getChange_no());
			changeHistory.setChangecontent(computerInfo.getChange_content());
			changeHistory.setStatus("1");
			String updatekey = UUID.randomUUID().toString();
			changeHistory.setUpdatekey(updatekey);
			changeHistory.setRowid(computerInfo.getId());
			changeHistory.setBustype("清退");
			changeHistory.setTablename("computermanage");
			daoImpl.updateEntity(changeHistory);
			computerInfo.setStatus("1");
			computerInfo.setUpdatetime(new Date());
			computerInfo.setChangeid(updatekey);
			computerManageImpl.addEntity(computerInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密内网计算机台账数据根据更新失败，失败的原因是:", e);
		}
		return renderSuccess("修改成功！");
	}

	/***
	 * 加载点击详情查看页面
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/queryDetail")
	// @ResponseBody
	public String queryDetail(String id, Model model) {
		ComputerInfo computerInfo;
		try {
			computerInfo = (ComputerInfo) computerManageImpl.findById(id);
			computerInfo.setParam_url("/computerManage/computerDetail");
			model.addAttribute("computerInfo", computerInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密内网计算机台账数据根据ID查询失败，失败的原因是:", e);
		}
		return "collectionInfo/collectionInfo";
	}

	/***
	 * 根据单条信息，查看台帐详情信息
	 * 
	 * @param id
	 * @param mac
	 * @param model
	 * @return
	 */

	@RequestMapping("/computerDetail")
	public String computerDetail(String id, String mac, Model model) {
		ComputerInfo computerInfo;
		try {
			computerInfo = (ComputerInfo) computerManageImpl.findById(id);
			model.addAttribute("computerInfo", computerInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密内网计算机台账数据根据ID查询失败，失败的原因是:", e);
		}
		return "bus/computerDetail";
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
	public Object historyDataGrid(String ip, String mac, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();
		// condition.put("status", "1");
		if (StringUtils.isNoneBlank(ip)) {
			condition.put("ip", ip);
		}
		if (StringUtils.isNoneBlank(mac)) {
			condition.put("mac", mac);
		}

		pageInfo.setCondition(condition);
		try {
			computerManageImpl.findHistoryDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("根据mac、ip分页查询cpu信息失败,失败的原因是:", e);
		}
		return pageInfo;
	}

}
