package com.wangzhixuan.model.collection;

import java.util.Date;

public class ProcessInfo {

	private String id;
	private String ip;
	private String mac;
	private String creationClassName;
	private String cSName;
	private String executablePath;
	private String name;
	private String oSName;
	private String processId;
	private String sessionId;
	private String threadCount;
	private String virtualSize;
	private String windowsVersion;
	private String workingSetSize;
	private String cpuRatioForWindows;
	private Date updateTime;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getMac() {
		return mac;
	}

	public void setMac(String mac) {
		this.mac = mac;
	}

	public String getCreationClassName() {
		return creationClassName;
	}

	public void setCreationClassName(String creationClassName) {
		this.creationClassName = creationClassName;
	}

	public String getcSName() {
		return cSName;
	}

	public void setcSName(String cSName) {
		this.cSName = cSName;
	}

	public String getExecutablePath() {
		return executablePath;
	}

	public void setExecutablePath(String executablePath) {
		this.executablePath = executablePath;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getoSName() {
		return oSName;
	}

	public void setoSName(String oSName) {
		this.oSName = oSName;
	}

	public String getProcessId() {
		return processId;
	}

	public void setProcessId(String processId) {
		this.processId = processId;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}

	public String getThreadCount() {
		return threadCount;
	}

	public void setThreadCount(String threadCount) {
		this.threadCount = threadCount;
	}

	public String getVirtualSize() {
		return virtualSize;
	}

	public void setVirtualSize(String virtualSize) {
		this.virtualSize = virtualSize;
	}

	public String getWindowsVersion() {
		return windowsVersion;
	}

	public void setWindowsVersion(String windowsVersion) {
		this.windowsVersion = windowsVersion;
	}

	public String getWorkingSetSize() {
		return workingSetSize;
	}

	public void setWorkingSetSize(String workingSetSize) {
		this.workingSetSize = workingSetSize;
	}

	public String getCpuRatioForWindows() {
		return cpuRatioForWindows;
	}

	public void setCpuRatioForWindows(String cpuRatioForWindows) {
		this.cpuRatioForWindows = cpuRatioForWindows;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	
	
}
