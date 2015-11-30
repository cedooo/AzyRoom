package com.dhcc.itims.azy.adam.service;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.dhcc.itims.azy.adam.vo.AzyPower;

import junit.framework.TestCase;

public class CommonTableServiceTest extends TestCase {
	private ICommonTableService service;

	public CommonTableServiceTest() {
		@SuppressWarnings("resource")
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				"classpath:applicationContext.xml");
		service = ctx.getBean(CommonTableService.class);
	}

	public void testListPower() {
		List<AzyPower> listAzyPower = service.listPower();
		System.out.println(listAzyPower);
		assertEquals(listAzyPower!=null && listAzyPower.size()>0, true);
	}

}
