package com.wangzhixuan.service.bus.impl.collection;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.collection.DiskInfoMapper;
import com.wangzhixuan.model.collection.DiskInfo;
import com.wangzhixuan.service.bus.AbstractService;
@Service
public class DiskInfoImpl implements AbstractService<DiskInfo> {
	@Autowired
	private DiskInfoMapper diskInfoMapper;
	@Override
	public DiskInfo findByName(String name) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DiskInfo findById(String id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DiskInfo findByEntity(DiskInfo t) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(diskInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(diskInfoMapper.findPageCount(pageInfo));
	}

	@Override
	public void addEntity(DiskInfo t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateEntity(DiskInfo t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteByEntity(DiskInfo t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(String id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<DiskInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DiskInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
