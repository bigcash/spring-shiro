package com.wangzhixuan.controller.manager;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.model.bus.Dictionary;
import com.wangzhixuan.model.bus.SoftwareFilterInfo;
import com.wangzhixuan.service.bus.AbstractService;
/**
 * 字典管理
 * @author kate
 *
 */
@Controller
@RequestMapping("/dictionaryManager")
@SuppressWarnings({ "rawtypes", "unchecked" })
public class DictionaryController extends BaseController{
	private static Logger LOGGER = LoggerFactory.getLogger(DictionaryController.class);
	@Resource(name = "dictorynaryImpl")
	private AbstractService dictorynaryImpl;
	@Resource(name = "softwareFilterImpl")
	private AbstractService softwareFilterImpl;
	
	/**
	 * 加载页面
	 *
	 * @return
	 */
	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public String manager() {
		return "dictionary/serverManage";
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
	public Object dataGrid(Dictionary Dictionary, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();


		pageInfo.setCondition(condition);
		try {
			dictorynaryImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂考勤机台帐分页查询失败,失败的原因是:", e);
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
		return "dictionary/dictionaryAdd";
	}

	/**
	 * 添加数据
	 *
	 * @param userVo
	 * @return
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public Object add(Dictionary Dictionary) {
		try {
			dictorynaryImpl.addEntity(Dictionary);
		} catch (Exception e) {
			LOGGER.error("数据字典数据添加失败,失败的原因是:", e);
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
		Dictionary Dictionary;
		try {
			Dictionary = (Dictionary) dictorynaryImpl.findById(id);
			model.addAttribute("Dictionary", Dictionary);
		} catch (Exception e) {
			LOGGER.error("数据字典数据根据ID查询失败，失败的原因是:", e);
		}
		return "dictionary/dictionaryEdit";
	}

	/**
	 * 更新数据
	 *
	 * @param userVo
	 * @return
	 */
	@RequestMapping("/edit")
	@ResponseBody
	public Object edit(Dictionary Dictionary) {

		try {
			dictorynaryImpl.updateEntity(Dictionary);
		} catch (Exception e) {
			LOGGER.error("数据字典数据根据更新失败，失败的原因是:", e);
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
			dictorynaryImpl.deleteById(id);
		} catch (Exception e) {
			LOGGER.error("数据字典数据删除失败，失败的原因是:", e);
		}
		return renderSuccess("删除成功！");
	}

	
	

	/**
	 * 加载页面
	 *
	 * @return
	 */
	@RequestMapping(value = "/softwarePage", method = RequestMethod.GET)
	public String softwarePage() {
		return "dictionary/softwarePage";
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
	@RequestMapping(value = "/softwareDataGrid", method = RequestMethod.POST)
	@ResponseBody
	public Object softwareDataGrid(Dictionary Dictionary, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();
		pageInfo.setCondition(condition);
		try {
			softwareFilterImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("软件白名单分页查询失败,失败的原因是:", e);
		}
		return pageInfo;
	}

	/**
	 * 添加用户页
	 *
	 * @return
	 */
	@RequestMapping(value = "/softwareAddPage", method = RequestMethod.GET)
	public String softwareAddPage() {
		return "dictionary/softwareAdd";
	}

	/**
	 * 添加数据
	 *
	 * @param userVo
	 * @return
	 */
	@RequestMapping(value = "/softwareAdd", method = RequestMethod.POST)
	@ResponseBody
	public Object softwareAdd(SoftwareFilterInfo softwareFilterInfo) {
		try {
			softwareFilterImpl.addEntity(softwareFilterInfo);
		} catch (Exception e) {
			LOGGER.error("软件白名单数据添加失败,失败的原因是:", e);
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
	@RequestMapping("/softwareEditPage")
	public String softwareEditPage(String id, Model model) {
		SoftwareFilterInfo softwareFilterInfo;
		try {
			softwareFilterInfo = (SoftwareFilterInfo) softwareFilterImpl.findById(id);
			model.addAttribute("SoftwareFilterInfo", softwareFilterInfo);
		} catch (Exception e) {
			LOGGER.error("软件白名单数据根据ID查询失败，失败的原因是:", e);
		}
		return "dictionary/softwareEdit";
	}

	/**
	 * 更新数据
	 *
	 * @param userVo
	 * @return
	 */
	@RequestMapping("/softwareEdit")
	@ResponseBody
	public Object softwareEdit(SoftwareFilterInfo softwareFilterInfo) {

		try {
			softwareFilterImpl.updateEntity(softwareFilterInfo);
		} catch (Exception e) {
			LOGGER.error("软件白名单数据根据更新失败，失败的原因是:", e);
		}
		return renderSuccess("修改成功！");
	}

	/**
	 * 删除数据
	 *
	 * @param id
	 * @return
	 */
	@RequestMapping("/softwareDelete")
	@ResponseBody
	public Object softwareDelete(String id) {
		try {
			softwareFilterImpl.deleteById(id);
		} catch (Exception e) {
			LOGGER.error("软件白名单数据删除失败，失败的原因是:", e);
		}
		return renderSuccess("删除成功！");
	}

}
