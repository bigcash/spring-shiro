package com.wangzhixuan.mapper.bus;

import java.util.List;

import com.wangzhixuan.commons.utils.PageInfo;

public interface BaseMapper<T> {
	T findById(String id);

	int deleteById(String id);

	int insert(T t);

	int update(T t);

	@SuppressWarnings("rawtypes")
	List findPageCondition(PageInfo pageInfo);

	int findPageCount(PageInfo pageInfo);

	List<T> getDataList();

	List<T> getDataList(String param);
	
	List findHistoryPageCondition(PageInfo pageInfo);

	int findHistoryPageCount(PageInfo pageInfo);
}
