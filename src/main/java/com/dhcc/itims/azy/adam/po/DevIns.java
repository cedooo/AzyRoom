package com.dhcc.itims.azy.adam.po;

/**
 * 机房设备测量信息
 * 
 * @author cedo
 *
 */
public class DevIns {
	private String devname;
	private String insid;
	private String devid;
	private String insname;
	private String insunit;
	private String hvalue;
	
	private String collectTime;    //采集时间
	public String getDevname() {
		return devname;
	}
	public void setDevname(String devname) {
		this.devname = devname;
	}
	public String getInsid() {
		return insid;
	}
	public void setInsid(String insid) {
		this.insid = insid;
	}
	public String getDevid() {
		return devid;
	}
	public void setDevid(String devid) {
		this.devid = devid;
	}
	public String getInsname() {
		return insname;
	}
	public void setInsname(String insname) {
		this.insname = insname;
	}
	public String getInsunit() {
		return insunit;
	}
	public void setInsunit(String insunit) {
		this.insunit = insunit;
	}
	public String getHvalue() {
		return hvalue;
	}
	public void setHvalue(String hvalue) {
		this.hvalue = hvalue;
	}
	public String getCollectTime() {
		return collectTime;
	}
	public void setCollectTime(String collectTime) {
		this.collectTime = collectTime;
	}
	@Override
	public String toString() {
		return "DevIns [devname=" + devname + ", insid=" + insid + ", devid="
				+ devid + ", insname=" + insname + ", insunit=" + insunit
				+ ", hvalue=" + hvalue + ", collectTime=" + collectTime + "]";
	}
	
	
}
