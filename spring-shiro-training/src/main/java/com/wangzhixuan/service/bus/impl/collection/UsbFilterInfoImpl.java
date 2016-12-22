package com.wangzhixuan.service.bus.impl.collection;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.mapper.collection.UsbFilterInfoMapper;
import com.wangzhixuan.model.collection.UsbFilterInfo;
import com.wangzhixuan.service.bus.AbstractService;
@Service
public class UsbFilterInfoImpl implements AbstractService<UsbFilterInfo> {

	@Autowired
	private UsbFilterInfoMapper usbFilterInfoMapper;
	@Override
	public UsbFilterInfo findByName(String name) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UsbFilterInfo findById(String id) throws Exception {
		// TODO Auto-generated method stub
		return usbFilterInfoMapper.findById(id);
	}

	@Override
	public UsbFilterInfo findByEntity(UsbFilterInfo t) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findDataGrid(PageInfo pageInfo) throws Exception {
		pageInfo.setRows(usbFilterInfoMapper.findPageCondition(pageInfo));
		pageInfo.setTotal(usbFilterInfoMapper.findPageCount(pageInfo));
		
	}

	@Override
	public void addEntity(UsbFilterInfo t) throws Exception {
		usbFilterInfoMapper.insert(t);
		
	}

	@Override
	public void updateEntity(UsbFilterInfo t) throws Exception {
		usbFilterInfoMapper.update(t);
		
	}

	@Override
	public void deleteByEntity(UsbFilterInfo t) throws Exception {

		
	}

	@Override
	public void deleteById(String id) throws Exception {
		usbFilterInfoMapper.deleteById(id);
		
	}

	@Override
	public List<UsbFilterInfo> getDataList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UsbFilterInfo> getDataList(String param) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void findHistoryDataGrid(PageInfo pageInfo) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
