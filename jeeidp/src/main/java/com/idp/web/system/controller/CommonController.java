package com.idp.web.system.controller;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.idp.common.util.UploadUtil;

/**
 * 公共controller
 * 
 * @author King
 *
 */
@Controller
@RequestMapping("/common/")
public class CommonController {

	private static Logger logger = LoggerFactory.getLogger(CommonController.class);
	
	/**
	 * 显示不在项目目录下的图片
	 * @param filePath
	 * @param request
	 * @param response
	 * @throws Exception 
	 */
	@RequestMapping(value="showImage")
	public void showImage(String filePath,HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		BufferedInputStream bis = null;
		ByteArrayOutputStream out = null;
		
		filePath = UploadUtil.getServerUploadBasePath(UploadUtil.PATH_IMAGES) + filePath;
		
		try {
				
			File file = new File(filePath);
			FileInputStream iputStream = new FileInputStream(file);
			bis = new BufferedInputStream(iputStream, 1024);  
			out = new ByteArrayOutputStream();
			byte[] bytes = new byte[1024];
			int len;
				
			while ((len = bis.read(bytes)) > 0) {
					
				out.write(bytes, 0, len);
			}
				
			response.setCharacterEncoding("UTF-8");

			if (request.getHeader("User-agent").contains("MSIE")) {

				response.setHeader("Content-Disposition",
					String.format("inline;filename=%s", URLEncoder.encode("title", "UTF-8")));
			}
			else {

				response.setHeader("Content-Disposition",
					String.format("inline;filename=\"%s\"", new String("title".getBytes("UTF-8"), "ISO8859-1")));
			}
     
			out.writeTo(response.getOutputStream());
			
		} catch (Exception e) {
			
			logger.error(e.getMessage(),e);
			throw e;
		} finally {
				
			try {
				bis.close();
				out.flush();
			    out.close();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		    
		}
	}
}
