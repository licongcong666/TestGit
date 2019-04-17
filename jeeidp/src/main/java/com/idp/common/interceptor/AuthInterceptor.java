package com.idp.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.idp.common.constant.SessionAttr;
import com.idp.biz.system.entity.SysUser;

/**
 * 权限拦截器 
 * 
 * @author King
 *
 */
public class AuthInterceptor implements HandlerInterceptor {

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object object, Exception exception) throws Exception {

	}

	public void postHandle(	HttpServletRequest request, HttpServletResponse response, Object object, ModelAndView modelAndView) throws Exception {

	}
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object object) throws Exception {

		HttpSession session = request.getSession(true);

		SysUser user = (SysUser) session.getAttribute(SessionAttr.USER_LOGIN.getValue());
		
		if(user != null){
			
			return true;
		} else {
			
			// session失效时，ajax请求拦截
			String requestType = request.getHeader("X-Requested-With");
			if(StringUtils.isNotEmpty(requestType) && requestType.equalsIgnoreCase("XMLHttpRequest")){
				
				response.setHeader("sessionstatus", "timeout");  
				response.sendError(518, "session timeout.");  
				
		    }else { 
		    	
		    	// 跳转到登录页面
				request.getRequestDispatcher("/login/login").forward(request, response);
		    }
			
			return false;
		}
	}

}
