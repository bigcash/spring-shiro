package com.wangzhixuan.service.bus.impl.collection;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.collection.WarnUsbInfoMapper;
import com.wangzhixuan.model.collection.WarnUsbInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class WarnUsbInfoImpl implements AbstractService<WarnUsbInfo> {
	@Autowired
	private WarnUsbInfoMapper warnUsbInfoMapper;
	@Override
	public WarnUsbInfo findByName(String name) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WarnUsbInfo findById(String id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WarnUsbInfo findByEntity(WarnUsbInfo t) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(warnUsbInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(warnUsbInfoMapper.findPageCount(pageInfo));
		
	}

	@Override
	public void addEntity(WarnUsbInfo t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateEntity(WarnUsbInfo t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteByEntity(WarnUsbInfo t) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(String id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<WarnUsbInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<WarnUsbInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
