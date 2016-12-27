package com.wangzhixuan.service.bus.impl;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.DictionaryMapper;
import com.wangzhixuan.model.bus.Dictionary;
import com.wangzhixuan.service.bus.AbstractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DictorynaryImpl implements AbstractService<Dictionary> {
	@Autowired
	private DictionaryMapper DictionaryMapper;


	@Override
	public Dictionary findByName(String name) throws Exception {

		return null;
	}

	@Override
	public Dictionary findById(String id) throws Exception {
		return DictionaryMapper.findById(id);
	}

	@Override
	public Dictionary findByEntity(Dictionary t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(DictionaryMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(DictionaryMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(Dictionary t) throws Exception {
		DictionaryMapper.insert(t);

	}

	@Override
	public void updateEntity(Dictionary t) throws Exception {
		DictionaryMapper.update(t);

	}

	@Override
	public void deleteByEntity(Dictionary t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		DictionaryMapper.deleteById(id);

	}

	@Override
	public List<Dictionary> getDataList() throws Exception {
		return DictionaryMapper.getDataList();
	}

	@Override
	public List<Dictionary> getDataList(String param) throws Exception {
		return DictionaryMapper.getDataList(param);
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {

		
	}
	


}
