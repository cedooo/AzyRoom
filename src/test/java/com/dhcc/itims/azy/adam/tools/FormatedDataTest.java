package com.dhcc.itims.azy.adam.tools;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.dhcc.itims.azy.adam.service.CommonTableService;
import com.dhcc.itims.azy.adam.service.ICommonTableService;

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
		System.out.println(formatedData.wrapedData(service.listPower()));

	}

}
