package com.cos.blogcrud.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
	/*
	.addPathPatterns("/**");
	.excludePathPatterns("/user/*")
	*/
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new SessionInterceptor())
				.addPathPatterns("/writeForm")
				.excludePathPatterns("/board/list")
				.excludePathPatterns("/board/detail/**");
		
//		registry.addInterceptor(new AdminInterceptor())
//		.addPathPatterns("/admin/**");	
				
	}
}