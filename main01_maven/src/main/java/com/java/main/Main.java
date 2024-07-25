package com.java.main;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {

	public static void main(String[] args) {
		System.out.println("프로그램 실행");
		ClassPathXmlApplicationContext ctx = 
				new ClassPathXmlApplicationContext("com/java/config/bean.xml");
		
		HelloClass helloClass = ctx.getBean("helloClass",HelloClass.class);
		helloClass.hello();
	}
}
