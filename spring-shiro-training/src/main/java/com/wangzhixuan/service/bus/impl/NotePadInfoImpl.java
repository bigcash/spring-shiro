package com.wangzhixuan.service.bus.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.bus.NotePadInfoMapper;
import com.wangzhixuan.model.bus.NotePadInfo;
import com.wangzhixuan.service.bus.AbstractService;

@Service
public class NotePadInfoImpl implements AbstractService<NotePadInfo> {
	@Autowired
	private NotePadInfoMapper convertInfoMapper;

	@Override
	public NotePadInfo findByName(String name) throws Exception {

		return null;
	}

	@Override
	public NotePadInfo findById(String id) throws Exception {
		return convertInfoMapper.findById(id);
	}

	@Override
	public NotePadInfo findByEntity(NotePadInfo t) throws Exception {

		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(convertInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(convertInfoMapper.findPageCount(pageInfo));

	}

	@Override
	public void addEntity(NotePadInfo t) throws Exception {
		convertInfoMapper.insert(t);

	}

	@Override
	public void updateEntity(NotePadInfo t) throws Exception {
		convertInfoMapper.update(t);

	}

	@Override
	public void deleteByEntity(NotePadInfo t) throws Exception {

	}

	@Override
	public void deleteById(String id) throws Exception {
		convertInfoMapper.deleteById(id);

	}

}
