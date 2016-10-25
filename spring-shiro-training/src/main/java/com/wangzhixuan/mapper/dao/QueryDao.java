package com.wangzhixuan.mapper.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.abel533.sql.SqlMapper;

@Service("queryDao")
public class QueryDao implements DaoInterface {
	private static Logger LOGGER = LoggerFactory.getLogger(QueryDao.class);
	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	public List<Map<String, Object>> getList(String sql) throws Exception {
		List<Map<String, Object>> lsList =null;
		try {
			LOGGER.info("QueryDao 查询的sql语句:"+sql);
			lsList= new SqlMapper(sqlSessionFactory.openSession()).selectList(sql);
		}catch(Exception e){
			throw e;
		}
		return lsList;
	}

	@Override
	public int updateSql(String sql) throws Exception {
		int num=0;
		try {
			LOGGER.info("QueryDao 更新的sql语句:"+sql);
			 num = new SqlMapper(sqlSessionFactory.openSession()).update(sql);
		} catch (Exception e) {
			throw e;
		}
		
		return num;
	}

}
