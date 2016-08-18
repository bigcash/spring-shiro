package com.wangzhixuan.mapper.bus;

import java.util.List;

import com.wangzhixuan.commons.utils.PageInfo;

public interface BaseMapper<T> {
	 T  findById(String id);
	 int deleteById(String id);
	 int insert(T t);
	 int update(T t);
	 List findPageCondition(PageInfo pageInfo);
	 int findPageCount(PageInfo pageInfo);

}
