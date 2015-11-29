package com.dhcc.itims.azy.adam.service;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import junit.framework.TestCase;

public class AzyQueryServiceTest extends TestCase {
	private IAzyQueryService azyQueryService;
	public AzyQueryServiceTest() {
		@SuppressWarnings("resource")
		ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		azyQueryService = ctx.getBean(AzyQueryService.class); 
	}
	public void testGetDevIns() {
		System.out.println(azyQueryService.getDevIns());
	}

}
