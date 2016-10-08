package com.wangzhixuan.mapper.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.abel533.sql.SqlMapper;

@Service("queryDao")
public class QueryDao implements DaoInterface {

	@Autowired
	private SqlSessionFactory sqlSessionFactory;
/*	private SqlSession sqlSession = null;
	private SqlMapper sqlMapper = null;

	public SqlSession getSqlSession() {
		if (null == sqlSession) {
			sqlSession = sqlSessionFactory.openSession();
		}
		return sqlSession;
	}

	public SqlMapper getSqlMapper() {
		if (null == sqlMapper) {
			sqlMapper = new SqlMapper(getSqlSession());
		}
		return sqlMapper;
	}

	public void closeSqlSession() {
		if (null != sqlSession) {
			sqlSession.close();
		}
	}*/

	public List<Map<String, Object>> getList(String sql) throws Exception {
		List<Map<String, Object>> lsList =null;
		try {
			lsList= new SqlMapper(sqlSessionFactory.openSession()).selectList(sql);
		} finally {
			//closeSqlSession();
		}
		return lsList;
	}

	@Override
	public int updateSql(String sql) throws Exception {
		int num=0;
		try {
			 num = new SqlMapper(sqlSessionFactory.openSession()).update(sql);
		} catch (Exception e) {
			throw e;
		}finally {
			//sqlSession.commit();
			//closeSqlSession();
		}
		
		return num;
	}

}
