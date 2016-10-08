package com.wangzhixuan.service.bus.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.InternetInfoMapper;
import com.wangzhixuan.model.bus.InternetInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class InternetInfoImpl implements AbstractService<InternetInfo> {
	@Autowired
	private InternetInfoMapper internetInfoMapper;

	@Override
	public InternetInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public InternetInfo findById(String id) throws Exception {
		return internetInfoMapper.findById(id);
	}

	@Override
	public InternetInfo findByEntity(InternetInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(internetInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(internetInfoMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(InternetInfo t) throws Exception {
		internetInfoMapper.insert(t);

	}

	@Override
	public void updateEntity(InternetInfo t) throws Exception {
		internetInfoMapper.update(t);

	}

	@Override
	public void deleteByEntity(InternetInfo t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		internetInfoMapper.deleteById(id);

	}

	@Override
	public List<InternetInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<InternetInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
