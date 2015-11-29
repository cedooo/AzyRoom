package com.dhcc.itims.azy.adam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dhcc.itims.azy.adam.dao.IAzyDevInsDao;
import com.dhcc.itims.azy.adam.po.DevIns;
@Component
public class AzyQueryService implements IAzyQueryService {
	private IAzyDevInsDao azyDevInsDao;
	@Autowired
	public void setAzyDevInsDao(IAzyDevInsDao azyDevInsDao) {
		this.azyDevInsDao = azyDevInsDao;
	}

	@Override
	public List<DevIns> getDevIns() {
		return azyDevInsDao.getDevIns();
	}

}
