package com.wangzhixuan.controller.bus;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import com.wangzhixuan.model.bus.SecurityProductInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Controller
@RequestMapping("/secProdInfoManage")
@SuppressWarnings({ "rawtypes", "unchecked" })
public class SecProductInfoController extends BaseController {
	private static Logger LOGGER = LoggerFactory.getLogger(SecProductInfoController.class);

	@Resource(name = "secProductInfoImpl")
	private AbstractService secProductInfoImpl;

	/**
	 * 加载页面
	 *
	 * @return
	 */
	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public String manager() {
		return "secProdInfo/serverManage";
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
	public Object dataGrid(SecurityProductInfo SecurityProductInfo, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();
		/*if (StringUtils.isNoneBlank(SecurityProductInfo.getRespondepart())) {
			condition.put("respondepart", SecurityProductInfo.getRespondepart());
		}
		if (StringUtils.isNoneBlank(SecurityProductInfo.getMarcher())) {
			condition.put("marcher", SecurityProductInfo.getMarcher());
		}
		if (StringUtils.isNoneBlank(SecurityProductInfo.getModel())) {
			condition.put("model", SecurityProductInfo.getModel());
		}*/
		pageInfo.setCondition(condition);
		try {
			secProductInfoImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂服务器台账分页查询失败,失败的原因是:", e);
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
		return "secProdInfo/secProdInfoAdd";
	}

	/**
	 * 添加数据
	 *
	 * @param userVo
	 * @return
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public Object add(SecurityProductInfo SecurityProductInfo) {
		try {
			secProductInfoImpl.addEntity(SecurityProductInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂服务器台账数据添加失败,失败的原因是:", e);
		}
		return renderSuccess("添加成功");
	}

	/**
	 * 编辑数据
	 *
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/editPage")
	public String editPage(String id, Model model) {
		SecurityProductInfo SecurityProductInfo;
		try {
			SecurityProductInfo = (SecurityProductInfo) secProductInfoImpl.findById(id);
			model.addAttribute("SecurityProductInfo", SecurityProductInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂服务器台账数据根据ID查询失败，失败的原因是:", e);
		}
		return "secProdInfo/secProdInfoEdit";
	}

	/**
	 * 更新数据
	 *
	 * @param userVo
	 * @return
	 */
	@RequestMapping("/edit")
	@ResponseBody
	public Object edit(SecurityProductInfo SecurityProductInfo) {

		try {
			secProductInfoImpl.updateEntity(SecurityProductInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂服务器台账数据根据更新失败，失败的原因是:", e);
		}
		return renderSuccess("修改成功！");
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
			secProductInfoImpl.deleteById(id);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂服务器台账数据删除失败，失败的原因是:", e);
		}
		return renderSuccess("删除成功！");
	}

	@RequestMapping(value = "/fileUpload", method = RequestMethod.GET)
	public String fileUpload() {
		return "secProdInfo/serverFileUpload";
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
				SecurityProductInfo SecurityProductInfo = (SecurityProductInfo) JsonUtil.getObjectFromJson(JsonUtil.getObjectToJson(map),
						SecurityProductInfo.class);
				secProductInfoImpl.addEntity(SecurityProductInfo);
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

		String[] columns = { "depname", "resperson", "securitylevel", "newname", "switchbrand", "factoryno", "switchip",
				"switchmac", "location", "port", "patchpanel", "purpose", "status", "region", "remark" };

		List<Map> list = PoiUtil.getData(filePath, 2, columns);
		return list;
	}

}
