package com.wangzhixuan.service.bus.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.OaAutoInfoMapper;
import com.wangzhixuan.model.bus.OaAutoInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class OaAutoInfoImpl implements AbstractService<OaAutoInfo> {
	@Autowired
	private OaAutoInfoMapper OaAutoInfoMapper;

	@Override
	public OaAutoInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public OaAutoInfo findById(String id) throws Exception {
		return OaAutoInfoMapper.findById(id);
	}

	@Override
	public OaAutoInfo findByEntity(OaAutoInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(OaAutoInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(OaAutoInfoMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(OaAutoInfo t) throws Exception {
		OaAutoInfoMapper.insert(t);

	}

	@Override
	public void updateEntity(OaAutoInfo t) throws Exception {
		OaAutoInfoMapper.update(t);

	}

	@Override
	public void deleteByEntity(OaAutoInfo t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		OaAutoInfoMapper.deleteById(id);

	}

	@Override
	public List<OaAutoInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OaAutoInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
