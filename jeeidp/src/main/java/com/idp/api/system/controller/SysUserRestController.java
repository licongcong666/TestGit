package com.idp.api.system.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/API/user/")
public class SysUserRestController {

	@RequestMapping("/test")
	@CrossOrigin
	public String test() {
		
		return "hello world";
	}
}
