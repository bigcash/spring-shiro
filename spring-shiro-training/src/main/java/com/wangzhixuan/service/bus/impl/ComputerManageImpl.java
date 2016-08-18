package com.wangzhixuan.service.bus.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.ComputerManageMapper;
import com.wangzhixuan.model.bus.ComputerInfo;
import com.wangzhixuan.service.bus.AbstractService;
@Service
public class ComputerManageImpl implements AbstractService<ComputerInfo> {
	private static Logger LOGGER = LoggerFactory.getLogger(ComputerManageImpl.class);
	@Autowired
	private ComputerManageMapper computerManageMapper;

	@Override
	public ComputerInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public ComputerInfo findById(String id) throws Exception {
		return computerManageMapper.findById(id);
	}

	@Override
	public ComputerInfo findByEntity(ComputerInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(computerManageMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(computerManageMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(ComputerInfo t) throws Exception {
		computerManageMapper.insert(t);

	}

	@Override
	public void updateEntity(ComputerInfo t) throws Exception {
		computerManageMapper.update(t);

	}

	@Override
	public void deleteByEntity(ComputerInfo t) throws Exception {
		

	}

	@Override
	public void deleteById(String id) throws Exception {
		computerManageMapper.deleteById(id);
		
	}

}
