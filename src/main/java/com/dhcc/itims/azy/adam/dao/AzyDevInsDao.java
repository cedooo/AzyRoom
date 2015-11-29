package com.dhcc.itims.azy.adam.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dhcc.itims.azy.adam.po.DevIns;
@Repository
public class AzyDevInsDao implements IAzyDevInsDao {
	private DataSource dataSource;

	@Autowired
	public AzyDevInsDao(@Qualifier("dataSourceAzy") DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public List<DevIns> getDevIns() {
		Connection connection = null;
		List<DevIns> listDevIns = new ArrayList<DevIns>();
		try{
			connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			String sql = " select top 1000 devname,insid,di.devid, insname,insunit,hvalue "
					+ " from jfdevins di left join jfdevice de on di.devid=de.devid ";
			ResultSet resultSet = statement.executeQuery(sql);
			while(resultSet.next()){
				DevIns devIns = new DevIns();
				String devname= resultSet.getString("devname");
				devIns.setDevname(devname);
				String insid= resultSet.getString("insid");
				devIns.setInsid(insid);
				String devid= resultSet.getString("devid");
				devIns.setDevid(devid);
				String insname= resultSet.getString("insname");
				devIns.setInsname(insname);
				String insunit= resultSet.getString("insunit");
				devIns.setInsunit(insunit);
				String hvalue= resultSet.getString("hvalue");
				devIns.setHvalue(hvalue);
				listDevIns.add(devIns);
			}
			resultSet.close();
			statement.close();
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
		return listDevIns;
	}

}
