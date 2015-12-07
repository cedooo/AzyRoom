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

import com.dhcc.itims.azy.adam.vo.AzyPower;
@Repository
public class CommonTableDao implements ICommonTableDao {

	private DataSource dataSource;
	@Autowired
	public CommonTableDao(@Qualifier("dataSourceDmsn998")DataSource dataSource){
		this.dataSource = dataSource;
	}
	@Override
	public List<AzyPower> listAzyPower() {
		Connection connection = null;
		List<AzyPower> listAzyPower = new ArrayList<AzyPower>();
		try{
			connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			String sql = "SELECT mosn,DATE_FORMAT(collectTime, '%Y-%m-%d %H:%i') as collectTime,va,vb,vc,vab,vbc,vca,hz,st FROM v_azy_power";
			ResultSet resultSet = statement.executeQuery(sql);
			while(resultSet.next()){
				AzyPower azyPower = new AzyPower();
				String collectTime = resultSet.getString("collectTime");
				azyPower.setCollectTime(collectTime);
				String hz= resultSet.getString("hz");
				azyPower.setHz(hz);
				String mosn= resultSet.getString("mosn");
				azyPower.setMosn(mosn);
				String st= resultSet.getString("st");
				azyPower.setSt(st);
				String va= resultSet.getString("va");
				azyPower.setVa(va);
				String vab= resultSet.getString("vab");
				azyPower.setVab(vab);
				String vb= resultSet.getString("vb");
				azyPower.setVb(vb);
				String vbc= resultSet.getString("vbc");
				azyPower.setVbc(vbc);
				String vc= resultSet.getString("vc");
				azyPower.setVc(vc);
				String vca= resultSet.getString("vca");
				azyPower.setVca(vca);
				listAzyPower.add(azyPower);
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
		return listAzyPower;
	}
	@Override
	public AzyPower azyPowerByMosn(String mosn) {
		Connection connection = null;
		AzyPower azyPower = null;
		try{
			connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			String sql = "SELECT mosn,DATE_FORMAT(collectTime, '%Y-%m-%d %H:%i') as collectTime,va,vb,vc,vab,vbc,vca,hz,st FROM v_azy_power where mosn= '" + mosn + "' ";
			ResultSet resultSet = statement.executeQuery(sql);
			while(resultSet.next()){
				azyPower = new AzyPower();
				String collectTime = resultSet.getString("collectTime");
				azyPower.setCollectTime(collectTime);
				String hz= resultSet.getString("hz");
				azyPower.setHz(hz);
				azyPower.setMosn(mosn);
				String st= resultSet.getString("st");
				azyPower.setSt(st);
				String va= resultSet.getString("va");
				azyPower.setVa(va);
				String vab= resultSet.getString("vab");
				azyPower.setVab(vab);
				String vb= resultSet.getString("vb");
				azyPower.setVb(vb);
				String vbc= resultSet.getString("vbc");
				azyPower.setVbc(vbc);
				String vc= resultSet.getString("vc");
				azyPower.setVc(vc);
				String vca= resultSet.getString("vca");
				azyPower.setVca(vca);
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
		return azyPower;
	}
}
