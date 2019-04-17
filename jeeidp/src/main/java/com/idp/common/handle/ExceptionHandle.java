package com.idp.common.handle;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.idp.biz.system.entity.SysLog;
import com.idp.biz.system.entity.SysUser;
import com.idp.biz.system.service.SysLogService;
import com.idp.common.constant.SessionAttr;
import com.idp.common.constant.SysMessage;
import com.idp.common.util.ContextHolderUtil;
import com.idp.common.util.ExceptionUtil;

@ControllerAdvice
public class ExceptionHandle {

	private static Logger logger = LoggerFactory.getLogger(ExceptionHandle.class);
	
	@Autowired
	private SysLogService sysLogService;
	
	@ExceptionHandler(value=Exception.class)
	public void logException(HttpServletRequest request, HttpServletResponse response, Exception e) throws Exception {
		
		String errorMessage = ExceptionUtil.getExceptionMessage(e);
    	
    	HttpSession session = ContextHolderUtil.getSession();
        Object loginUser = session.getAttribute(SessionAttr.USER_LOGIN.getValue());
        String operateUser = null;
        if(loginUser != null) {
        	
        	operateUser = ((SysUser)loginUser).getId();
        } else {
        	
        	logger.info("用户未登录");
        }
    	
    	sysLogService.add(new SysLog(SysLog.MENU_ERROR, request.getRequestURL().toString(), errorMessage,
    			operateUser, request.getRemoteAddr(), new Date()));
    	
    	logger.error(e.getMessage(), e);
    	
    	String requestType = request.getHeader("X-Requested-With");
		if(StringUtils.isNotEmpty(requestType) && requestType.equalsIgnoreCase("XMLHttpRequest")){
			
			response.setHeader("system error", "system error");  
			response.sendError(500, SysMessage.COMMON_OPERATE_FAIL); 
			
	    }else { 
	    	
	    	// 跳转到错误页面
			request.getRequestDispatcher("/pages/500").forward(request, response);
	    }
	}
}
