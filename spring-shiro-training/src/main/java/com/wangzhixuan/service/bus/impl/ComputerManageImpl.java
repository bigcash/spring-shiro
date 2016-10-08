package com.wangzhixuan.service.bus.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.ComputerManageMapper;
import com.wangzhixuan.model.bus.ComputerInfo;
import com.wangzhixuan.service.bus.AbstractService;
@Service
public class ComputerManageImpl implements AbstractService<ComputerInfo> {
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

	@Override
	public List<ComputerInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ComputerInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(computerManageMapper.findHistoryPageCondition(pageInfo));
		pageInfo.setTotal(computerManageMapper.findHistoryPageCount(pageInfo));
		
	}

}
