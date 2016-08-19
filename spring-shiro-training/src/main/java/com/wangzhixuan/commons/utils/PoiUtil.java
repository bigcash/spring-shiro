package com.wangzhixuan.commons.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

public class PoiUtil {

	@SuppressWarnings({ "deprecation", "unchecked", "rawtypes" })
	public static List<Map> getData(String path, int index, String[] columns) {
		//String[] columns = column.split("-");
		List<Map> list = new ArrayList<Map>();
		Map map = new HashMap<String, String>();
		File file = new File(path);
		FileInputStream is = null;
		;
		HSSFWorkbook wbs = null;
		HSSFSheet sheetList = null;
		try {
			is = new FileInputStream(file);
			wbs = new HSSFWorkbook(is);
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}

		sheetList = wbs.getSheetAt(0);
		HSSFRow row = null;
		HSSFRow rowf = null;
		HSSFCell cell = null;
		rowf = sheetList.getRow(index);

		for (int i = index; rowf != null; i++) { // 2170是EXCEL有内容的行数
			map = new HashMap<String, String>();
			row = sheetList.getRow(i);
			rowf = sheetList.getRow(i + 1);
			for (int j = 0; j < columns.length; j++) {// 25是列数
				cell = (HSSFCell) row.getCell((short) j);
				if (cell != null && cell.toString() != "") {
					map.put(columns[j], cell.toString());
				} else {
					map.put(columns[j], null);

				}
			}
			list.add(map);
		}
		try {
			is.close();
		} catch (IOException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}

		return list;
	}

}
