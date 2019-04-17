package com.idp.common.interceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 权限拦截器配置
 * 
 * @author King
 *
 */
@Configuration
public class AuthConfig implements WebMvcConfigurer {
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		
		registry.addInterceptor(new AuthInterceptor())
				.addPathPatterns("/**")
				.excludePathPatterns("/css/**","/js/**","/images/**","/plugin/**")
				.excludePathPatterns("/API/**")
				.excludePathPatterns("/login/login","/login/checkUser");
		
		registry.addInterceptor(new APIInterceptor())
				.addPathPatterns("/API/**");
		
		WebMvcConfigurer.super.addInterceptors(registry);
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		
		registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
		
		WebMvcConfigurer.super.addResourceHandlers(registry);
	}
	
}
