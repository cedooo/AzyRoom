package com.dhcc.itims.azy.adam.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dhcc.itims.azy.adam.po.DevIns;
@Repository
public class DataTransferDao implements IDataTransferDao {
	static final protected Logger log = Logger.getLogger(DataTransferDao.class.getClass());
	private DataSource dataSource;
	@Autowired
	public DataTransferDao(@Qualifier("dataSourceDmsn998")DataSource dataSource){
		this.dataSource = dataSource;
	}
	@Override
	public boolean trans() {
		Connection connection = null;
		try{
			connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			String sql = " INSERT INTO tptemhumperf(MOSN,fCollectTime,fTemperature,fHumidity,DMSN,fPartID) " + 
			" SELECT mosn, DATE_FORMAT(collectTime, '%Y-%m-%d %H:%i:%s'), temperature, huminity, '998',mosn " + 
			" FROM v_azy_temp_hum ";
			int updatedCount = statement.executeUpdate(sql);
			statement.close();
			return updatedCount>0?true:false;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			if(connection!=null){
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return false;
	}
	@Override
	public boolean updateAzyDevIns(List<DevIns> listDevIns) {
		Connection connection = null;
		try{
			connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			for (DevIns devIns : listDevIns) {
				String sql = " INSERT INTO jfdevins ( " + 
				" insid, devname,  devid, insname, insunit, hvalue,collectTime ) " + 
				" VALUES( '" + 
					devIns.getInsid() + "', '" + devIns.getDevname() + "', '" + devIns.getDevid() + "', '" + 
				 devIns.getInsname() + "' , '" + devIns.getInsunit() + "', '" + devIns.getHvalue() + "', NOW() " +
				" ) " +  
				" ON DUPLICATE KEY UPDATE hvalue = '" + devIns.getHvalue() + "' , collectTime = NOW() ";
				statement.addBatch(sql);
				
			}
			int[] countBatch = statement.executeBatch();
			boolean reInfo = true;
			for (int i = 0; i < countBatch.length; i++) {
				if(countBatch[i]!=2){
					reInfo = false;
				}
			}
			log.debug("执行批量插入操作结果:" + Arrays.toString(countBatch));
			statement.close();
			return reInfo;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			if(connection!=null){
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return false;
	}
	@Override
	public boolean emptyHvalue() {
		Connection connection = null;
		try{
			connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			int updatedCount = 0;
			String sql = " UPDATE jfdevins SET hvalue=NULL ";
			updatedCount = statement.executeUpdate(sql );
			log.debug("折纸为Null,操作结果:" + (updatedCount>0?"成功":"失败"));
			statement.close();
			return updatedCount>0?true:false;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			if(connection!=null){
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return false;
	}

}
