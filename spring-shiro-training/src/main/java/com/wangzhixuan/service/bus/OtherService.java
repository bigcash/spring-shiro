package com.wangzhixuan.service.bus;

import java.util.List;
import java.util.Map;

import com.wangzhixuan.model.bus.ChangeHistory;

public interface OtherService {

	List<Map<String, Object>> getMacList(String tablename) throws Exception;

	int updateEntity(ChangeHistory entity) throws Exception;

	int updateObject(Object t) throws Exception;
	

}
