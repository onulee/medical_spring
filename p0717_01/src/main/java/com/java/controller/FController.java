package com.java.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FController {

	@GetMapping("/index")
	public String index() {
		return "index";
	}
	
	@GetMapping("/daumMap")
	public String daumMap() {
		return "daumMap";
	}
	
	@GetMapping("/list")
	public String list() {
		return "list";
	}
	@GetMapping("/list2")
	public String list2() {
		return "list2";
	}
	@GetMapping("/chart")
	public String chart() {
		return "chart";
	}
	
	@PostMapping("/public_data") //공공데이터 - 관광사진갤러리 목록 조회
	@ResponseBody
	public String public_data(@RequestParam(defaultValue = "1") String page) throws Exception {
		//api 호출
	    String service_key = "918RE13GA7OY7ZEmUzApgbOeAcQoZ%2FaHsXWcqPAKQ9YNNPj83KOstRMRIUrCFIAcm9qj2R6b7NFZjp%2FYsYzJLg%3D%3D";
	    String web_url = "https://apis.data.go.kr/B551011/PhotoGalleryService1/galleryList1";
	    
	    StringBuilder urlBuilder = new StringBuilder(web_url); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "="+service_key); /*Service Key*/
	        //주석처리해야 함.
	        //urlBuilder.append("&" + URLEncoder.encode("ServiceKey","UTF-8") + "=" + URLEncoder.encode("-", "UTF-8")); /*이부분 주석처리 : 공공데이터포털에서 받은 인증키*/
	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
	        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode(page, "UTF-8")); /*페이지번호*/
	        urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*OS 구분 : IOS (아이폰), AND (안드로이드), WIN (윈도우폰), ETC(기타)*/
	        urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명(어플명)*/
	        urlBuilder.append("&" + URLEncoder.encode("arrange","UTF-8") + "=" + URLEncoder.encode("A", "UTF-8")); /*정렬구분 : A=촬영일, B=제목, C=수정일*/
	        urlBuilder.append("&" + URLEncoder.encode("_type","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*요청자료형식(XML/JSON)*/
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
	        BufferedReader rd;
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	        StringBuilder sb = new StringBuilder();
	        String line;
	        while ((line = rd.readLine()) != null) {
	            sb.append(line);
	        }
	        rd.close();
	        conn.disconnect();
	        System.out.println(sb.toString());
	        return sb.toString();
	}//public_data
	
	@PostMapping("/public_data2") //공공데이터 - 관광사진갤러리 키워드 검색 목록 조회
	@ResponseBody
	public String public_data2(String keyword) throws Exception {
		//api 호출
		System.out.println("controller keyword : "+keyword);
		String service_key = "918RE13GA7OY7ZEmUzApgbOeAcQoZ%2FaHsXWcqPAKQ9YNNPj83KOstRMRIUrCFIAcm9qj2R6b7NFZjp%2FYsYzJLg%3D%3D";
		String web_url = "https://apis.data.go.kr/B551011/PhotoGalleryService1/gallerySearchList1";
		
		StringBuilder urlBuilder = new StringBuilder(web_url); /*URL*/
		urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "="+service_key); /*Service Key*/
		//주석처리해야 함.
		//urlBuilder.append("&" + URLEncoder.encode("ServiceKey","UTF-8") + "=" + URLEncoder.encode("-", "UTF-8")); /*이부분 주석처리 : 공공데이터포털에서 받은 인증키*/
		urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
		urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
		urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*OS 구분 : IOS (아이폰), AND (안드로이드), WIN (윈도우폰), ETC(기타)*/
		urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명(어플명)*/
		urlBuilder.append("&" + URLEncoder.encode("arrange","UTF-8") + "=" + URLEncoder.encode("A", "UTF-8")); /*정렬구분 : A=촬영일, B=제목, C=수정일*/
		urlBuilder.append("&" + URLEncoder.encode("keyword","UTF-8") + "=" + URLEncoder.encode(keyword, "UTF-8")); /*정렬구분 : A=촬영일, B=제목, C=수정일*/
		urlBuilder.append("&" + URLEncoder.encode("_type","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*요청자료형식(XML/JSON)*/
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}
		rd.close();
		conn.disconnect();
		System.out.println(sb.toString());
		return sb.toString();
	}//public_data2
	
}//class
