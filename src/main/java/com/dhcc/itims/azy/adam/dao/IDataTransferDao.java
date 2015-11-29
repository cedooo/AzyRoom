package com.dhcc.itims.azy.adam.dao;

import java.util.List;

import com.dhcc.itims.azy.adam.po.DevIns;


public interface IDataTransferDao {
	/**
	 * 转存数据 - 温湿度数据
	 * @return
	 */
	public boolean trans();

	/**
	 * 更新安之源机房设备信息
	 * @param listDevIns 
	 * @return 成功返回true，否则返回false
	 */
	public boolean updateAzyDevIns(List<DevIns> listDevIns);
	/**
	 * 将jfdevins中hvalue全设置为Null
	 * @return
	 */
	public boolean emptyHvalue();
}
