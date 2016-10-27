package com.wangzhixuan.model.bus;

/***
 * 十三所二三〇厂安全产品台帐
 * @author kate
 *
 */
public class SecurityProductInfo extends BaseInfo{

	private String id;
	private String depname;
	private String resperson;
	private String securitylevel;
	private String newname;
	private String switchbrand;
	private String factoryno;
	private String switchip;
	private String switchmac;
	private String location;
	private String port;
	private String patchpanel;
	private String purpose;
	//该字段需要做修改
	private String infostatus;
	private String region;
	private String remark;
	private String devno;
	
	public String getDevno() {
		return devno;
	}
	public void setDevno(String devno) {
		this.devno = devno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDepname() {
		return depname;
	}
	public void setDepname(String depname) {
		this.depname = depname;
	}
	public String getResperson() {
		return resperson;
	}
	public void setResperson(String resperson) {
		this.resperson = resperson;
	}
	public String getSecuritylevel() {
		return securitylevel;
	}
	public void setSecuritylevel(String securitylevel) {
		this.securitylevel = securitylevel;
	}
	public String getNewname() {
		return newname;
	}
	public void setNewname(String newname) {
		this.newname = newname;
	}
	public String getSwitchbrand() {
		return switchbrand;
	}
	public void setSwitchbrand(String switchbrand) {
		this.switchbrand = switchbrand;
	}
	public String getFactoryno() {
		return factoryno;
	}
	public void setFactoryno(String factoryno) {
		this.factoryno = factoryno;
	}
	public String getSwitchip() {
		return switchip;
	}
	public void setSwitchip(String switchip) {
		this.switchip = switchip;
	}
	public String getSwitchmac() {
		return switchmac;
	}
	public void setSwitchmac(String switchmac) {
		this.switchmac = switchmac;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getPort() {
		return port;
	}
	public void setPort(String port) {
		this.port = port;
	}
	public String getPatchpanel() {
		return patchpanel;
	}
	public void setPatchpanel(String patchpanel) {
		this.patchpanel = patchpanel;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	
	public String getInfostatus() {
		return infostatus;
	}
	public void setInfostatus(String infostatus) {
		this.infostatus = infostatus;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}
