package com.idp.biz.demo.service.impl;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.idp.common.model.PageModel;
import com.idp.common.util.ResourceEnum;
import com.idp.common.util.ResourceUtil;
import com.idp.biz.demo.service.DemoTestService;
import com.idp.biz.demo.dao.DemoTestDao;
import com.idp.biz.demo.entity.DemoTest;

/**
 * 測試功能service实现类
 * 
 * @author King 2018-07-11
 *
 */
@Service("demoTestService")
public class DemoTestServiceImpl implements DemoTestService {

	@Autowired
	private DemoTestDao demoTestDao;
	
	@Override
	public PageModel<DemoTest> findByPage(DemoTest demoTest, PageModel<DemoTest> page) {

		PageHelper.offsetPage(page.getStart(), page.getLength());
		page.initData(demoTestDao.findByPage(demoTest));
		
		return page;
	}
	
	@Override
	public List<DemoTest> findBySearch(DemoTest demoTest) {

		return demoTestDao.find(demoTest);
	}
	
	@Override
	public DemoTest getById(String demoId) {

		return demoTestDao.getById(demoId);
	}

	@Override
	public void add(DemoTest demoTest) {

		demoTest.setDemoId(ResourceUtil.getUUID());
		demoTestDao.add(demoTest);
	}
	
	@Override
	public void update(DemoTest demoTest) {

		demoTestDao.update(demoTest);
	}

	@Override
	public void delete(String ids) {

		List<String> idList = Arrays.asList(ids.split(","));
		
		demoTestDao.batchDelete(idList);
	}
 	
}