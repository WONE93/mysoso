package com.dbal.app.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;
@Service
@Aspect
public class BeforeAdvice {
	
	@Pointcut("execution(* com.dbal..*Impl.*(..))") //servlet-context.xml을 어노테이션으로 사용가능
	public void allpointcut() {}
	
	@Before("allpointcut()")
	public void beforeLog(JoinPoint jp) {
		String method = jp.getSignature().getName();
		String arg = jp.getArgs() != null && jp.getArgs().length>0 ? 
					 jp.getArgs()[0].toString() : "";					 
		System.out.println("[사전 로그 어노테이션 실행]" +
						   "method name: " +method+
						   "args : " +arg );
	}
}
