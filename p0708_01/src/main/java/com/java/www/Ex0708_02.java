package com.java.www;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex0708_02 {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext ctx = new
				ClassPathXmlApplicationContext("com/java/www/beans.xml");

		Pencil pencil = ctx.getBean("pencil",Pencil.class); 
		pencil.use();
		
		ctx.close();
//		Pencil pencil = new Pencil4B();

	}

}
