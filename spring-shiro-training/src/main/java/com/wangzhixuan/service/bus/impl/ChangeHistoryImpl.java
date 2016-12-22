package com.wangzhixuan.service.bus.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.ChangeHistoryMapper;
import com.wangzhixuan.model.bus.ChangeHistory;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class ChangeHistoryImpl implements AbstractService<ChangeHistory> {
	@Autowired
	private ChangeHistoryMapper ChangeHistoryMapper;

	@Override
	public ChangeHistory findByName(String name) throws Exception {

		return null;
	}

	@Override
	public ChangeHistory findById(String id) throws Exception {
		return ChangeHistoryMapper.findById(id);
	}

	@Override
	public ChangeHistory findByEntity(ChangeHistory t) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(ChangeHistoryMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(ChangeHistoryMapper.findPageCount(pageInfo));
		
	}

	@Override
	public void addEntity(ChangeHistory t) throws Exception {
		 
		
	}

	@Override
	public void updateEntity(ChangeHistory t) throws Exception {
		ChangeHistoryMapper.update(t);
		
	}

	@Override
	public void deleteByEntity(ChangeHistory t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(String id) throws Exception {
		ChangeHistoryMapper.deleteById(id);
		
	}

	@Override
	public List<ChangeHistory> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ChangeHistory> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	

	



}
