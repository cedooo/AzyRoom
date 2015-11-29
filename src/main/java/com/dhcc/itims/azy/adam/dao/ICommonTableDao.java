package com.dhcc.itims.azy.adam.dao;

import java.util.List;

import com.dhcc.itims.azy.adam.vo.AzyPower;

public interface ICommonTableDao {
	/**
	 *所有电量仪
	 * @return 非Null电量仪List
	 */
	public List<AzyPower> listAzyPower();

	/**
	 * 
	 * @param mosn 电量仪mosn
	 * @return 电量仪
	 */
	public AzyPower azyPowerByMosn(String mosn);

}
