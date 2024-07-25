package com.java.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect //공통기능
@Component //컨테이너 등록
public class AspectLogInfo {

	//콘솔창에 로그 출력
	Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Pointcut("execution(* com.java..*(..))") //aop실행할 위치 지정
	private void doExecute() {}
	
	@Around("doExecute()") //해당실행문 전,후로 호출함.
	public Object doLogging(ProceedingJoinPoint joinPoint) throws Throwable{
		log.info("로그를 출력합니다.");
		long startTime = 0;
		long endTime = 0; 
		String methodName = joinPoint.getSignature().toShortString();
		try {
			log.info(methodName+" 메소드 시작");
			// 해당 메소드 실행
			Object obj = joinPoint.proceed();
			startTime = System.currentTimeMillis(); //시작시간
			// Thread.sleep(3000); //시간지연 메소드
			return obj;
		}finally {
			endTime = System.currentTimeMillis(); //시작시간
			log.info(methodName + " 메소드 종료");
			log.info(methodName + " 경과시간 : "+(endTime - startTime));
		}
	}
}
