package com.dhcc.itims.azy.adam.task;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.dhcc.itims.azy.adam.po.DevIns;
import com.dhcc.itims.azy.adam.service.IAzyQueryService;
import com.dhcc.itims.azy.adam.service.IDataTransferService;

@Component
@Qualifier("scheduledTasks")
public class ScheduledTasks {
	static final protected Logger log = Logger.getLogger(ScheduledTasks.class.getClass());
	private IAzyQueryService azyQueryService;
	@Autowired
    public void setAzyQueryService(IAzyQueryService azyQueryService) {
		this.azyQueryService = azyQueryService;
	}
	private IDataTransferService dataTransferService;
	@Autowired
    public void setDataTransferService(IDataTransferService dataTransferService) {
		this.dataTransferService = dataTransferService;
	}

	public void updateAzy() {
    	List<DevIns> listAzyData = azyQueryService.getDevIns();
    	if(listAzyData!=null && listAzyData.size()>0){
    		boolean udpateSuccess = dataTransferService.updateAzyDevIns(listAzyData);
    		log.info("更新安之源原始数据:" + (udpateSuccess?"成功":"失败"));
    	}else{
    		boolean udpateEmptySuccess = dataTransferService.updateAzyDevInsEmpty();
    		log.info("无法获取安之源原始数据, 设置空:" + (udpateEmptySuccess?"成功":"失败"));
    	}
    	boolean transSuccess = dataTransferService.trans();
		log.info("转换安之源温湿度数据:" + (transSuccess?"成功":"失败"));
    	
    }
}
