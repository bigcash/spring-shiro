package com.wangzhixuan.model.bus;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class BaseInfo {
	private String change_no;
	private String change_content;
	private String change_desc;
	private String bus_type;
	private String change_person;
	private String status;
	private String param_url;
	// 0表示正常 1 表示待更新的数据 2表示老数据
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date updatetime;
	
	private String changeid;

	public String getChange_no() {
		return change_no;
	}

	public void setChange_no(String change_no) {
		this.change_no = change_no;
	}

	public String getChange_content() {
		return change_content;
	}

	public void setChange_content(String change_content) {
		this.change_content = change_content;
	}

	public String getChange_desc() {
		return change_desc;
	}

	public void setChange_desc(String change_desc) {
		this.change_desc = change_desc;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}

	public String getChangeid() {
		return changeid;
	}

	public void setChangeid(String changeid) {
		this.changeid = changeid;
	}

	public String getParam_url() {
		return param_url;
	}

	public void setParam_url(String param_url) {
		this.param_url = param_url;
	}

	public String getBus_type() {
		return bus_type;
	}

	public void setBus_type(String bus_type) {
		this.bus_type = bus_type;
	}

	public String getChange_person() {
		return change_person;
	}

	public void setChange_person(String change_person) {
		this.change_person = change_person;
	}

	
}
