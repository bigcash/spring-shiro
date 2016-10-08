package com.wangzhixuan.service.bus.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.SwitchInfoMapper;
import com.wangzhixuan.model.bus.SwitchInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class SwitchInfoImpl implements AbstractService<SwitchInfo> {
	@Autowired
	private SwitchInfoMapper switchInfoMapper;

	@Override
	public SwitchInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public SwitchInfo findById(String id) throws Exception {
		return switchInfoMapper.findById(id);
	}

	@Override
	public SwitchInfo findByEntity(SwitchInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(switchInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(switchInfoMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(SwitchInfo t) throws Exception {
		switchInfoMapper.insert(t);

	}

	@Override
	public void updateEntity(SwitchInfo t) throws Exception {
		switchInfoMapper.update(t);

	}

	@Override
	public void deleteByEntity(SwitchInfo t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		switchInfoMapper.deleteById(id);

	}

	@Override
	public List<SwitchInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SwitchInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
