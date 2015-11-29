package com.dhcc.itims.azy.adam.dao;

import java.util.List;

import com.dhcc.itims.azy.adam.po.DevIns;

public interface IAzyDevInsDao {
	/**
	 * 安之源机房原始数据
	 * @return
	 */
	public List<DevIns> getDevIns();
}
