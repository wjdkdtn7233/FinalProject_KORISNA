package common.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

//DispatcherServlet에 컨트롤러를 호출하기 전에 요청을 가로채서 원하는 작업을 진행할 수 있다.
//servletContainer -> filter(서블릿 호출하기 전에 요청을 가로 챌 수 있다.)
// -> servlet -> interceptor(서블릿이 컨트롤러를 호출하기 전에 요청을 가로챌 수 있다) -> controller
//-> 이벤트 발생 시 Listener가 호출됨

//filter와 interceptor의 차이점
//filter는 servlet이 호출되기 전 실행
//interceptor는 controller로 요청이 넘어가기 전 실행
public class AuthInterceptor implements HandlerInterceptor{

	private Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);
	
	@Override
	//컨트롤러가 수행되기 전에 활성화
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		// return 타입 : boolean
		// 결과값이 true일 때 controller 정상적으로 호출
		// 결과값이 false일 경우 controller를 호출하지 않는다.
		
		
		
		return true;
	}

	@Override
	//컨트롤러가 수행되고 view를 호출하기 전에 실행
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		//HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	//view로 요청이 넘어간 후 실행
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		//HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}

	

	// 인터셉터 처리용 클래스
		
	
	
}
