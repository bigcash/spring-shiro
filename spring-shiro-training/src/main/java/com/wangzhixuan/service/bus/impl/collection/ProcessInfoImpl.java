package com.wangzhixuan.service.bus.impl.collection;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.collection.ProcessInfoMapper;
import com.wangzhixuan.model.collection.ProcessInfo;
import com.wangzhixuan.service.bus.AbstractService;
@Service
public class ProcessInfoImpl implements AbstractService<ProcessInfo> {

	@Autowired
	private ProcessInfoMapper processInfoMapper;
	@Override
	public ProcessInfo findByName(String name) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProcessInfo findById(String id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProcessInfo findByEntity(ProcessInfo t) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(processInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(processInfoMapper.findPageCount(pageInfo));
		
	}

	@Override
	public void addEntity(ProcessInfo t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateEntity(ProcessInfo t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteByEntity(ProcessInfo t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(String id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ProcessInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProcessInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
