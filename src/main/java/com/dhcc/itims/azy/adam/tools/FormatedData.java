package com.dhcc.itims.azy.adam.tools;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dhcc.itims.azy.adam.vo.AzyPower;

@Component
public class FormatedData {
	private Data dataPrototype;
	@Autowired
	public void setDataPrototype(Data dataPrototype) {
		this.dataPrototype = dataPrototype;
	}
	

	public  List<Data> formatData(List<AzyPower> list){
		if(list!=null&& list.size()>0){
			List<Data> listData = new ArrayList<Data>();
			for (AzyPower azyPower : list) {
				Data data = new Data();
				data.setTitleCol(dataPrototype.getTitleCol());
				data.setTitleRow(dataPrototype.getTitleRow());
				data.setColors(dataPrototype.getColors());
				data.setTitle(azyPower.getMosn());
				String[][] attArr = azyPower.attributeArray();
				String[][] datadata = new String[data.getTitleRow()][data.getTitleCol()];
				for (int i = 0; i < datadata.length; i++) {
					for (int j = 0; j < datadata[i].length; j++) {
						datadata[i][j] =  "";
					}
				}
				int rowCount = 0;
				int colCount = 0;
				for (int i = 0; i < attArr.length; i++) {
					if(colCount<data.getTitleCol()){
						datadata[rowCount][colCount++] = attArr[i][0]+ ":"  +attArr[i][1] +
								(attArr[i][2]!=null?attArr[i][2]:"");
					}else{
						rowCount++;
						colCount = 0;
						datadata[rowCount][colCount++] = attArr[i][0]+ ":"  +attArr[i][1] +
								(attArr[i][2]!=null?attArr[i][2]:"");
					}
				}
				data.setData(datadata);
				listData.add(data);
			}
			return listData ;
		}else{
			return new ArrayList<Data>();
		}
	}
}
