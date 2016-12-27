package com.wangzhixuan.service.bus.impl;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.ParamMapper;
import com.wangzhixuan.model.bus.ParamEntity;
import com.wangzhixuan.service.bus.AbstractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ParamImpl implements AbstractService<ParamEntity> {
	@Autowired
	private ParamMapper ParamEntityMapper;


	@Override
	public ParamEntity findByName(String name) throws Exception {

		return null;
	}

	@Override
	public ParamEntity findById(String id) throws Exception {
		return ParamEntityMapper.findById(id);
	}

	@Override
	public ParamEntity findByEntity(ParamEntity t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(ParamEntityMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(ParamEntityMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(ParamEntity t) throws Exception {
		ParamEntityMapper.insert(t);

	}

	@Override
	public void updateEntity(ParamEntity t) throws Exception {
		ParamEntityMapper.update(t);

	}

	@Override
	public void deleteByEntity(ParamEntity t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		ParamEntityMapper.deleteById(id);

	}

	@Override
	public List<ParamEntity> getDataList() throws Exception {
		return ParamEntityMapper.getDataList();
	}

	@Override
	public List<ParamEntity> getDataList(String param) throws Exception {
		return ParamEntityMapper.getDataList(param);
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {

		
	}
	


}
