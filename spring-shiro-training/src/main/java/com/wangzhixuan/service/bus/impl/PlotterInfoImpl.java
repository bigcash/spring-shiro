package com.wangzhixuan.service.bus.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.PlotterInfoMapper;
import com.wangzhixuan.model.bus.PlotterInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class PlotterInfoImpl implements AbstractService<PlotterInfo> {
	@Autowired
	private PlotterInfoMapper PlotterInfoMapper;

	@Override
	public PlotterInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public PlotterInfo findById(String id) throws Exception {
		return PlotterInfoMapper.findById(id);
	}

	@Override
	public PlotterInfo findByEntity(PlotterInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(PlotterInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(PlotterInfoMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(PlotterInfo t) throws Exception {
		PlotterInfoMapper.insert(t);

	}

	@Override
	public void updateEntity(PlotterInfo t) throws Exception {
		PlotterInfoMapper.update(t);

	}

	@Override
	public void deleteByEntity(PlotterInfo t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		PlotterInfoMapper.deleteById(id);

	}

}
