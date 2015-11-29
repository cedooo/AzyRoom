package com.dhcc.itims.azy.adam.service;

import java.util.List;

import com.dhcc.itims.azy.adam.po.DevIns;


public interface IAzyQueryService {
	/**
	 * 得到机房测量表中的数据
	 * @return 机房测量表中数据
	 */
	public List<DevIns> getDevIns();

}
