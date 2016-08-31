package com.wangzhixuan.model.bus;

import java.util.Date;

/**
 * 十三所二三〇厂办公自动化设备台帐
 * @author kate
 *
 */
public class OaAutoInfo {
	private String id;
	//设备编号
	private String devno;
	//部门名称
	private String departname;
	//责任人
	private String resperson;
	//密级
	private String seclevel;
	//设备名称
	private String devname;
	//品牌
	private String brand;
	//型号
	private String model;
	//容量
	private String capacity;
	//序列号
	private String serialno;
	//启用时间
	private Date usedate;
	//用途
	private String purpose;
	//使用地点
	private String useaddress;
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
	public String getDevno() {
		return devno;
	}
	public void setDevno(String devno) {
		this.devno = devno;
	}
	public String getDepartname() {
		return departname;
	}
	public void setDepartname(String departname) {
		this.departname = departname;
	}
	public String getResperson() {
		return resperson;
	}
	public void setResperson(String resperson) {
		this.resperson = resperson;
	}
	public String getSeclevel() {
		return seclevel;
	}
	public void setSeclevel(String seclevel) {
		this.seclevel = seclevel;
	}
	public String getDevname() {
		return devname;
	}
	public void setDevname(String devname) {
		this.devname = devname;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getSerialno() {
		return serialno;
	}
	public void setSerialno(String serialno) {
		this.serialno = serialno;
	}
	public Date getUsedate() {
		return usedate;
	}
	public void setUsedate(Date usedate) {
		this.usedate = usedate;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public String getUseaddress() {
		return useaddress;
	}
	public void setUseaddress(String useaddress) {
		this.useaddress = useaddress;
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
