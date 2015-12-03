package com.dhcc.itims.azy.adam.tools;

import java.util.Arrays;

public class WrappedData {
	private String mosn;
	private String icon;
	private Data[] tabs;
	public String getMosn() {
		return mosn;
	}
	public void setMosn(String mosn) {
		this.mosn = mosn;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public Data[] getTabs() {
		return tabs;
	}
	public void setTabs(Data[] tabs) {
		this.tabs = tabs;
	}
	@Override
	public String toString() {
		return "WrappedData [mosn=" + mosn + ", icon=" + icon + ", tabs="
				+ Arrays.toString(tabs) + "]";
	}
	
}
