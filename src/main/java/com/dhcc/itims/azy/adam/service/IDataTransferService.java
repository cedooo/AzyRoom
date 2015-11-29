package com.dhcc.itims.azy.adam.service;

import java.util.List;

import com.dhcc.itims.azy.adam.po.DevIns;


/**
 * 数据转换
 * @author cd
 *
 */
public interface IDataTransferService {

	/**
	 * 转换数据
	 * @return 成功返回true，否则返回false
	 */
	public boolean trans();

	/**
	 * 更新安之源机房设备信息
	 * @param listDevIns 
	 * @return 成功返回true，否则返回false
	 */
	public boolean updateAzyDevIns(List<DevIns> listDevIns);
	/**
	 * 将安之源机房数据指标设置为Null
	 * @return
	 */
	public boolean updateAzyDevInsEmpty();
}
