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
import com.wangzhixuan.model.bus.SecurityHostInfo;
import com.wangzhixuan.service.bus.AbstractService;
import com.wangzhixuan.service.bus.OtherService;

@Controller
@RequestMapping("/secHostInfoManage")
@SuppressWarnings({ "rawtypes", "unchecked" })
public class SecHostInfoController extends BaseController {
	private static Logger LOGGER = LoggerFactory.getLogger(SecHostInfoController.class);

	@Resource(name = "secHostInfoImpl")
	private AbstractService secHostInfoImpl;

	@Resource(name = "daoImpl")
	private OtherService daoImpl;

	/**
	 * 加载页面
	 *
	 * @return
	 */
	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public String manager() {
		return "secHostInfo/serverManage";
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
	public Object dataGrid(SecurityHostInfo SecurityHostInfo, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();

		if (StringUtils.isNoneBlank(SecurityHostInfo.getUsedepart())) {
			condition.put("usedepart", SecurityHostInfo.getUsedepart());
		}
		if (StringUtils.isNoneBlank(SecurityHostInfo.getResperson())) {
			condition.put("resperson", SecurityHostInfo.getResperson());
		}
		if (StringUtils.isNoneBlank(SecurityHostInfo.getModel())) {
			condition.put("model", SecurityHostInfo.getModel());
		}
		pageInfo.setCondition(condition);
		try {
			secHostInfoImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密单机台帐分页查询失败,失败的原因是:", e);
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
			secHostInfoImpl.deleteById(id);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密单机台帐数据删除失败，失败的原因是:", e);
		}
		return renderSuccess("删除成功！");
	}

	@RequestMapping(value = "/fileUpload", method = RequestMethod.GET)
	public String fileUpload() {
		return "secHostInfo/serverFileUpload";
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
				SecurityHostInfo SecurityHostInfo = (SecurityHostInfo) JsonUtil.getObjectFromJson(JsonUtil.getObjectToJson(map),
						SecurityHostInfo.class);
				secHostInfoImpl.addEntity(SecurityHostInfo);
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

		String[] columns = { "serialno", "devno", "assetsno", "usedepart", "resperson", "model", "configure",
				"displaymodel", "hostnumber", "diskid", "usedate", "secequipment", "purpose", "mac", "osinstall", "roomid",
				"infostatus" };

		List<Map> list = PoiUtil.getData(filePath, 2, columns);
		return list;
	}

	/****
	 * 新增十三所二三〇厂涉密单机台帐
	 */
	@RequestMapping(value = "/addPage")
	public String changeAddPage() {
		return "secHostInfo/secHostAdd";
	}

	/***
	 * 新增十三所二三〇厂涉密单机台帐变更单
	 * 
	 * @param computerInfo
	 * @return
	 */
	@RequestMapping(value = "/dataSave", method = RequestMethod.POST)
	@ResponseBody
	public Object serverDataSave(SecurityHostInfo securityHostInfo) {
		String message = securityHostInfo.getBus_type();
		try {
			ChangeHistory changeHistory = new ChangeHistory();
			changeHistory.setApplicant(getCurrentUser().getId().toString());
			changeHistory.setApplicationno(securityHostInfo.getChange_no());
			changeHistory.setStatus("1");
			changeHistory.setBustype(securityHostInfo.getBus_type());
			changeHistory.setChangecontent(message+"涉密单机台帐变更单");
			String updatekey = UUID.randomUUID().toString();
			changeHistory.setUpdatekey(updatekey);
			changeHistory.setTablename("sechostinfo");
			daoImpl.updateEntity(changeHistory);
			securityHostInfo.setStatus("1");
			securityHostInfo.setUpdatetime(new Date());
			securityHostInfo.setChangeid(updatekey);
			secHostInfoImpl.addEntity(securityHostInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密单机台帐数据添加失败,失败的原因是:", e);
		}
		

		return renderSuccess(message + "成功");
	}

	@RequestMapping("/editPage")
	// @ResponseBody
	public String serverEditPage(String id, Model model) {
		SecurityHostInfo securityHostInfo;
		try {
			securityHostInfo = (SecurityHostInfo) secHostInfoImpl.findById(id);
			model.addAttribute("SecurityHostInfo", securityHostInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密单机台帐数据根据ID查询失败，失败的原因是:", e);
		}
		return "secHostInfo/secHostEdit";
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
		SecurityHostInfo securityHostInfo;
		try {
			securityHostInfo = (SecurityHostInfo) secHostInfoImpl.findById(id);
			model.addAttribute("SecurityHostInfo", securityHostInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密单机台帐数据根据ID查询失败，失败的原因是:", e);
		}
		return "secHostInfo/secHostReturn";
	}

	@RequestMapping("/dataDetail")
	public String secHostDetail(String id, String mac, Model model) {
		SecurityHostInfo securityHostInfo;
		try {
			securityHostInfo = (SecurityHostInfo) secHostInfoImpl.findById(id);
			model.addAttribute("SecurityHostInfo", securityHostInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密单机台帐数据根据ID查询失败，失败的原因是:", e);
		}
		return "secHostInfo/secHostDetail";
	}

	@RequestMapping("/queryDetail")
	// @ResponseBody
	public String queryDetail(String id, Model model) {
		SecurityHostInfo securityHostInfo;
		try {
			securityHostInfo = (SecurityHostInfo) secHostInfoImpl.findById(id);
			securityHostInfo.setParam_url("/secHostInfoManage/dataDetail");
			model.addAttribute("SecurityHostInfo", securityHostInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密单机台帐数据根据ID查询失败，失败的原因是:", e);
		}
		return "collectionInfo/secHostInfo";
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
			secHostInfoImpl.findHistoryDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("根据mac、ip分页查询cpu信息失败,失败的原因是:", e);
		}
		return pageInfo;
	}

}
