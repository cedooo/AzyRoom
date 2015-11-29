package com.dhcc.itims.azy.adam.service;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import junit.framework.TestCase;

public class CommonTableServiceTest extends TestCase {
	private ICommonTableService service;
	public CommonTableServiceTest(){
        @SuppressWarnings("resource")
		ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		service = ctx.getBean(CommonTableService.class); 
	}
	public void testListPower() {
		System.out.println(service.listPower());
	}

}
