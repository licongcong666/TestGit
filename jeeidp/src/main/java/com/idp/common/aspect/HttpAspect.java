package com.idp.common.aspect;

import java.util.Arrays;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.idp.biz.system.entity.SysLog;
import com.idp.biz.system.entity.SysUser;
import com.idp.biz.system.service.SysLogService;
import com.idp.common.constant.SessionAttr;
import com.idp.common.util.ContextHolderUtil;

@Aspect
@Component
public class HttpAspect {

	private static Logger logger = LoggerFactory.getLogger(HttpAspect.class);
	
	@Autowired
	private SysLogService sysLogService;
	
	@Pointcut("(execution(public * com.idp.web..*(..)) || execution(public * com.idp.api..*(..))) && @annotation(org.springframework.web.bind.annotation.RequestMapping)")
    public void webLog() {
		
    }
	
	@Before("webLog()")
    public void doBefore(JoinPoint joinPoint) {

        // 接收到请求，记录请求内容
        logger.info("WebLogAspect.doBefore()");

        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();

        // 记录下请求内容
        StringBuilder logContent = new StringBuilder();
        logContent.append("URL ： " + request.getRequestURL().toString());
        logContent.append("<br/>HTTP_METHOD ： " + request.getMethod());
        logContent.append("<br/>IP : " + request.getRemoteAddr());
        logContent.append("<br/>CLASS_METHOD ： " + joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName());
        logContent.append("<br/>ARGS ： " + Arrays.toString(joinPoint.getArgs()));
        
//        logContent.append("<br/>参数：[");
//        //获取所有参数：
//        Enumeration<String> enu = request.getParameterNames();
//        while (enu.hasMoreElements()) {
//
//            String paraName = enu.nextElement();
//            logContent.append(paraName + ":" + request.getParameter(paraName) + ";");
//        }
//        logContent.append("]");
        
        HttpSession session = ContextHolderUtil.getSession();
        Object loginUser = session.getAttribute(SessionAttr.USER_LOGIN.getValue());
        String operateUser = null;
        if(loginUser != null) {
        	
        	operateUser = ((SysUser)loginUser).getId();
        } else {
        	
        	logger.info("用户未登录");
        	operateUser = request.getParameter("username");
        }
        
        SysLog sysLog = new SysLog(SysLog.MENU_INFO, request.getRequestURL().toString(), logContent.toString(),
        		operateUser, request.getRemoteAddr(), new Date());
        
        //sysLogService.add(sysLog);
        logger.info(logContent.toString());
    }

    @AfterReturning("webLog()")
    public void doAfterReturning(JoinPoint joinPoint) {
        // 处理完请求，返回内容
        logger.info("WebLogAspect.doAfterReturning()");
    }
}
