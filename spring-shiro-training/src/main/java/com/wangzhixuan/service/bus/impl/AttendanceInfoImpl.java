package com.wangzhixuan.service.bus.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.AttendanceInfoMapper;
import com.wangzhixuan.model.bus.AttendanceInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class AttendanceInfoImpl implements AbstractService<AttendanceInfo> {
	@Autowired
	private AttendanceInfoMapper AttendanceInfoMapper;

	@Override
	public AttendanceInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public AttendanceInfo findById(String id) throws Exception {
		return AttendanceInfoMapper.findById(id);
	}

	@Override
	public AttendanceInfo findByEntity(AttendanceInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(AttendanceInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(AttendanceInfoMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(AttendanceInfo t) throws Exception {
		AttendanceInfoMapper.insert(t);

	}

	@Override
	public void updateEntity(AttendanceInfo t) throws Exception {
		AttendanceInfoMapper.update(t);

	}

	@Override
	public void deleteByEntity(AttendanceInfo t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		AttendanceInfoMapper.deleteById(id);

	}

	@Override
	public List<AttendanceInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<AttendanceInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
