package com.java.service;

public interface EmailService {

	// text 이메일 전송
	void email_send(String name, String email);

	// html 이메일 발송
	void email_send2(String name, String email);

}
