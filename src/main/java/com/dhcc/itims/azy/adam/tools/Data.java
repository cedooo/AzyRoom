package com.dhcc.itims.azy.adam.tools;

import java.util.Arrays;

public class Data {
	private String title = null;
	private int titleRow = -1;
	private int titleCol = -1;
	private String[] colors = null;
	private String[][] data = null;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getTitleRow() {
		return titleRow;
	}
	public void setTitleRow(int titleRow) {
		this.titleRow = titleRow;
	}
	public int getTitleCol() {
		return titleCol;
	}
	public void setTitleCol(int titleCol) {
		this.titleCol = titleCol;
	}
	public String[] getColors() {
		return colors;
	}
	public void setColors(String[] colors) {
		this.colors = colors;
	}
	public String[][] getData() {
		return data;
	}
	public void setData(String[][] data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "Data [title=" + title + ", titleRow=" + titleRow
				+ ", titleCol=" + titleCol + ", colors="
				+ Arrays.toString(colors) + ", data=" + Arrays.toString(data)
				+ "]";
	}
	
	
}
