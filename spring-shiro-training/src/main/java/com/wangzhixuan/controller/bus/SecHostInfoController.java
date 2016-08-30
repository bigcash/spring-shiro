package com.wangzhixuan.controller.bus;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.wangzhixuan.model.bus.SecurityHostInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Controller
@RequestMapping("/secHostInfoManage")
@SuppressWarnings({ "rawtypes", "unchecked" })
public class SecHostInfoController extends BaseController {
	private static Logger LOGGER = LoggerFactory.getLogger(SecHostInfoController.class);

	@Resource(name = "secHostInfoImpl")
	private AbstractService secHostInfoImpl;

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
		  condition.put("usedepart", SecurityHostInfo.getUsedepart()); }
		  if (StringUtils.isNoneBlank(SecurityHostInfo.getResperson())) {
		  condition.put("resperson", SecurityHostInfo.getResperson()); } if
		  (StringUtils.isNoneBlank(SecurityHostInfo.getModel())) {
		  condition.put("model", SecurityHostInfo.getModel()); }
		 
		pageInfo.setCondition(condition);
		try {
			secHostInfoImpl.findDataGrid(pageInfo);
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
		return "secHostInfo/secHostInfoAdd";
	}

	/**
	 * 添加数据
	 *
	 * @param userVo
	 * @return
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public Object add(SecurityHostInfo SecurityHostInfo) {
		try {
			secHostInfoImpl.addEntity(SecurityHostInfo);
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
		SecurityHostInfo SecurityHostInfo;
		try {
			SecurityHostInfo = (SecurityHostInfo) secHostInfoImpl.findById(id);
			model.addAttribute("SecurityHostInfo", SecurityHostInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂服务器台账数据根据ID查询失败，失败的原因是:", e);
		}
		return "secHostInfo/secHostInfoEdit";
	}

	/**
	 * 更新数据
	 *
	 * @param userVo
	 * @return
	 */
	@RequestMapping("/edit")
	@ResponseBody
	public Object edit(SecurityHostInfo SecurityHostInfo) {

		try {
			secHostInfoImpl.updateEntity(SecurityHostInfo);
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
			secHostInfoImpl.deleteById(id);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂服务器台账数据删除失败，失败的原因是:", e);
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
				SecurityHostInfo SecurityHostInfo = (SecurityHostInfo) JsonUtil
						.getObjectFromJson(JsonUtil.getObjectToJson(map), SecurityHostInfo.class);
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

		String[] columns = { "serialno", "informdevno", "assetsno", "usedepart", "resperson", "model", "configure",
				"displaymodel", "hostnumber", "diskid", "usedate", "secequipment", "purpose", "mac", "osinstall",
				"roomid", "status" };

		List<Map> list = PoiUtil.getData(filePath, 2, columns);
		return list;
	}

}
