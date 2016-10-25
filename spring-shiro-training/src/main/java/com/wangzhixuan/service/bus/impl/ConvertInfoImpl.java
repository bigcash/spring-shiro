package com.wangzhixuan.service.bus.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.ConvertInfoMapper;
import com.wangzhixuan.model.bus.ConvertInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class ConvertInfoImpl implements AbstractService<ConvertInfo> {
	@Autowired
	private ConvertInfoMapper convertInfoMapper;

	@Override
	public ConvertInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public ConvertInfo findById(String id) throws Exception {
		return convertInfoMapper.findById(id);
	}

	@Override
	public ConvertInfo findByEntity(ConvertInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(convertInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(convertInfoMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(ConvertInfo t) throws Exception {
		convertInfoMapper.insert(t);

	}

	@Override
	public void updateEntity(ConvertInfo t) throws Exception {
		convertInfoMapper.update(t);

	}

	@Override
	public void deleteByEntity(ConvertInfo t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		convertInfoMapper.deleteById(id);

	}

	@Override
	public List<ConvertInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ConvertInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(convertInfoMapper.findHistoryPageCondition(pageInfo));
		pageInfo.setTotal(convertInfoMapper.findHistoryPageCount(pageInfo));
		
	}

}
