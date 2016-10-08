package com.wangzhixuan.service.bus.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.SecProductMapper;
import com.wangzhixuan.model.bus.SecurityProductInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class SecProductInfoImpl implements AbstractService<SecurityProductInfo> {
	@Autowired
	private SecProductMapper secProductMapper;

	@Override
	public SecurityProductInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public SecurityProductInfo findById(String id) throws Exception {
		return secProductMapper.findById(id);
	}

	@Override
	public SecurityProductInfo findByEntity(SecurityProductInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(secProductMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(secProductMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(SecurityProductInfo t) throws Exception {
		secProductMapper.insert(t);

	}

	@Override
	public void updateEntity(SecurityProductInfo t) throws Exception {
		secProductMapper.update(t);

	}

	@Override
	public void deleteByEntity(SecurityProductInfo t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		secProductMapper.deleteById(id);

	}

	@Override
	public List<SecurityProductInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SecurityProductInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
