package com.idp.api.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.idp.api.demo.dto.DemoTestDto;

@RestController
@RequestMapping("/API/demoTest/")
public class DemoTestRestController {

	@RequestMapping(value="/test",method= {RequestMethod.GET,RequestMethod.POST})
	public String test(@RequestBody DemoTestDto params,HttpServletRequest request) {
		
		System.out.println(params.getUsername());
		System.out.println(params.getPassword());
		
		return "hello world";
	}
}
