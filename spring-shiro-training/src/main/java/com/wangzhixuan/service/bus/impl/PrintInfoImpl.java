package com.wangzhixuan.service.bus.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.PrintInfoMapper;
import com.wangzhixuan.model.bus.PrintInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class PrintInfoImpl implements AbstractService<PrintInfo> {
	@Autowired
	private PrintInfoMapper printInfoMapper;

	@Override
	public PrintInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public PrintInfo findById(String id) throws Exception {
		return printInfoMapper.findById(id);
	}

	@Override
	public PrintInfo findByEntity(PrintInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(printInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(printInfoMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(PrintInfo t) throws Exception {
		printInfoMapper.insert(t);

	}

	@Override
	public void updateEntity(PrintInfo t) throws Exception {
		printInfoMapper.update(t);

	}

	@Override
	public void deleteByEntity(PrintInfo t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		printInfoMapper.deleteById(id);

	}

	@Override
	public List<PrintInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PrintInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(printInfoMapper.findHistoryPageCondition(pageInfo));
		pageInfo.setTotal(printInfoMapper.findHistoryPageCount(pageInfo));
		
	}

}
