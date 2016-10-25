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
import com.wangzhixuan.model.bus.InternetInfo;
import com.wangzhixuan.service.bus.AbstractService;
import com.wangzhixuan.service.bus.OtherService;

@Controller
@RequestMapping("/internetInfoManage")
@SuppressWarnings({ "rawtypes", "unchecked" })
public class InternetInfoController extends BaseController {
	private static Logger LOGGER = LoggerFactory.getLogger(InternetInfoController.class);

	@Resource(name = "internetInfoImpl")
	private AbstractService internetInfoImpl;
	@Resource(name = "daoImpl")
	private OtherService daoImpl;

	/**
	 * 加载页面
	 *
	 * @return
	 */
	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public String manager() {
		return "internetInfo/serverManage";
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
	public Object dataGrid(InternetInfo InternetInfo, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();

		if (StringUtils.isNoneBlank(InternetInfo.getResdepart())) {
			condition.put("resdepart", InternetInfo.getResdepart());
		}
		if (StringUtils.isNoneBlank(InternetInfo.getResperson())) {
			condition.put("resperson", InternetInfo.getResperson());
		}
		if (StringUtils.isNoneBlank(InternetInfo.getDevno())) {
			condition.put("devno", InternetInfo.getDevno());
		}

		pageInfo.setCondition(condition);
		try {
			internetInfoImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂互联网计算机台帐分页查询失败,失败的原因是:", e);
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
			internetInfoImpl.deleteById(id);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂互联网计算机台帐数据删除失败，失败的原因是:", e);
		}
		return renderSuccess("删除成功！");
	}

	@RequestMapping(value = "/fileUpload", method = RequestMethod.GET)
	public String fileUpload() {
		return "internetInfo/serverFileUpload";
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
				InternetInfo InternetInfo = (InternetInfo) JsonUtil.getObjectFromJson(JsonUtil.getObjectToJson(map),
						InternetInfo.class);
				internetInfoImpl.addEntity(InternetInfo);
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

		String[] columns = { "region", "number", "roomnum", "infodevno", "newassertsno", "resdepart", "resperson", "devbrand",
				"devno", "serialno", "usedate", "devseculevel", "usemethod", "infostatus", "printhostip", "printmac", "printport",
				"patchpanel", "payhostip", "payport", "paymac", "park" };

		List<Map> list = PoiUtil.getData(filePath, 2, columns);
		return list;
	}

	/****
	 * 新增十三所二三〇厂互联网计算机台帐
	 */
	@RequestMapping(value = "/addPage")
	public String addPage() {
		return "internetInfo/internetAdd";
	}

	/***
	 * 新增十三所二三〇厂互联网计算机台帐变更单
	 * 
	 * @param computerInfo
	 * @return
	 */
	@RequestMapping(value = "/dataSave", method = RequestMethod.POST)
	@ResponseBody
	public Object dataSave(InternetInfo internetInfo) {
		try {
			ChangeHistory changeHistory = new ChangeHistory();
			changeHistory.setApplicant(getCurrentUser().getId().toString());
			changeHistory.setApplicationno(internetInfo.getChange_no());
			changeHistory.setStatus("1");
			changeHistory.setBustype(internetInfo.getBus_type());
			changeHistory.setChangecontent("新增变更单");
			String updatekey = UUID.randomUUID().toString();
			changeHistory.setUpdatekey(updatekey);
			changeHistory.setTablename("convertinfo");
			daoImpl.updateEntity(changeHistory);
			internetInfo.setStatus("1");
			internetInfo.setUpdatetime(new Date());
			internetInfo.setChangeid(updatekey);
			internetInfoImpl.addEntity(internetInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂互联网计算机台帐数据添加失败,失败的原因是:", e);
		}
		String message = internetInfo.getBus_type();

		return renderSuccess(message + "成功");
	}

	@RequestMapping("/editSave")
	// @ResponseBody
	public String editSave(String id, Model model) {
		InternetInfo internetInfo;
		try {
			internetInfo = (InternetInfo) internetInfoImpl.findById(id);
			model.addAttribute("InternetInfo", internetInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂互联网计算机台帐数据根据ID查询失败，失败的原因是:", e);
		}
		return "internetInfo/internetEdit";
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
		InternetInfo internetInfo;
		try {
			internetInfo = (InternetInfo) internetInfoImpl.findById(id);
			model.addAttribute("InternetInfo", internetInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂互联网计算机台帐数据根据ID查询失败，失败的原因是:", e);
		}
		return "internetInfo/internetReturn";
	}

	@RequestMapping("/dataDetail")
	public String dataDetail(String id, String mac, Model model) {
		InternetInfo internetInfo;
		try {
			internetInfo = (InternetInfo) internetInfoImpl.findById(id);
			model.addAttribute("InternetInfo", internetInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂互联网计算机台帐数据根据ID查询失败，失败的原因是:", e);
		}
		return "internetInfo/internetDetail";
	}

	@RequestMapping("/queryDetail")
	public String queryDetail(String id, Model model) {
		InternetInfo internetInfo;
		try {
			internetInfo = (InternetInfo) internetInfoImpl.findById(id);
			internetInfo.setParam_url("/internetInfoManage/dataDetail");
			model.addAttribute("InternetInfo", internetInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂互联网计算机台帐数据根据ID查询失败，失败的原因是:", e);
		}

		return "internetInfo/internetInfo";
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
			internetInfoImpl.findHistoryDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("根据devno分页查询cpu信息失败,失败的原因是:", e);
		}
		return pageInfo;
	}

}
