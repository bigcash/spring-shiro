package com.wangzhixuan.service.bus.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.ServerManageMapper;
import com.wangzhixuan.model.bus.ServerInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class ServerManageImpl implements AbstractService<ServerInfo> {
	@Autowired
	private ServerManageMapper serverManageMapper;

	@Override
	public ServerInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public ServerInfo findById(String id) throws Exception {
		return serverManageMapper.findById(id);
	}

	@Override
	public ServerInfo findByEntity(ServerInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(serverManageMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(serverManageMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(ServerInfo t) throws Exception {
		serverManageMapper.insert(t);

	}

	@Override
	public void updateEntity(ServerInfo t) throws Exception {
		serverManageMapper.update(t);

	}

	@Override
	public void deleteByEntity(ServerInfo t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		serverManageMapper.deleteById(id);

	}

	@Override
	public List<ServerInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ServerInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(serverManageMapper.findHistoryPageCondition(pageInfo));
		pageInfo.setTotal(serverManageMapper.findHistoryPageCount(pageInfo));
		
	}

}
