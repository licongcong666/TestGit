package com.idp.biz.demo.dao;

import org.apache.ibatis.annotations.Mapper;

import com.idp.common.base.BaseDao;
import com.idp.biz.demo.entity.DemoTest;

/**
 * 測試功能dao接口
 * 
 * @author King 2018-07-11
 *
 */
@Mapper
public interface DemoTestDao extends BaseDao<DemoTest, String> {
	
}