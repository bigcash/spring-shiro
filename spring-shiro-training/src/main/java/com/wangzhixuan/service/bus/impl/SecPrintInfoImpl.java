package com.wangzhixuan.service.bus.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.SecPrintInfoMapper;
import com.wangzhixuan.model.bus.SecPrintInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class SecPrintInfoImpl implements AbstractService<SecPrintInfo> {
	@Autowired
	private SecPrintInfoMapper convertInfoMapper;

	@Override
	public SecPrintInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public SecPrintInfo findById(String id) throws Exception {
		return convertInfoMapper.findById(id);
	}

	@Override
	public SecPrintInfo findByEntity(SecPrintInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(convertInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(convertInfoMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(SecPrintInfo t) throws Exception {
		convertInfoMapper.insert(t);

	}

	@Override
	public void updateEntity(SecPrintInfo t) throws Exception {
		convertInfoMapper.update(t);

	}

	@Override
	public void deleteByEntity(SecPrintInfo t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		convertInfoMapper.deleteById(id);

	}

	@Override
	public List<SecPrintInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SecPrintInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
