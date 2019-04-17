package com.idp.common.interceptor;

import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.SqlCommandType;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.session.defaults.DefaultSqlSession.StrictMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.idp.biz.system.entity.SysUser;
import com.idp.common.base.BaseEntity;
import com.idp.common.constant.SessionAttr;
import com.idp.common.util.ContextHolderUtil;

@Component
@Intercepts({ @Signature(type = Executor.class, method = "update", args = { MappedStatement.class, Object.class }) })
public class UpdateInterceptor implements Interceptor {

	private static Logger logger = LoggerFactory.getLogger(UpdateInterceptor.class);
	
	@SuppressWarnings("unchecked")
	@Override
	public Object intercept(Invocation invocation) throws Throwable {
		
		Object[] args = invocation.getArgs();
		
		SysUser currentUser = null;
		try {
			currentUser = (SysUser)ContextHolderUtil.getSession().getAttribute(SessionAttr.USER_LOGIN.getValue());
		}
		catch (RuntimeException e) {
			logger.warn("current session no currentUser info.");
		}
		if (currentUser == null) {
			return invocation.proceed();
		}
		
		MappedStatement ms = (MappedStatement) args[0];
		SqlCommandType sqlCommandType = ms.getSqlCommandType();
		
		try {
			
			for (int i = 0; i < args.length; i++) {
				if(args[i] instanceof BaseEntity){
					BaseEntity baseEntity = (BaseEntity) args[i];
					
					if (sqlCommandType == SqlCommandType.INSERT){
						baseEntity.setCreateUser(currentUser.getId());
						baseEntity.setCreateDate(new Date());
					}
					
					if (sqlCommandType == SqlCommandType.UPDATE){
						baseEntity.setUpdateUser(currentUser.getId());
						baseEntity.setUpdateDate(new Date());
					}
				} else if(args[i] instanceof StrictMap){
					try {
						StrictMap<BaseEntity> baseEntitys = (StrictMap<BaseEntity>) args[i];
						
						for (Iterator<String> iterator = baseEntitys.keySet().iterator(); iterator.hasNext();) {
							String key = (String) iterator.next();
							List<BaseEntity> baseEntityss = (List<BaseEntity>) baseEntitys.get(key);
							for (Iterator<BaseEntity> iterator2 = baseEntityss.iterator(); iterator2.hasNext();) {
								BaseEntity baseEntity2 = (BaseEntity) iterator2.next();
								if (sqlCommandType == SqlCommandType.INSERT){
									baseEntity2.setCreateUser(currentUser.getId());
								}
								
								if (sqlCommandType == SqlCommandType.UPDATE){
									baseEntity2.setUpdateUser(currentUser.getId());
								}
							}
						}
					}
					catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		}
		catch (Exception e) {
			
			e.printStackTrace();
		}
		
		logger.debug("----------- ENTITY PARAMETER INTERCEPTOR END ----------- ");
		
		return invocation.proceed();
	}

	@Override
	public Object plugin(Object target) {
		
		return Plugin.wrap(target, this);
	}

	@Override
	public void setProperties(Properties properties) {
		
		String property = properties.getProperty("property");
		logger.debug("property:" + property);
	}

}
