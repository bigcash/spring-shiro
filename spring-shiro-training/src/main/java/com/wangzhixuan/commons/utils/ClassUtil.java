package com.wangzhixuan.commons.utils;

import java.lang.reflect.Field;

import com.wangzhixuan.model.bus.ServerInfo;

public class ClassUtil {

	public static <T> String[] getFields(Class<T> t) throws Exception {
		String[] fields = {};
		Field[] field = t.getClass().getDeclaredFields(); // 获取实体类的所有属性，返回Field数组
		for (int j = 0; j < field.length; j++) { // 遍历所有属性
			String name = field[j].getName(); // 获取属性的名字
			System.out.println("attribute name:" + name);
		}
		return fields;
	}

	

	public static void main(String[] args) {
		try {
			ClassUtil.getFields(ServerInfo.class);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
