package common;


import org.aspectj.lang.JoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogAop {

//	Aop Log저장을 위한 클래스
	
	public void before(JoinPoint join) {
		//join에는 타겟객체의 정보와 joinpoint에 해당하는 메서드정보를 들고온다
		//따라서 무슨 객체의 무슨메서드가 실행될건지 알 수 있다.
//		System.out.println("LogAop : "+join);
//		System.out.println("LogAop : "+join.getSignature());
		Logger logger = LoggerFactory.getLogger(join.getTarget()+"");// "" : 문자열로 바꾸기 위함
	
		logger.info("------------LogAop Start -----------");

		//로그 남길 것
		Object[] args = join.getArgs();
		
		if(args != null) {
			logger.info("method : " + join.getSignature().getName());
			for(int i = 0; i<args.length; i++) {
				
				logger.info(i+"번째 : " + args[i]);
				
			}
		}
		
		
	}
	public void after(JoinPoint join) {
		
		Logger logger = LoggerFactory.getLogger(join.getTarget()+"");
		
		logger.info("------------ Aop After(End)----------------");
		
	}

	
	public void afterThrowing(JoinPoint join) {
		
		Logger logger = LoggerFactory.getLogger(join.getTarget()+"");
		
		logger.info("------------------ err log --------------");
		logger.info("ERROR : " + join.getArgs());
		logger.info("ERROR : " + join.toString());
		
	}
}
