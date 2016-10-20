package com.wangzhixuan.controller.collection;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.model.bus.ChangeHistory;
import com.wangzhixuan.model.bus.ComputerInfo;
import com.wangzhixuan.model.collection.UsbFilterInfo;
import com.wangzhixuan.model.collection.WarnComputerInfo;
import com.wangzhixuan.model.collection.WarnUsbInfo;
import com.wangzhixuan.service.bus.AbstractService;

/****
 * 组合查询cup、disk、process信息
 * 
 * @author kate
 *
 */
@Controller
@RequestMapping("/combination")
@SuppressWarnings("rawtypes")
public class CombinationController extends BaseController {
	private static Logger LOGGER = LoggerFactory.getLogger(CombinationController.class);

	@Resource(name = "diskInfoImpl")
	private AbstractService diskInfoImpl;
	@Resource(name = "cpuInfoImpl")
	private AbstractService cpuInfoImpl;
	@Resource(name = "processInfoImpl")
	private AbstractService processInfoImpl;
	@Resource(name = "warnUsbInfoImpl")
	private AbstractService warnUsbInfoImpl;
	@Resource(name = "warnComputerInfoImpl")
	private AbstractService warnComputerInfoImpl;
	@Resource(name = "usbFilterInfoImpl")
	private AbstractService usbFilterInfoImpl;

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
	@RequestMapping(value = "/cpuDataGrid", method = RequestMethod.POST)
	@ResponseBody
	public Object dataGrid(String ip, String mac, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();
		if (StringUtils.isNoneBlank(ip)) {
			condition.put("ip", ip);
		}
		if (StringUtils.isNoneBlank(mac)) {
			condition.put("mac", mac);
		}

		pageInfo.setCondition(condition);
		try {
			cpuInfoImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("根据mac、ip分页查询cpu信息失败,失败的原因是:", e);
		}
		return pageInfo;
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
	@RequestMapping(value = "/diskDataGrid", method = RequestMethod.POST)
	@ResponseBody
	public Object diskDataGrid(String ip, String mac, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();
		if (StringUtils.isNoneBlank(ip)) {
			condition.put("ip", ip);
		}
		if (StringUtils.isNoneBlank(mac)) {
			condition.put("mac", mac);
		}

		pageInfo.setCondition(condition);
		try {
			diskInfoImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("根据mac、ip分页查询cpu信息失败,失败的原因是:", e);
		}
		return pageInfo;
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
	@RequestMapping(value = "/processDataGrid", method = RequestMethod.POST)
	@ResponseBody
	public Object processDataGrid(String ip, String mac, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();
		if (StringUtils.isNoneBlank(ip)) {
			condition.put("ip", ip);
		}
		if (StringUtils.isNoneBlank(mac)) {
			condition.put("mac", mac);
		}

		pageInfo.setCondition(condition);
		try {
			processInfoImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("根据mac、ip分页查询cpu信息失败,失败的原因是:", e);
		}
		return pageInfo;
	}

	/***
	 * 加载优盘报警的页面
	 */
	@RequestMapping(value = "/showWarnUsbPage", method = RequestMethod.GET)
	public String showWarnUsbPage() {
		return "collectionInfo/warnUsbPage";
	}

	@RequestMapping(value = "/warnUsbDataGrid", method = RequestMethod.POST)
	@ResponseBody
	public Object warnUsbDataGrid(String status, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();
		if (StringUtils.isNoneBlank(status)) {
			condition.put("status", "0");
		}
		pageInfo.setCondition(condition);
		try {
			warnUsbInfoImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("根据status分页查询usb预警信息失败,失败的原因是:", e);
		}
		return pageInfo;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("/updateWarnUsbStatus")
	@ResponseBody
	public Object updateWarnUsbStatus(String id) {

		try {
			WarnUsbInfo warnUsbInfo = new WarnUsbInfo();
			warnUsbInfo.setId(id);
			warnUsbInfo.setStatus("1");
			warnUsbInfoImpl.updateEntity(warnUsbInfo);
		} catch (Exception e) {
			LOGGER.error("usb预警数据更新失败，失败的原因是:", e);
		}
		return renderSuccess("修改成功！");
	}

	/***
	 * 加载十三所二三〇厂涉密内网计算机台账报警的页面
	 */
	@RequestMapping(value = "/showWarnComputerPage", method = RequestMethod.GET)
	public String showWarnComputerPage() {
		return "collectionInfo/warnComputerPage";
	}

	@RequestMapping(value = "/warnComputerDataGrid", method = RequestMethod.POST)
	@ResponseBody
	public Object warnComputerDataGrid(String status, Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		Map<String, Object> condition = new HashMap<String, Object>();
		if (StringUtils.isNoneBlank(status)) {
			condition.put("status", "0");
		}
		pageInfo.setCondition(condition);
		try {
			warnComputerInfoImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("根据status分页查询usb预警信息失败,失败的原因是:", e);
		}
		return pageInfo;
	}

	/****
	 * 计算机台帐忽略操作
	 */

	@RequestMapping("/updateWarnComputerStatus")
	@ResponseBody
	public Object updateWarnComputerStatus(String id) {

		try {
			WarnComputerInfo warnComputerInfo = new WarnComputerInfo();
			warnComputerInfo.setId(id);
			warnComputerInfo.setStatus("1");
			warnComputerInfoImpl.updateEntity(warnComputerInfo);
		} catch (Exception e) {
			LOGGER.error("内网计算机台帐预警数据更新失败，失败的原因是:", e);
		}
		return renderSuccess("操作成功！");
	}

	/****
	 * 内网计算机台帐处理操作
	 */
	@RequestMapping("/dealWarnComputer")
	public String dealWarnComputer(String id, Model model) {
		ComputerInfo computerInfo = new ComputerInfo();
		try {
			// 根据Id查询内网计算机台帐信息
			WarnComputerInfo warnComputerInfo = (WarnComputerInfo) warnComputerInfoImpl.findById(id);
			computerInfo.setIpaddress(warnComputerInfo.getIp());
			computerInfo.setMac(warnComputerInfo.getMac());
			computerInfo.setDiskno(warnComputerInfo.getSerialNumber());
			computerInfo.setOsversion(warnComputerInfo.getOs());
			model.addAttribute("computerInfo", computerInfo);
		} catch (Exception e) {
			LOGGER.error("根据id查询预警台帐信息失败，失败的原因是:", e);
		}
		return "collectionInfo/computerEdit";
	}

	/***
	 * usb添加白名单 页面加载
	 */
	@RequestMapping(value = "/showUsbPage", method = RequestMethod.GET)
	public String showUsbPage() {
		return "collectionInfo/showUsbPage";
	}

	/***
	 * usb白名单列表
	 * 
	 * @param ip
	 * @param mac
	 * @param page
	 * @param rows
	 * @param sort
	 * @param order
	 * @return
	 */
	@RequestMapping(value = "/usbDataGrid", method = RequestMethod.POST)
	@ResponseBody
	public Object usbDataGrid(Integer page, Integer rows, String sort, String order) {
		PageInfo pageInfo = new PageInfo(page, rows);
		try {
			usbFilterInfoImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("根据mac、ip分页查询cpu信息失败,失败的原因是:", e);
		}
		return pageInfo;
	}

	/***
	 * usb白名单添加页面
	 */

	@RequestMapping(value = "/addUsbPage", method = RequestMethod.GET)
	public String addUsbPage() {
		return "collectionInfo/addUsbPage";
	}

	/***
	 * usb添加数据
	 */

	@RequestMapping(value = "/addUsb", method = RequestMethod.POST)
	@ResponseBody
	public Object addUsb(UsbFilterInfo usbFilterInfo) {
		try {
			usbFilterInfoImpl.addEntity(usbFilterInfo);
		} catch (Exception e) {
			LOGGER.error("usb白名单数据添加失败,失败的原因是:", e);
		}
		return renderSuccess("添加成功");
	}

	/***
	 * usb白名单数据删除
	 */
	@RequestMapping("/usbDelete")
	@ResponseBody
	public Object usbDelete(String id) {
		try {
			usbFilterInfoImpl.deleteById(id);
		} catch (Exception e) {
			LOGGER.error("usb白名单数据删除失败，失败的原因是:", e);
		}
		return renderSuccess("删除成功！");
	}
	
	@RequestMapping("/usbEditPage")
	// @ResponseBody
	public String usbEditPage(String id, Model model) {
		UsbFilterInfo usbFilterInfo;
		try {
			usbFilterInfo = (UsbFilterInfo) usbFilterInfoImpl.findById(id);
			model.addAttribute("usbFilterInfo", usbFilterInfo);
		} catch (Exception e) {
			LOGGER.error("usb白名单数据根据ID查询失败，失败的原因是:", e);
		}
		return "collectionInfo/usbEditPage";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/usbUpdatePage")
	@ResponseBody
	public Object usbUpdatePage(UsbFilterInfo usbFilterInfo) {
		try {
			usbFilterInfoImpl.updateEntity(usbFilterInfo);
		} catch (Exception e) {
			LOGGER.error("usb白名单数据更新失败，失败的原因是:", e);
		}
		return renderSuccess("修改成功！");
	}
	
	
	
	
	
	
	
	
	

}
