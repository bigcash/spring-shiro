package com.wangzhixuan.service.bus.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.SecHostInfoMapper;
import com.wangzhixuan.model.bus.SecurityHostInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class SecHostInfoImpl implements AbstractService<SecurityHostInfo> {
	@Autowired
	private SecHostInfoMapper secHostInfoMapper;

	@Override
	public SecurityHostInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public SecurityHostInfo findById(String id) throws Exception {
		return secHostInfoMapper.findById(id);
	}

	@Override
	public SecurityHostInfo findByEntity(SecurityHostInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(secHostInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(secHostInfoMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(SecurityHostInfo t) throws Exception {
		secHostInfoMapper.insert(t);

	}

	@Override
	public void updateEntity(SecurityHostInfo t) throws Exception {
		secHostInfoMapper.update(t);

	}

	@Override
	public void deleteByEntity(SecurityHostInfo t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		secHostInfoMapper.deleteById(id);

	}

}
