package com.wangzhixuan.service.bus.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.UnsecPrintInfoMapper;
import com.wangzhixuan.model.bus.UnSecPrintInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class UnsecPrintInfoImpl implements AbstractService<UnSecPrintInfo> {
	@Autowired
	private UnsecPrintInfoMapper convertInfoMapper;

	@Override
	public UnSecPrintInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public UnSecPrintInfo findById(String id) throws Exception {
		return convertInfoMapper.findById(id);
	}

	@Override
	public UnSecPrintInfo findByEntity(UnSecPrintInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(convertInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(convertInfoMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(UnSecPrintInfo t) throws Exception {
		convertInfoMapper.insert(t);

	}

	@Override
	public void updateEntity(UnSecPrintInfo t) throws Exception {
		convertInfoMapper.update(t);

	}

	@Override
	public void deleteByEntity(UnSecPrintInfo t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		convertInfoMapper.deleteById(id);

	}

	@Override
	public List<UnSecPrintInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UnSecPrintInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
