package com.wangzhixuan.service.bus.impl.collection;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.collection.CpuInfoMapper;
import com.wangzhixuan.model.collection.CpuInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class CpuInfoImpl implements AbstractService<CpuInfo> {
	@Autowired
	private CpuInfoMapper cpuInfoMapper;
	@Override
	public CpuInfo findByName(String name) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CpuInfo findById(String id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CpuInfo findByEntity(CpuInfo t) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(cpuInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(cpuInfoMapper.findPageCount(pageInfo));
		
	}

	@Override
	public void addEntity(CpuInfo t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateEntity(CpuInfo t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteByEntity(CpuInfo t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(String id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<CpuInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CpuInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
