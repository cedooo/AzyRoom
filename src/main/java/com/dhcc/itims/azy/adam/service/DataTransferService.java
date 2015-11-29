package com.dhcc.itims.azy.adam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dhcc.itims.azy.adam.dao.IDataTransferDao;
import com.dhcc.itims.azy.adam.po.DevIns;
@Component
public class DataTransferService implements IDataTransferService {
	private IDataTransferDao dataTransferDao;
	@Autowired
	public void setDataTransferDao(IDataTransferDao dataTransferDao) {
		this.dataTransferDao = dataTransferDao;
	}

	@Override
	public boolean trans() {
		return dataTransferDao.trans();
	}

	@Override
	public boolean updateAzyDevIns(List<DevIns> listDevIns) {
		return dataTransferDao.updateAzyDevIns(listDevIns);
	}

	@Override
	public boolean updateAzyDevInsEmpty() {
		return dataTransferDao.emptyHvalue();
	}

}
