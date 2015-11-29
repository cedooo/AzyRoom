package com.dhcc.itims.azy.adam.vo;

public class AzyPower {
	private String mosn;
	private String collectTime;
	private String va;
	private String vb;
	private String vc;
	private String vab;
	private String vbc;
	private String vca;
	private String hz;
	private String st;
	public String getMosn() {
		return mosn;
	}
	public void setMosn(String mosn) {
		this.mosn = mosn;
	}
	public String getCollectTime() {
		return collectTime;
	}
	public void setCollectTime(String collectTime) {
		this.collectTime = collectTime;
	}
	public String getVa() {
		return va;
	}
	public void setVa(String va) {
		this.va = va;
	}
	public String getVb() {
		return vb;
	}
	public void setVb(String vb) {
		this.vb = vb;
	}
	public String getVc() {
		return vc;
	}
	public void setVc(String vc) {
		this.vc = vc;
	}
	public String getVab() {
		return vab;
	}
	public void setVab(String vab) {
		this.vab = vab;
	}
	public String getVbc() {
		return vbc;
	}
	public void setVbc(String vbc) {
		this.vbc = vbc;
	}
	public String getVca() {
		return vca;
	}
	public void setVca(String vca) {
		this.vca = vca;
	}
	public String getHz() {
		return hz;
	}
	public void setHz(String hz) {
		this.hz = hz;
	}
	public String getSt() {
		return st;
	}
	public void setSt(String st) {
		this.st = st;
	}
	@Override
	public String toString() {
		return "AzyPower [mosn=" + mosn + ", collectTime=" + collectTime
				+ ", va=" + va + ", vb=" + vb + ", vc=" + vc + ", vab=" + vab
				+ ", vbc=" + vbc + ", vca=" + vca + ", hz=" + hz + ", st=" + st
				+ "]";
	}
	public String[][] attributeArray(){
		String[][] rta = new String[10][2];
		rta[0][0] = "MOSN";
		rta[0][1] = mosn;
		rta[1][0] = "采集时间";
		rta[1][1] =collectTime;
		rta[2][0] = "A相电压";
		rta[2][1] = va;
		rta[3][0] = "B相电压";
		rta[3][1] = vb;
		rta[4][0] = "C相电压";
		rta[4][1] = vc;
		rta[5][0] = "AB线电压";
		rta[5][1] = vab;
		rta[6][0] = "BC线电压";
		rta[6][1] = vbc;
		rta[7][0] = "CA线电压";
		rta[7][1] = vca;
		rta[8][0] = "频率";
		rta[8][1] = hz;
		rta[9][0] = "通讯状态";
		rta[9][1] = st;
		return rta;
	}
}
