package com.dhcc.itims.azy.adam.tools;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.dhcc.itims.azy.adam.vo.AzyPower;

@Component
public class FormatedData {
	private Data dataPrototype;
	private WrappedData wrappedDataPrototype;
	@Autowired
	public void setDataPrototype(Data dataPrototype) {
		this.dataPrototype = dataPrototype;
	}
	@Autowired
	public void setWrappedDataPrototype(@Qualifier("azyWrappedDataPrototype") WrappedData wrappedDataPrototype) {
		this.wrappedDataPrototype = wrappedDataPrototype;
	}
	

	public  List<Data> formatData(List<AzyPower> list){
		if(list!=null&& list.size()>0){
			List<Data> listData = new ArrayList<Data>();
			for (AzyPower azyPower : list) {
				
				listData.add(azyPowerToData(azyPower));
			}
			return listData ;
		}else{
			return new ArrayList<Data>();
		}
	}
	public Data azyPowerToData(AzyPower azyPower){
		Data data = new Data();
		data.setTitleCol(dataPrototype.getTitleCol());
		data.setTitleRow(dataPrototype.getTitleRow());
		data.setColors(dataPrototype.getColors());
		if(dataPrototype.getTitle()==null||"".equals(dataPrototype.getTitle())){
			data.setTitle(azyPower.getMosn());
		}
		String[][] attArr = azyPower.attributeArray();
		String[][] datadata = new String[(int) Math.sqrt(attArr.length)+1][(attArr.length/(int) Math.sqrt(attArr.length))+1];
		for (int i = 0; i < datadata.length; i++) {
			for (int j = 0; j < datadata[i].length; j++) {
				datadata[i][j] =  "";
			}
		}
		int rowCount = 0;
		int colCount = 0;
		for (int i = 0; i < attArr.length; i++) {
			if(colCount<data.getTitleCol()){
				datadata[rowCount][colCount++] = attArr[i][0]+ ":"  +attArr[i][1];
			}else{
				rowCount++;
				colCount = 0;
			}
		}
		data.setData(datadata);
		return data;
	}
	public List<WrappedData> wrapedData(List<AzyPower> list){
		if(list!=null&& list.size()>0){
			List<WrappedData> listWrappedData = new ArrayList<WrappedData>();
			for (AzyPower azyPower : list) {
				WrappedData wdata = new WrappedData();
				wdata.setMosn(azyPower.getMosn());
				wdata.setIcon(wrappedDataPrototype.getIcon());
				Data[] dataArr = new Data[1];
				dataArr[0] = azyPowerToData(azyPower);
				wdata.setTabs(dataArr);
				listWrappedData.add(wdata);
			}
			return listWrappedData;
		}else{
			return new ArrayList<WrappedData>();
		}
	}
}
