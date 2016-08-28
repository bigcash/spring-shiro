package com.wangzhixuan.service.bus.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.UnsecHostInfoMapper;
import com.wangzhixuan.model.bus.UnsecurityHostInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class UnsecHostInfoImpl implements AbstractService<UnsecurityHostInfo> {
	@Autowired
	private UnsecHostInfoMapper unsecHostInfoMapper;

	@Override
	public UnsecurityHostInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public UnsecurityHostInfo findById(String id) throws Exception {
		return unsecHostInfoMapper.findById(id);
	}

	@Override
	public UnsecurityHostInfo findByEntity(UnsecurityHostInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(unsecHostInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(unsecHostInfoMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(UnsecurityHostInfo t) throws Exception {
		unsecHostInfoMapper.insert(t);

	}

	@Override
	public void updateEntity(UnsecurityHostInfo t) throws Exception {
		unsecHostInfoMapper.update(t);

	}

	@Override
	public void deleteByEntity(UnsecurityHostInfo t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		unsecHostInfoMapper.deleteById(id);

	}

}
