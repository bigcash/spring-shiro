package com.wangzhixuan.model.bus;

import java.util.Date;
/***
 * 十三所二三〇厂直连涉密打印设备台帐
 * @author kate
 *
 */
public class SecPrintInfo {
	private String id;
	//地区
	private String region;
	//设备编号
	private String devno;
	//所在房间号
	private String roomno;
	//资产号
	private String propertyno;
	//责任部门
	private String resdepart;
	//责任人
	private String resperson;
	//品牌
	private String brand;
	//型号
	private String model;
	//规格
	private String specifications;
	//序列号
	private String serialno;
	//使用日期
	private Date usedate;
	//设备密级
	private String devseclevel;
	//用途
	private String purpose;
	//使用方式
	private String usemethod;
	//状态
	private String status;
	//备注
	private String remark;
	private Date updatetime;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getDevno() {
		return devno;
	}
	public void setDevno(String devno) {
		this.devno = devno;
	}
	public String getRoomno() {
		return roomno;
	}
	public void setRoomno(String roomno) {
		this.roomno = roomno;
	}
	public String getPropertyno() {
		return propertyno;
	}
	public void setPropertyno(String propertyno) {
		this.propertyno = propertyno;
	}
	public String getResdepart() {
		return resdepart;
	}
	public void setResdepart(String resdepart) {
		this.resdepart = resdepart;
	}
	public String getResperson() {
		return resperson;
	}
	public void setResperson(String resperson) {
		this.resperson = resperson;
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
	public String getSpecifications() {
		return specifications;
	}
	public void setSpecifications(String specifications) {
		this.specifications = specifications;
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
	public String getDevseclevel() {
		return devseclevel;
	}
	public void setDevseclevel(String devseclevel) {
		this.devseclevel = devseclevel;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public String getUsemethod() {
		return usemethod;
	}
	public void setUsemethod(String usemethod) {
		this.usemethod = usemethod;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	
	
	

}
