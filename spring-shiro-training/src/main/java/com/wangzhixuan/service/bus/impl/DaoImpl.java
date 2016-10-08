package com.wangzhixuan.service.bus.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wangzhixuan.mapper.dao.DaoInterface;
import com.wangzhixuan.model.bus.ChangeHistory;
import com.wangzhixuan.service.bus.OtherService;

@Service
@SuppressWarnings("rawtypes")
public class DaoImpl implements OtherService {

	@Resource(name = "queryDao")
	private DaoInterface queryDao;

	@Override
	public List<Map<String, Object>> getMacList(String name) throws Exception {
		String sql = "select id,mac from " + name + "";
		return queryDao.getList(sql);
	}

	@Override
	public int updateEntity(ChangeHistory entity) throws Exception {
		String sql = "insert into change_history(applicant,applicationdate,changecontent,applicationno,updatekey,bustype,status,rowid,tablename)values('"
				+ entity.getApplicant() + "',now(),'" + entity.getChangecontent() + "','" + entity.getApplicationno()
				+ "','" + entity.getUpdatekey() + "','" + entity.getBustype() + "','" + entity.getStatus() + "','"
				+ entity.getRowid() + "','" + entity.getTablename() + "')";
		return queryDao.updateSql(sql);
	}

	@Override
	public int updateObject(Object t) throws Exception {
		Map resultMap = (HashMap) t;
		String uuid = (String) resultMap.get("uuid");
		String rowid = (String) resultMap.get("rowid");
		if (uuid != null) {
			String update_Sql = "update " + resultMap.get("tablename") + " set status='0' where id='" + rowid + "'";
			queryDao.updateSql(update_Sql);
		}
		String updateSql = "update " + resultMap.get("tablename") + " set status='0' where changeid='" + uuid + "'";
		queryDao.updateSql(updateSql);
		return 0;
	}

}
