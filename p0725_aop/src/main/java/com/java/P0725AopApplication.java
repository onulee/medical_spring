package com.java;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@EnableAspectJAutoProxy //aop사용선언
@SpringBootApplication
public class P0725AopApplication {

	public static void main(String[] args) {
		SpringApplication.run(P0725AopApplication.class, args);
	}

}
