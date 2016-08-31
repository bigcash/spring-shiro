package com.wangzhixuan.model.bus;

import java.util.Date;

/**
 * 十三所二三〇厂考勤机台帐
 * @author kate
 *
 */

public class AttendanceInfo {
	
	private String id;
	//资产归属
	private String propertyown;
	//设备编号
	private String devno;
	//部门
	private String department;
	//设备名称
	private String devname;
	//责任人
	private String resperson;
	//管理人
	private String manager;
	//办公自动化设备编号
	private String oaautono;
	//密级
	private String seclevel;
	//品牌/型号
	private String brandno;
	//SN码（序列号、内码）
	private String sncode;
	//所在位置
	private String location;
	//配备日期
	private Date usedate;
	//使用情况
	private String usestatus;
	//备注
	private String remark;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPropertyown() {
		return propertyown;
	}
	public void setPropertyown(String propertyown) {
		this.propertyown = propertyown;
	}
	public String getDevno() {
		return devno;
	}
	public void setDevno(String devno) {
		this.devno = devno;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDevname() {
		return devname;
	}
	public void setDevname(String devname) {
		this.devname = devname;
	}
	public String getResperson() {
		return resperson;
	}
	public void setResperson(String resperson) {
		this.resperson = resperson;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getOaautono() {
		return oaautono;
	}
	public void setOaautono(String oaautono) {
		this.oaautono = oaautono;
	}
	public String getSeclevel() {
		return seclevel;
	}
	public void setSeclevel(String seclevel) {
		this.seclevel = seclevel;
	}
	public String getBrandno() {
		return brandno;
	}
	public void setBrandno(String brandno) {
		this.brandno = brandno;
	}
	public String getSncode() {
		return sncode;
	}
	public void setSncode(String sncode) {
		this.sncode = sncode;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Date getUsedate() {
		return usedate;
	}
	public void setUsedate(Date usedate) {
		this.usedate = usedate;
	}
	public String getUsestatus() {
		return usestatus;
	}
	public void setUsestatus(String usestatus) {
		this.usestatus = usestatus;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}

}
