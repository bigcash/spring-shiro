package com.wangzhixuan.service.bus.impl.collection;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.collection.WarnComputerInfoMapper;
import com.wangzhixuan.model.collection.WarnComputerInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class WarnComputerInfoImpl implements AbstractService<WarnComputerInfo> {
	@Autowired
	private WarnComputerInfoMapper warnComputerInfoMapper;

	@Override
	public WarnComputerInfo findByName(String name) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WarnComputerInfo findById(String id) throws Exception {
		// TODO Auto-generated method stub
		return warnComputerInfoMapper.findById(id);
	}

	@Override
	public WarnComputerInfo findByEntity(WarnComputerInfo t) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(warnComputerInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(warnComputerInfoMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(WarnComputerInfo t) throws Exception {
		warnComputerInfoMapper.insert(t);

	}

	@Override
	public void updateEntity(WarnComputerInfo t) throws Exception {
		warnComputerInfoMapper.update(t);

	}

	@Override
	public void deleteByEntity(WarnComputerInfo t) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteById(String id) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<WarnComputerInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<WarnComputerInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		// TODO Auto-generated method stub

	}

}
