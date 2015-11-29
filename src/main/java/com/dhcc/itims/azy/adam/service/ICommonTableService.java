package com.dhcc.itims.azy.adam.service;

import java.util.List;

import com.dhcc.itims.azy.adam.vo.AzyPower;

public interface ICommonTableService {
	/**
	 * 所有电量仪对象
	 * @return  非Null集合
	 */
	public List<AzyPower> listPower();
	/**
	 * 
	 * @param mosn mosn数组
	 * @return 
	 */
	public List<AzyPower> listAzyPower(String[] mosn);
}
