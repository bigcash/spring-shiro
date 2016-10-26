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
import com.wangzhixuan.model.bus.UnSecPrintInfo;
import com.wangzhixuan.service.bus.AbstractService;
import com.wangzhixuan.service.bus.OtherService;

@Controller
@RequestMapping("/unSecPrintInfoManage")
@SuppressWarnings({ "rawtypes", "unchecked" })
public class UnsecPrintInfoController extends BaseController {
	private static Logger LOGGER = LoggerFactory.getLogger(UnsecPrintInfoController.class);

	@Resource(name = "unSecPrintInfoImpl")
	private AbstractService unSecPrintInfoImpl;

	/**
	 * 加载页面
	 *
	 * @return
	 */
	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public String manager() {
		return "unSecPrintInfo/serverManage";
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
	public Object dataGrid(UnSecPrintInfo UnSecPrintInfo, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();
		if (StringUtils.isNoneBlank(UnSecPrintInfo.getResdepart())) {
			condition.put("resdepart", UnSecPrintInfo.getResdepart());
		}
		if (StringUtils.isNoneBlank(UnSecPrintInfo.getResperson())) {
			condition.put("resperson", UnSecPrintInfo.getResperson());
		}
		if (StringUtils.isNoneBlank(UnSecPrintInfo.getDevno())) {
			condition.put("informdevno", UnSecPrintInfo.getDevno());
		}
		pageInfo.setCondition(condition);
		try {
			unSecPrintInfoImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂非密直连打印机台帐分页查询失败,失败的原因是:", e);
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
			unSecPrintInfoImpl.deleteById(id);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂非密直连打印机台帐数据删除失败，失败的原因是:", e);
		}
		return renderSuccess("删除成功！");
	}

	@RequestMapping(value = "/fileUpload", method = RequestMethod.GET)
	public String fileUpload() {
		return "unSecPrintInfo/serverFileUpload";
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
				UnSecPrintInfo UnSecPrintInfo = (UnSecPrintInfo) JsonUtil.getObjectFromJson(JsonUtil.getObjectToJson(map),
						UnSecPrintInfo.class);
				unSecPrintInfoImpl.addEntity(UnSecPrintInfo);
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

		String[] columns = { "sequenceno", "roomno", "informdevno", "newassetnum", "resdepart", "resperson", "brand", "model",
				"specifications", "serialno", "usedate", "devseclevel", "usemethod", "status", "remark", "accesspoint",
				"ipaddress", "mac", "paycardinfo", "payhostip", "paymac" };

		List<Map> list = PoiUtil.getData(filePath, 2, columns);
		return list;
	}

	@Resource(name = "daoImpl")
	private OtherService daoImpl;

	/****
	 * 新增十三所二三〇厂非密直连打印机台帐
	 */
	@RequestMapping(value = "/addPage")
	public String addPage() {
		return "unSecPrintInfo/unSecPrintAdd";
	}

	/***
	 * 新增十三所二三〇厂非密直连打印机台帐变更单
	 * 
	 * @param computerInfo
	 * @return
	 */
	@RequestMapping(value = "/dataSave", method = RequestMethod.POST)
	@ResponseBody
	public Object dataSave(UnSecPrintInfo unSecPrintInfo) {
		String message = unSecPrintInfo.getBus_type();
		try {
			ChangeHistory changeHistory = new ChangeHistory();
			changeHistory.setApplicant(getCurrentUser().getId().toString());
			changeHistory.setApplicationno(unSecPrintInfo.getChange_no());
			changeHistory.setStatus("1");
			changeHistory.setBustype(unSecPrintInfo.getBus_type());
			changeHistory.setChangecontent(message + "非密直连打印机台帐变更单");
			String updatekey = UUID.randomUUID().toString();
			changeHistory.setUpdatekey(updatekey);
			changeHistory.setTablename("unsecprintinfo");
			daoImpl.updateEntity(changeHistory);
			unSecPrintInfo.setStatus("1");
			unSecPrintInfo.setUpdatetime(new Date());
			unSecPrintInfo.setChangeid(updatekey);
			unSecPrintInfoImpl.addEntity(unSecPrintInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂非密直连打印机台帐数据添加失败,失败的原因是:", e);
		}

		return renderSuccess(message + "成功");
	}

	@RequestMapping("/editPage")
	// @ResponseBody
	public String editPage(String id, Model model) {
		UnSecPrintInfo unSecPrintInfo;
		try {
			unSecPrintInfo = (UnSecPrintInfo) unSecPrintInfoImpl.findById(id);
			model.addAttribute("UnSecPrintInfo", unSecPrintInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂非密直连打印机台帐数据根据ID查询失败，失败的原因是:", e);
		}
		return "unSecPrintInfo/unSecPrintEdit";
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
		UnSecPrintInfo unSecPrintInfo;
		try {
			unSecPrintInfo = (UnSecPrintInfo) unSecPrintInfoImpl.findById(id);
			model.addAttribute("UnSecPrintInfo", unSecPrintInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂非密直连打印机台帐数据根据ID查询失败，失败的原因是:", e);
		}
		return "unSecPrintInfo/unSecPrintReturn";
	}

	@RequestMapping("/dataDetail")
	public String dataDetail(String id, String mac, Model model) {
		UnSecPrintInfo unSecPrintInfo;
		try {
			unSecPrintInfo = (UnSecPrintInfo) unSecPrintInfoImpl.findById(id);
			model.addAttribute("UnSecPrintInfo", unSecPrintInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂非密直连打印机台帐数据根据ID查询失败，失败的原因是:", e);
		}
		return "unSecPrintInfo/unSecPrintDetail";
	}

	@RequestMapping("/queryDetail")
	public String queryDetail(String id, Model model) {
		UnSecPrintInfo unSecPrintInfo;
		try {
			unSecPrintInfo = (UnSecPrintInfo) unSecPrintInfoImpl.findById(id);
			unSecPrintInfo.setParam_url("/unSecPrintInfoManage/dataDetail");
			model.addAttribute("UnSecPrintInfo", unSecPrintInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂非密直连打印机台帐数据根据ID查询失败，失败的原因是:", e);
		}
		return "unSecPrintInfo/unSecPrintInfo";
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
			unSecPrintInfoImpl.findHistoryDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("根据devno分页查询cpu信息失败,失败的原因是:", e);
		}
		return pageInfo;
	}
}
