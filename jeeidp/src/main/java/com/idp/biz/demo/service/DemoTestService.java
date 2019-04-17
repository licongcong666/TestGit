package com.idp.biz.demo.service;

import java.util.List;

import com.idp.common.model.PageModel;
import com.idp.biz.demo.entity.DemoTest;

/**
 * 測試功能service接口
 * 
 * @author King 2018-07-11
 *
 */
public interface DemoTestService{
	
	/**
	 * 分页查询
	 * King 2018-07-11
	 * @param demoTest
	 * @param page
	 * @return
	 */
	public PageModel<DemoTest> findByPage(DemoTest demoTest,PageModel<DemoTest> page);
	
	/**
	 * 条件查询
	 * King 2018-07-11
	 * @param demoTest
	 * @return
	 */
	public List<DemoTest> findBySearch(DemoTest demoTest);
	
	/**
	 * 通过PK查询
	 * King 2018-07-11
	 * @param demoId
	 * @return
	 */
	public DemoTest getById(String demoId);
	
	/**
	 * 新增
	 * King 2018-07-11
	 * @param demoTest
	 */
	public void add(DemoTest demoTest);

	/**
	 * 修改
	 * King 2018-07-11
	 * @param demoTest
	 */
	public void update(DemoTest demoTest);
	
	/**
	 * 删除
	 * King 2018-07-11
	 * @param demoIds
	 */
	public void delete(String ids);
}
