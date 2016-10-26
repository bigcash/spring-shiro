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
import com.wangzhixuan.model.bus.SecPrintInfo;
import com.wangzhixuan.service.bus.AbstractService;
import com.wangzhixuan.service.bus.OtherService;

@Controller
@RequestMapping("/secPrintInfoManage")
@SuppressWarnings({ "rawtypes", "unchecked" })
public class SecPrintInfoController extends BaseController {
	private static Logger LOGGER = LoggerFactory.getLogger(SecPrintInfoController.class);

	@Resource(name = "secPrintInfoImpl")
	private AbstractService secPrintInfoImpl;

	/**
	 * 加载页面
	 *
	 * @return
	 */
	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public String manager() {
		return "secPrintInfo/serverManage";
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
	public Object dataGrid(SecPrintInfo SecPrintInfo, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();
		if (StringUtils.isNoneBlank(SecPrintInfo.getRegion())) {
			condition.put("region", SecPrintInfo.getRegion());
		}
		if (StringUtils.isNoneBlank(SecPrintInfo.getResperson())) {
			condition.put("resperson", SecPrintInfo.getResperson());
		}
		if (StringUtils.isNoneBlank(SecPrintInfo.getResdepart())) {
			condition.put("resdepart", SecPrintInfo.getResdepart());
		}
		pageInfo.setCondition(condition);
		try {
			secPrintInfoImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂直连涉密打印设备台帐分页查询失败,失败的原因是:", e);
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
			secPrintInfoImpl.deleteById(id);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂直连涉密打印设备台帐数据删除失败，失败的原因是:", e);
		}
		return renderSuccess("删除成功！");
	}

	@RequestMapping(value = "/fileUpload", method = RequestMethod.GET)
	public String fileUpload() {
		return "secPrintInfo/serverFileUpload";
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
				SecPrintInfo SecPrintInfo = (SecPrintInfo) JsonUtil.getObjectFromJson(JsonUtil.getObjectToJson(map),
						SecPrintInfo.class);
				secPrintInfoImpl.addEntity(SecPrintInfo);
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

		String[] columns = { "region", "devno", "roomno", "propertyno", "resdepart", "resperson", "brand", "model",
				"specifications", "serialno", "usedate", "devseclevel", "purpose", "usemethod", "infostatus", "remark" };

		List<Map> list = PoiUtil.getData(filePath, 2, columns);
		return list;
	}
	
	@Resource(name = "daoImpl")
	private OtherService daoImpl;
	/****
	 * 新增十三所二三〇厂直连涉密打印设备台帐
	 */
	@RequestMapping(value = "/addPage")
	public String addPage() {
		return "secPrintInfo/secPrintAdd";
	}

	/***
	 * 新增十三所二三〇厂直连涉密打印设备台帐变更单
	 * 
	 * @param computerInfo
	 * @return
	 */
	@RequestMapping(value = "/dataSave", method = RequestMethod.POST)
	@ResponseBody
	public Object dataSave(SecPrintInfo secPrintInfo) {
		String message = secPrintInfo.getBus_type();
		try {
			ChangeHistory changeHistory = new ChangeHistory();
			changeHistory.setApplicant(getCurrentUser().getId().toString());
			changeHistory.setApplicationno(secPrintInfo.getChange_no());
			changeHistory.setStatus("1");
			changeHistory.setBustype(secPrintInfo.getBus_type());
			changeHistory.setChangecontent(message+"内网打印机台帐变更单");
			String updatekey = UUID.randomUUID().toString();
			changeHistory.setUpdatekey(updatekey);
			changeHistory.setTablename("printinfo");
			daoImpl.updateEntity(changeHistory);
			secPrintInfo.setStatus("1");
			secPrintInfo.setUpdatetime(new Date());
			secPrintInfo.setChangeid(updatekey);
			secPrintInfoImpl.addEntity(secPrintInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂直连涉密打印设备台帐数据添加失败,失败的原因是:", e);
		}
		

		return renderSuccess(message + "成功");
	}

	@RequestMapping("/editPage")
	// @ResponseBody
	public String editPage(String id, Model model) {
		SecPrintInfo secPrintInfo;
		try {
			secPrintInfo = (SecPrintInfo) secPrintInfoImpl.findById(id);
			model.addAttribute("SecPrintInfo", secPrintInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂直连涉密打印设备台帐数据根据ID查询失败，失败的原因是:", e);
		}
		return "secPrintInfo/secPrintEdit";
	}

	/***
	 * 台账清退内网计算机台账页面
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/returnPage")
	public String returnPage(String id, Model model) {
		SecPrintInfo secPrintInfo;
		try {
			secPrintInfo = (SecPrintInfo) secPrintInfoImpl.findById(id);
			model.addAttribute("SecPrintInfo", secPrintInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂直连涉密打印设备台帐数据根据ID查询失败，失败的原因是:", e);
		}
		return "secPrintInfo/secPrintReturn";
	}

	@RequestMapping("/dataDetail")
	public String dataDetail(String id, String mac, Model model) {
		SecPrintInfo secPrintInfo;
		try {
			secPrintInfo = (SecPrintInfo) secPrintInfoImpl.findById(id);
			model.addAttribute("SecPrintInfo", secPrintInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂直连涉密打印设备台帐数据根据ID查询失败，失败的原因是:", e);
		}
		return "secPrintInfo/secPrintDetail";
	}

	@RequestMapping("/queryDetail")
	public String queryDetail(String id, Model model) {
		SecPrintInfo secPrintInfo;
		try {
			secPrintInfo = (SecPrintInfo) secPrintInfoImpl.findById(id);
			model.addAttribute("SecPrintInfo", secPrintInfo);
			secPrintInfo.setParam_url("/secPrintInfoManage/dataDetail");
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂直连涉密打印设备台帐数据根据ID查询失败，失败的原因是:", e);
		}
		return "secPrintInfo/secPrintInfo";
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
	public Object historyDataGrid(String devno, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();
		// condition.put("status", "1");
		if (StringUtils.isNoneBlank(devno)) {
			condition.put("devno", devno);
		}
		pageInfo.setCondition(condition);
		try {
			secPrintInfoImpl.findHistoryDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("根据devno分页查询cpu信息失败,失败的原因是:", e);
		}
		return pageInfo;
	}

}
