package com.wangzhixuan.controller.collection;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.utils.PageInfo;
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

}
