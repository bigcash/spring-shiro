package com.wangzhixuan.service.bus.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.SoftwareFilterInfoMapper;
import com.wangzhixuan.model.bus.SoftwareFilterInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class SoftwareFilterImpl implements AbstractService<SoftwareFilterInfo> {
	@Autowired
	private SoftwareFilterInfoMapper SoftwareFilterInfoMapper;

	@Override
	public SoftwareFilterInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public SoftwareFilterInfo findById(String id) throws Exception {
		return SoftwareFilterInfoMapper.findById(id);
	}

	@Override
	public SoftwareFilterInfo findByEntity(SoftwareFilterInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(SoftwareFilterInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(SoftwareFilterInfoMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(SoftwareFilterInfo t) throws Exception {
		SoftwareFilterInfoMapper.insert(t);

	}

	@Override
	public void updateEntity(SoftwareFilterInfo t) throws Exception {
		SoftwareFilterInfoMapper.update(t);

	}

	@Override
	public void deleteByEntity(SoftwareFilterInfo t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		SoftwareFilterInfoMapper.deleteById(id);

	}

	@Override
	public List<SoftwareFilterInfo> getDataList() throws Exception {
		return SoftwareFilterInfoMapper.getDataList();
	}

	@Override
	public List<SoftwareFilterInfo> getDataList(String param) throws Exception {
		return SoftwareFilterInfoMapper.getDataList(param);
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		// TODO Auto-generated method stub
		
	}
	


}
