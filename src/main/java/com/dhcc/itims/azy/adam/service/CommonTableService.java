package com.dhcc.itims.azy.adam.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dhcc.itims.azy.adam.dao.ICommonTableDao;
import com.dhcc.itims.azy.adam.vo.AzyPower;

@Component
public class CommonTableService implements ICommonTableService {
	private ICommonTableDao commonTableDao ;
	@Autowired
	public CommonTableService(ICommonTableDao commonTableDao){
		this.commonTableDao = commonTableDao;
	}
	@Override
	public List<AzyPower> listPower() {
		return commonTableDao.listAzyPower();
	}
	@Override
	public List<AzyPower> listAzyPower(String[] mosn) {
		List<AzyPower> listAzyPower = new ArrayList<AzyPower>();
		for (int i = 0; i < mosn.length; i++) {
			AzyPower azyPower = commonTableDao.azyPowerByMosn(mosn[i]);
			if(azyPower!=null){
				listAzyPower.add(azyPower);
			}
		}
		return listAzyPower;
	}
}
