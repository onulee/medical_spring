package com.java.controller;

import java.net.HttpURLConnection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.java.dto.KakaoDto;
import com.java.dto.OAuthTokenDto;

import jakarta.servlet.http.HttpSession;

@Controller
public class FController {

	@Autowired HttpSession session;
	
	
	@GetMapping({"/","/main"})
	public String index() {
		return "login";
	}
	
	@GetMapping("login")
	public String login() {
		return "login";
	}
	
	
	@RequestMapping("/kakao/oauth")
//	@ResponseBody
	public String oauth(String code) {
		
		// [ 카카오 로그인 ]
		//#### 1차 : code ####
		
		
		System.out.println("oauth code : "+code);
		String grant_type = "authorization_code";
		String client_id = "5cd9d50739c717c1e72916e86302bc30";
		String redirect_uri = "http://localhost:8181/kakao/oauth";
		
		// 공공데이터에서 url연결해서 데이터 받아오기
//		 HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//	     conn.setRequestMethod("GET");
//	     conn.setRequestProperty("Content-type", "application/json");
		
		// post방식으로 전송 - daum 토큰키를 요청함.
		RestTemplate rt = new RestTemplate();
		// header오브젝트 생성
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		//위 데이터를 1개로 묶음처리
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		params.add("grant_type", grant_type);
		params.add("client_id", client_id);
		params.add("redirect_uri", redirect_uri);
		params.add("code", code);
		
		//header오브젝트, MultiValueMap를 1개 오브젝트로 묶음
		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest = 
				new HttpEntity<>(params,headers);
		
		//Http 요청
		String oauthUrl = "https://kauth.kakao.com/oauth/token";
		
		ResponseEntity<String> response = rt.exchange(oauthUrl, 
				HttpMethod.POST,kakaoTokenRequest,String.class);
		
		System.out.println("response : "+response);
		
		//#### 2차 : token키 완료 ####
		
		
		// 카카오에서 response로 받은 json데이터를
		// 자바dto파일에 저장
		ObjectMapper objectMapper = new ObjectMapper();
		OAuthTokenDto oAuthTokenDto = null;
		
		try {
			oAuthTokenDto = objectMapper.readValue(response.getBody(),OAuthTokenDto.class);
		} catch (Exception e) {e.printStackTrace();	} 
		
		System.out.println("oAuthTokenDto Access_token : "+ oAuthTokenDto.getAccess_token());
		
		
		// #### 3차 사용자 정보 요청 ####
		// post방식으로 전송 - daum 토큰키를 요청함.
		RestTemplate rt2 = new RestTemplate();
		// header오브젝트 생성
		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization", "Bearer "+oAuthTokenDto.getAccess_token());
		headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		// 파라미터 값은 필요없음
		//header오브젝트, MultiValueMap를 1개 오브젝트로 묶음
		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest2 = 
				new HttpEntity<>(headers2);
		
		//사용자 정보 Http 요청
		String oauthUrl2 = "https://kapi.kakao.com/v2/user/me";
		
		ResponseEntity<String> response2 = rt.exchange(oauthUrl2, 
				HttpMethod.POST,kakaoTokenRequest2,String.class);
		
		System.out.println("개인정보 : "+response2);
		System.out.println("개인정보2 : "+response2.getBody());
		
		// #### 끝 #####
		// #### json파서 시작
		ObjectMapper objectMapper2 = new ObjectMapper();
		KakaoDto kakaoDto = null;
		
		try {
			kakaoDto = objectMapper2.readValue(response2.getBody(),KakaoDto.class);
		} catch (Exception e) {e.printStackTrace();	} 
		
		System.out.println("kakaoDto 개인정보 닉네임 : "+ kakaoDto.getProperties().getNickname());
		System.out.println("kakaoDto id : "+ kakaoDto.getId());
		System.out.println("kakaoDto connected_at : "+ kakaoDto.getConnected_at());
		
		//로그인 섹션 생성
		session.setAttribute("kakaoSessionId", kakaoDto.getId());
		session.setAttribute("kakaoSessionNicName", kakaoDto.getProperties().getNickname());
		
		//@responseBody 삭제후 
		return "redirect:/";
//		return "카카오 개인정보 응답 : "+response2;
		
		
	}
	
	
	
	
	
}
