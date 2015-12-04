package com.dhcc.itims.azy.adam.tools;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.dhcc.itims.azy.adam.service.CommonTableService;
import com.dhcc.itims.azy.adam.service.ICommonTableService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import junit.framework.TestCase;

public class FormatedDataTest extends TestCase {
	private ICommonTableService service;
	private FormatedData formatedData;
	public FormatedDataTest(){
        @SuppressWarnings("resource")
		ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        formatedData = ctx.getBean(FormatedData.class); 
		service = ctx.getBean(CommonTableService.class); 
	}
	public void testFormatData() {
		System.out.println(formatedData.formatData(service.listPower()));
	}
	public void testFormatWrappedData() {
		List<WrappedData> listData = formatedData.wrapedData(service.listPower());
		ObjectMapper mapper = new ObjectMapper();
		try {
			System.out.println("JSON:\n" + mapper.writeValueAsString(listData));
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

	}

}
