package com.wangzhixuan.mapper.dao;

import java.util.List;
import java.util.Map;

public interface DaoInterface {

	List<Map<String, Object>> getList(String sql) throws Exception;

	int updateSql(String sql) throws Exception;

}
