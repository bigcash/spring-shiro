package com.wangzhixuan.service.bus;

import com.wangzhixuan.commons.utils.PageInfo;

public interface AbstractService<T> {

	T findByName(String name) throws Exception;

	T findById(String id) throws Exception;

	T findByEntity(T t) throws Exception;

	void findDataGrid(PageInfo pageInfo) throws Exception;

	void addEntity(T t) throws Exception;

	void updateEntity(T t) throws Exception;

	void deleteByEntity(T t) throws Exception;

	void deleteById(String id) throws Exception;
}
