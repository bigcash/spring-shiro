package com.wangzhixuan.model.bus;

import java.util.Date;

public class ChangeHistory {
	private String id;
	private Date changedate;
	private String applicant;
	private String changecontent;
	private Date applicationdate;
	private String applicationno;
	private String updatekey;
	private String status;
	private String bustype;
	private String tablename;
	//点击确定后要更新旧的状态行主键id
	private String rowid;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getChangedate() {
		return changedate;
	}

	public void setChangedate(Date changedate) {
		this.changedate = changedate;
	}

	public String getApplicant() {
		return applicant;
	}

	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}

	public String getChangecontent() {
		return changecontent;
	}

	public void setChangecontent(String changecontent) {
		this.changecontent = changecontent;
	}

	public Date getApplicationdate() {
		return applicationdate;
	}

	public void setApplicationdate(Date applicationdate) {
		this.applicationdate = applicationdate;
	}

	public String getApplicationno() {
		return applicationno;
	}

	public void setApplicationno(String applicationno) {
		this.applicationno = applicationno;
	}

	public String getUpdatekey() {
		return updatekey;
	}

	public void setUpdatekey(String updatekey) {
		this.updatekey = updatekey;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getBustype() {
		return bustype;
	}

	public void setBustype(String bustype) {
		this.bustype = bustype;
	}

	public String getRowid() {
		return rowid;
	}

	public void setRowid(String rowid) {
		this.rowid = rowid;
	}

	public String getTablename() {
		return tablename;
	}

	public void setTablename(String tablename) {
		this.tablename = tablename;
	}

	

}
