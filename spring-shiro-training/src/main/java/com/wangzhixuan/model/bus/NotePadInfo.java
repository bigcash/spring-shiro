package com.wangzhixuan.model.bus;

/**
 * 十三所二三〇厂便携式计算机台帐
 * 
 * @author kate
 *
 */
public class NotePadInfo {
	private String id;
	// 编号
	private String serialno;
	// 信息设备编号
	// 设备型号
	private String devno;
	// 安装地点
	private String installaddres;
	// 责任人
	private String resperson;
	// 密级
	private String devseclevel;
	// 出厂编号
	private String productno;
	// 品牌型号
	private String brandno;
	// VLAN
	private String vlan;
	// IP地址
	private String ipaddress;
	// MAC地址
	private String mac;
	// 配线架
	private String patchpanel;

	// 交换机端口
	private String switchport;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSerialno() {
		return serialno;
	}

	public void setSerialno(String serialno) {
		this.serialno = serialno;
	}

	

	public String getDevno() {
		return devno;
	}

	public void setDevno(String devno) {
		this.devno = devno;
	}

	public String getInstalladdres() {
		return installaddres;
	}

	public void setInstalladdres(String installaddres) {
		this.installaddres = installaddres;
	}

	public String getResperson() {
		return resperson;
	}

	public void setResperson(String resperson) {
		this.resperson = resperson;
	}

	public String getDevseclevel() {
		return devseclevel;
	}

	public void setDevseclevel(String devseclevel) {
		this.devseclevel = devseclevel;
	}

	public String getProductno() {
		return productno;
	}

	public void setProductno(String productno) {
		this.productno = productno;
	}

	public String getBrandno() {
		return brandno;
	}

	public void setBrandno(String brandno) {
		this.brandno = brandno;
	}

	public String getVlan() {
		return vlan;
	}

	public void setVlan(String vlan) {
		this.vlan = vlan;
	}

	public String getIpaddress() {
		return ipaddress;
	}

	public void setIpaddress(String ipaddress) {
		this.ipaddress = ipaddress;
	}

	public String getMac() {
		return mac;
	}

	public void setMac(String mac) {
		this.mac = mac;
	}

	public String getPatchpanel() {
		return patchpanel;
	}

	public void setPatchpanel(String patchpanel) {
		this.patchpanel = patchpanel;
	}

	public String getSwitchport() {
		return switchport;
	}

	public void setSwitchport(String switchport) {
		this.switchport = switchport;
	}

}
