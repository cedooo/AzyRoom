package itims.web.room;

import itims.core.repeater.KpiValue;
import itims.core.rpc.impl.DataReader;
import itims.extend.DomainManager;
import itims.share.db.JdbcAbstractTemplate;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class DataTest {

	private static final Log logger = LogFactory.getLog(DataTest.class);

	// 温湿度或电源
		private static String[] testKpis = { "fTemperature", "fHumidity",
				"fUpsBaseOutputStatus", "fUpsBaseOutputStatus4Panel",
				"fUpsSmartInputLineVoltageOfPhaseA",
				"fUpsSmartInputLineVoltageOfPhaseB",
				"fUpsSmartInputLineVoltageOfPhaseC", "fUpsSmartOutputLoad",
				"fUpsSmartOutputCurrent", "fUpsSmartBatteryCapacity",
				"fUpsSmartOutputVoltage", "fUpsSmartBatteryTemperature",
				"fUpsSmartStatusRectifier", "fUpsSmartStatusInverter", "in", "out" };

	@SuppressWarnings("unchecked")
	public Map<String, String> queryAirConditionData(int mosn) {
		String sql = "SELECT mosn FROM TCMO WHERE mosn=" + mosn+ " AND fMoType = 420592";
		JdbcAbstractTemplate jat = null;
		String spMosns = null;
		int dmsn = DomainManager.getDomainByMosn(mosn);
		try {// return mosn+"_"+fPartTyp+"_"+kpi+"_"+fPartID+"_"+interval;
			jat = new JdbcAbstractTemplate(DomainManager.getDbIdByDmsn(dmsn));
			spMosns = jat.getString("mosn", sql);
		} catch (Exception e) {
			logger.error(sql, e);
		}
		Map<String, String> map = new HashMap<String, String>();

		if (spMosns != null && !spMosns.matches("\\s*")) {
			sql = "SELECT ItemName,VALUE FROM TpDbQSqlServerVo WHERE mosn="
					+ mosn
					+ " AND ("
					+ "ItemName='运行状态' OR ItemName='回风温度' OR ItemName='加湿状态' OR "
					+ "ItemName='加热状态' OR ItemName='压缩机状态' OR ItemName='回风温度阀值' OR ItemName='风扇状态' OR "
					+ "ItemName='滤网状态' OR ItemName='警告状态' OR ItemName='告警状态' OR ItemName='异常状态')"
					+ "ORDER BY fCollectTime DESC limit 11";
			logger.debug(sql);
			try {// return mosn+"_"+fPartTyp+"_"+kpi+"_"+fPartID+"_"+interval;
				List<Map<String, String>> list = jat.getListForMap(sql);
				if (list != null && list.size() > 0) {
					for (Map<String, String> m : list) {
						logger.debug(m);
						String itemname = m.get("itemname");
						String value = m.get("value");
						if (itemname != null && value != null) {
							if (itemname.equalsIgnoreCase("回风温度")) {
								if (map.get("fTemperature") == null)
									map.put("fTemperature", value);
							} else if (itemname.equalsIgnoreCase("运行状态")) {
								if (map.get("action") == null)
									map.put("action", value);
							} else if (itemname.equalsIgnoreCase("风扇状态")) {
								if (map.get("fan") == null)
									map.put("fan", value);
							} else if (itemname.equalsIgnoreCase("加湿状态")) {
								if (map.get("humidifier") == null)
									map.put("humidifier", value);
							} else if (itemname.equalsIgnoreCase("加热状态")) {
								if (map.get("heater") == null)
									map.put("heater", value);
							} else if (itemname.equalsIgnoreCase("压缩机状态")) {
								if (map.get("compressor") == null)
									map.put("compressor", value);
							} else if (itemname.equalsIgnoreCase("回风温度阀值")) {
								if (map.get("windTem") == null)
									map.put("windTem", value);
							} else if (itemname.equalsIgnoreCase("滤网状态")) {
								if (map.get("filter") == null)
									map.put("filter", value);
							} else if (itemname.equalsIgnoreCase("警告状态")) {
								if (map.get("notice") == null)
									map.put("notice", value);
							} else if (itemname.equalsIgnoreCase("告警状态")) {
								if (map.get("alarm") == null)
									map.put("alarm", value);
							} else if (itemname.equalsIgnoreCase("异常状态")) {
								if (map.get("error") == null)
									map.put("error", value);
							}
						}
					}
				}
			} catch (Exception e) {
				logger.error(sql, e);
			}
			return map;
		} else {// TODO 请检查下孙于接口是不是这么调用的
			DataReader dr = new DataReader(dmsn);
			return dr.queryAirConditionData(mosn);
		}
	}

	@SuppressWarnings("unchecked")
	public Map<String, List<KpiValue>> updateData(List<String> mosns,String kpiId, String resType) {
		
		Map<String, List<KpiValue>> result = new HashMap<String, List<KpiValue>>();

		//List<String> liweiMosns = new ArrayList<String>();

		boolean find = false;
		
		for (String tk : testKpis) { //判断kpiId是否属于teskKpis规定的内容
			if (tk.equalsIgnoreCase(kpiId)) {
				find = true;
				break;
			}
		}
		if (find) { //属于规定内容
			logger.error("------------------获取安之源机房数据------------------------");
			//List<Kpi> newData = new ArrayList<Kpi>();
			
			JdbcAbstractTemplate jat = null;
			int dmsn = 998;
			List<Map<String,String>> data = null;
			try {
				jat = new JdbcAbstractTemplate(DomainManager.getDbIdByDmsn(dmsn));
				Map<String,String> item = null;
				String name = null;
				KpiValue kv =null;
				List<KpiValue> kvs = null;
				//logger.debug("=====kpiId=====" + kpiId);	
				if(kpiId.equalsIgnoreCase("fTemperature")){ // 获取温度

					logger.error("安之源机房温度");
					for(String mosn :mosns){
						//logger.debug("mosn=" + mosn);
						data = jat.getListForMap(" select fcollecttime,ftemperature from tptemhumperf where mosn = " + mosn +" order by fcollecttime desc limit 1");
						if(data != null && data.size() > 0){
							item = data.get(0);//获取时间最大的记录
							name = this.getKpiName(kpiId);
							kv = this.makeKpiValue(item.get("ftemperature"), item.get("fcollecttime"), name);
							kvs = new ArrayList<KpiValue>();
							kvs.add(kv);
							result.put(mosn, kvs);
						}
					}
				} else if(kpiId.equalsIgnoreCase("fHumidity")){ // 获取湿度

					logger.error("安之源机房湿度");
					for(String mosn :mosns){
						//logger.debug("mosn=" + mosn);
						data = jat.getListForMap(" select fcollecttime,fHumidity from tptemhumperf where mosn = " + mosn +" order by fcollecttime desc limit 1");
						if(data != null && data.size() > 0){
							item = data.get(0);//获取时间最大的记录
							name = this.getKpiName(kpiId);
							kv = this.makeKpiValue(item.get("fhumidity"), item.get("fcollecttime"), name);
							kvs = new ArrayList<KpiValue>();
							kvs.add(kv);
							result.put(mosn, kvs);
						}
					}
				} 
				//---------------------
				//    UPS
				//---------------------
				else if(kpiId.equalsIgnoreCase("fUpsSmartBatteryCapacity")){ // 获取电池容量
					logger.debug("UPS 电池容量:fUpsSmartBatteryCapacity");
					for(String mosn :mosns){
						//logger.debug("mosn=" + mosn);
						data = jat.getListForMap(" select DATE_FORMAT(collecttime, '%Y-%m-%d %H:%i:%s') as collecttime,batcap from v_azy_ups where mosn = " + mosn +" order by collecttime desc limit 1");
						if(data != null && data.size() > 0){
							item = data.get(0);//获取时间最大的记录
							name = this.getKpiName(kpiId);
							logger.debug(item.get("batcap") + "    " + item.get("collecttime") + "    " + name);
							kv = this.makeKpiValue(item.get("batcap"), item.get("collecttime"), name);
							kvs = new ArrayList<KpiValue>();
							kvs.add(kv);
							result.put(mosn, kvs);
						}
					}
				} else if(kpiId.equalsIgnoreCase("fUpsSmartBatteryTemperature")){ // 获取电池温度
					logger.debug("UPS 电池温度:fUpsSmartBatteryTemperature");
					
					for(String mosn :mosns){
						//logger.debug("mosn=" + mosn);
						data = jat.getListForMap(" select  DATE_FORMAT(collecttime, '%Y-%m-%d %H:%i:%s') as collecttime,battemp from v_azy_ups where mosn = " + mosn +" order by collecttime desc limit 1");
						if(data != null && data.size() > 0){
							item = data.get(0);//获取时间最大的记录
							name = this.getKpiName(kpiId);
							logger.debug(item.get("battemp") + "    " + item.get("collecttime") + "    " + name);
							kv = this.makeKpiValue(item.get("battemp"), item.get("collecttime"), name);
							kvs = new ArrayList<KpiValue>();
							kvs.add(kv);
							result.put(mosn, kvs);
						}
					}
				} else if(kpiId.equalsIgnoreCase("fUpsSmartOutputLoad")){ // 获取电池负载率
					logger.debug("UPS 电池负载率:fUpsSmartOutputLoad");
					
					for(String mosn :mosns){
						//logger.debug("mosn=" + mosn);
						data = jat.getListForMap(" select  DATE_FORMAT(collecttime, '%Y-%m-%d %H:%i:%s') as collecttime,oload from v_azy_ups where mosn = " + mosn +" order by collecttime desc limit 1");
						if(data != null && data.size() > 0){
							item = data.get(0);//获取时间最大的记录
							name = this.getKpiName(kpiId);
							logger.debug(item.get("oload") + "    " + item.get("collecttime") + "    " + name);
							kv = this.makeKpiValue(item.get("oload"), item.get("collecttime"), name);
							kvs = new ArrayList<KpiValue>();
							kvs.add(kv);
							result.put(mosn, kvs);
						}
					}
				} else if(kpiId.equalsIgnoreCase("fUpsBaseOutputStatus4Panel")){ // 获取状态
					logger.debug("UPS 状态:fUpsBaseOutputStatus4Panel");
					
					for(String mosn :mosns){
						//logger.debug("mosn=" + mosn);
						data = jat.getListForMap(" select DATE_FORMAT(collecttime, '%Y-%m-%d %H:%i:%s') as  collecttime,sta from v_azy_ups where mosn = " + mosn +" order by collecttime desc limit 1");
						if(data != null && data.size() > 0){
							item = data.get(0);//获取时间最大的记录
							name = this.getKpiName(kpiId);
							logger.debug(item.get("sta") + "    " + item.get("collecttime") + "    " + name);
							kv = this.makeKpiValue(item.get("sta"), item.get("collecttime"), name);
							kvs = new ArrayList<KpiValue>();
							kvs.add(kv);
							result.put(mosn, kvs);
						}
					}
				} else if(kpiId.equalsIgnoreCase("in")){ // 获取UPS输入
					logger.debug("UPS 输入:in");
					
					for(String mosn :mosns){
						//logger.debug("mosn=" + mosn);
						String sql = " select DATE_FORMAT(collecttime, '%Y-%m-%d %H:%i:%s') as  collecttime," +
								" IF(iav IS NOT  NULL , CONCAT(iav/1, ' V'), '不支持') as iav, " + 
								" IF(ibv IS NOT  NULL , CONCAT(ibv/1, ' V') , '不支持') as ibv," +
								" IF(icv IS NOT  NULL , CONCAT(icv/1, ' V') , '不支持') as icv " +
								" from v_azy_ups where mosn = " + mosn +" order by collecttime desc limit 1";
						data = jat.getListForMap(sql);
						if(data != null && data.size() > 0){
							name = this.getKpiName(kpiId);
							item = data.get(0);//获取时间最大的记录
							
							String iav = item.get("iav");
							String ibv = item.get("ibv");
							String icv = item.get("icv");
							String inStr = "A:" + iav + ";B:" + ibv + ";C:"+ icv;

							logger.debug(inStr+ "    " + item.get("collecttime") + "    " + name);
							
							kv = this.makeKpiValue(inStr, item.get("collecttime"), name);
							kvs = new ArrayList<KpiValue>();
							kvs.add(kv);
							result.put(mosn, kvs);
						}
					}
				} else if(kpiId.equalsIgnoreCase("out")){ // 获取UPS输出

					logger.debug("UPS 输出:out");
					for(String mosn :mosns){
						//logger.debug("mosn=" + mosn);
						String sql = "  select DATE_FORMAT(collecttime, '%Y-%m-%d %H:%i:%s') as  collecttime, " + 
								 " IF(oav IS NOT  NULL , CONCAT(oav/1, ' V'), '不支持') as oav, " + 
								 " IF(obv IS NOT  NULL , CONCAT(obv/1, ' V'), '不支持') as obv,  " + 
								 " IF(ocv IS NOT  NULL , CONCAT(ocv/1, ' V'), '不支持') as ocv,  " + 
								 " IF(oac IS NOT  NULL , CONCAT(oac/1, ' A'), '不支持') as oac,  " + 
								 " IF(obc IS NOT  NULL , CONCAT(obc/1, ' A'), '不支持') as obc,  " + 
								 " IF(occ IS NOT  NULL , CONCAT(occ/1, ' A'), '不支持') as occ "
								 + " from v_azy_ups where mosn = " + mosn +" order by collecttime desc limit 1 ";
						data = jat.getListForMap(sql);
						if(data != null && data.size() > 0){
							name = this.getKpiName(kpiId);
							item = data.get(0);//获取时间最大的记录
							
							String oav = item.get("oav");
							String obv = item.get("obv");
							String ocv = item.get("ocv");
							String oac = item.get("oac");
							String obc = item.get("obc");
							String occ = item.get("occ");
							String outStr = "A:" + oav + ","  + oac + " ;"  +
										"B:" + obv + ","  + obc+ " ;" +
										"C:"+ ocv + "," + occ ;
							

							logger.debug(outStr+ "    " + item.get("collecttime") + "    " + name);
							kv = this.makeKpiValue(outStr, item.get("collecttime"), name);
							kvs = new ArrayList<KpiValue>();
							kvs.add(kv);
							result.put(mosn, kvs);
						}
					}
				}
				
				
			} catch (Exception e) {
				logger.error(e.getMessage(), e);
			}
		}
		
		return result;
	}

	private KpiValue makeKpiValue(String value,String collectTime,String name){
		KpiValue kv = new KpiValue( value,collectTime, "-92", name);
		return kv;
	}
	
	private String getKpiName(String kpi){
		
		String name = null;
		if (kpi.equalsIgnoreCase("fTemperature")) {
			name = "温度";
			
		} else if (kpi.equalsIgnoreCase("fHumidity")) {
			name = "湿度";
			
		} else if (kpi.equalsIgnoreCase(
				"fUpsSmartInputLineVoltageOfPhaseA")) {
			name = "A相输入电压";
			
		} else if (kpi.equalsIgnoreCase("fUpsSmartInputLineVoltageOfPhaseB")) {
			name = "B相输入电压";
			
		} else if (kpi.equalsIgnoreCase("fUpsSmartInputLineVoltageOfPhaseC")) {
			name = "C相输入电压";
			
		} else if (kpi.equalsIgnoreCase("fUpsSmartOutputCurrent")) {
			name = "电流";
			
		} else if (kpi.equalsIgnoreCase("fUpsSmartBatteryTemperature")) {
			name = "温度";
			
		} else if (kpi.equalsIgnoreCase("fUpsBaseOutputStatus")) {
			name = "输出状态";
			
		} else if (kpi.equalsIgnoreCase("fUpsBaseOutputStatus4Panel")) {
			name = "输出状态";
			
		} else if (kpi.equalsIgnoreCase("fUpsSmartOutputLoad")) {
			name = "输出负载";
			
		} else if (kpi.equalsIgnoreCase("fUpsSmartOutputVoltage")) {
			name = "输出电压";
			
		} else if (kpi.equalsIgnoreCase("fUpsSmartBatteryCapacity")) {
			name = "电池剩余容量";
		
		} else if (kpi.equalsIgnoreCase("fUpsSmartStatusRectifier")) {
			name = "整流器状态";
			
		} else if (kpi.equalsIgnoreCase("fUpsSmartStatusInverter")) {
			name = "逆变器状态";
		
		} else if (kpi.equalsIgnoreCase("in")) {
			name = "输入信息";
			
		} else if (kpi.equalsIgnoreCase("out")) {
			name = "输出信息";
			
		}
		return name;
		
	}
/*
	//此方法暂时无用
	@SuppressWarnings("unchecked")
	private Map<String, List<KpiValue>> getSpValues(JdbcAbstractTemplate jat,List<Kpi> kpis) throws DBException, ConnException {
		
		Map<String, List<KpiValue>> map = new HashMap<String, List<KpiValue>>();
		for (Kpi kpi : kpis) {
			String sql = null;
			String name = null;
			if (kpi.getKpi().equalsIgnoreCase("fTemperature")) {
				name = "温度";
				sql = "SELECT fCollectTime,VALUE FROM TpDbQSqlServerVo WHERE mosn="
						+ kpi.getMosn()
						+ " AND ItemName LIKE '温度%' ORDER BY fCollectTime DESC limit 1";
			} else if (kpi.getKpi().equalsIgnoreCase("fHumidity")) {
				name = "湿度";
				sql = "SELECT fCollectTime,VALUE FROM TpDbQSqlServerVo WHERE mosn="
						+ kpi.getMosn()
						+ " AND ItemName LIKE '湿度%' ORDER BY fCollectTime DESC limit 1";
			} else if (kpi.getKpi().equalsIgnoreCase(
					"fUpsSmartInputLineVoltageOfPhaseA")) {
				name = "A相输入电压";
				sql = "SELECT fCollectTime,VALUE FROM TpDbQSqlServerVo WHERE mosn="
						+ kpi.getMosn()
						+ " AND ItemName='A相输入电压' ORDER BY fCollectTime DESC limit 1";
			} else if (kpi.getKpi().equalsIgnoreCase(
					"fUpsSmartInputLineVoltageOfPhaseB")) {
				name = "B相输入电压";
				sql = "SELECT fCollectTime,VALUE FROM TpDbQSqlServerVo WHERE mosn="
						+ kpi.getMosn()
						+ " AND ItemName='B相输入电压' ORDER BY fCollectTime DESC limit 1";
			} else if (kpi.getKpi().equalsIgnoreCase(
					"fUpsSmartInputLineVoltageOfPhaseC")) {
				name = "C相输入电压";
				sql = "SELECT fCollectTime,VALUE FROM TpDbQSqlServerVo WHERE mosn="
						+ kpi.getMosn()
						+ " AND ItemName='C相输入电压' ORDER BY fCollectTime DESC limit 1";
			} else if (kpi.getKpi().equalsIgnoreCase("fUpsSmartOutputCurrent")) {
				name = "电流";
				sql = "SELECT fCollectTime,VALUE FROM TpDbQSqlServerVo WHERE mosn="
						+ kpi.getMosn()
						+ " AND ItemName='电池电流' ORDER BY fCollectTime DESC limit 1";
			} else if (kpi.getKpi().equalsIgnoreCase(
					"fUpsSmartBatteryTemperature")) {
				name = "温度";
				sql = "SELECT fCollectTime,VALUE FROM TpDbQSqlServerVo WHERE mosn="
						+ kpi.getMosn()
						+ " AND (ItemName='电池温度' OR ItemName='环境温度') ORDER BY fCollectTime DESC limit 1";
			} else if (kpi.getKpi().equalsIgnoreCase("fUpsBaseOutputStatus")) {
				name = "输出状态";
				sql = "SELECT fCollectTime,VALUE FROM TpDbQSqlServerVo WHERE mosn="
						+ kpi.getMosn()
						+ " AND (ItemName='upsBaseOutputStatus') ORDER BY fCollectTime DESC limit 1";
			} else if (kpi.getKpi().equalsIgnoreCase(
					"fUpsBaseOutputStatus4Panel")) {
				name = "输出状态";
				sql = "SELECT fCollectTime,VALUE FROM TpDbQSqlServerVo WHERE mosn="
						+ kpi.getMosn()
						+ " AND (ItemName='fUpsBaseOutputStatus4Panel') ORDER BY fCollectTime DESC limit 1";
			} else if (kpi.getKpi().equalsIgnoreCase("fUpsSmartOutputLoad")) {
				name = "输出负载";
				sql = "SELECT fCollectTime,VALUE FROM TpDbQSqlServerVo WHERE mosn="
						+ kpi.getMosn()
						+ " AND (ItemName='fUpsSmartOutputLoad') ORDER BY fCollectTime DESC limit 1";
			} else if (kpi.getKpi().equalsIgnoreCase("fUpsSmartOutputVoltage")) {
				name = "输出电压";
				sql = "SELECT fCollectTime,VALUE FROM TpDbQSqlServerVo WHERE mosn="
						+ kpi.getMosn()
						+ " AND (ItemName='fUpsSmartOutputVoltage') ORDER BY fCollectTime DESC limit 1";
			} else if (kpi.getKpi()
					.equalsIgnoreCase("fUpsSmartBatteryCapacity")) {
				name = "电池剩余容量";
				sql = "SELECT fCollectTime,VALUE FROM TpDbQSqlServerVo WHERE mosn="
						+ kpi.getMosn()
						+ " AND (ItemName='fUpsSmartBatteryCapacity') ORDER BY fCollectTime DESC limit 1";
			} else if (kpi.getKpi()
					.equalsIgnoreCase("fUpsSmartStatusRectifier")) {
				name = "整流器状态";
				sql = "SELECT fCollectTime,VALUE FROM TpDbQSqlServerVo WHERE mosn="
						+ kpi.getMosn()
						+ " AND (ItemName='fUpsSmartStatusRectifier') ORDER BY fCollectTime DESC limit 1";
			} else if (kpi.getKpi().equalsIgnoreCase("fUpsSmartStatusInverter")) {
				name = "逆变器状态";
				sql = "SELECT fCollectTime,VALUE FROM TpDbQSqlServerVo WHERE mosn="
						+ kpi.getMosn()
						+ " AND (ItemName='fUpsSmartStatusInverter') ORDER BY fCollectTime DESC limit 1";
			} else {
				logger.error("不支持的指标:" + kpi);
				continue;
			}

			List<Map<String, String>> mapx = jat.getListForMap(sql);
			logger.info(sql + "==" + mapx);
			if (mapx != null && mapx.size() > 0) {
				Map<String, String> m = mapx.get(0);
				KpiValue kv = new KpiValue(m.get("value"),
						m.get("fcollecttime"), "-92", name);
				List<KpiValue> l = new ArrayList<KpiValue>();
				l.add(kv);
				map.put(kpi.getMosn(), l);
			} else {
			}
			// ItemName:#A相输入电压:eq|ItemName:#B相输入电压:eq|ItemName:#C相输入电压:eq
		}
		return map;
	}
*/
}
