package com.idp.biz.system.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.idp.common.model.PageModel;
import com.idp.common.util.ResourceUtil;
import com.idp.biz.system.dao.SysDictionaryDao;
import com.idp.biz.system.entity.SysDictionary;
import com.idp.biz.system.service.SysDictionaryService;

/**
 * 数据字典service实现类
 * 
 * @author King
 *
 */
@Service("sysDictionaryService")
public class SysDictionaryServiceImpl implements SysDictionaryService {

	@Autowired
	private SysDictionaryDao sysDictionaryDao;
	
	@Override
	public PageModel<SysDictionary> findByPage(SysDictionary sysDictionary, PageModel<SysDictionary> page) {

		PageHelper.offsetPage(page.getStart(), page.getLength());
		page.initData(sysDictionaryDao.findByPage(sysDictionary));
		
		return page;
	}
	
	@Override
	public List<SysDictionary> findBySearch(SysDictionary sysDictionary) {

		return sysDictionaryDao.find(sysDictionary);
	}
	
	@Override
	public SysDictionary getById(String id) {

		SysDictionary sysDictionary = sysDictionaryDao.getById(id);
		if(sysDictionary != null) {
		
			sysDictionary.setChildren(sysDictionaryDao.getByGroupId(sysDictionary.getId()));
		}
		
		return sysDictionary;
	}

	@Override
	public void add(SysDictionary sysDictionary) {

		sysDictionary.setId(ResourceUtil.getUUID());
		sysDictionaryDao.add(sysDictionary);
		
		if(sysDictionary.getChildren() != null && sysDictionary.getChildren().size() > 0){
			for(SysDictionary child : sysDictionary.getChildren()){
				
				child.setId(ResourceUtil.getUUID());
				child.setGroupId(sysDictionary.getId());
				sysDictionaryDao.add(child);
			}
		}
	}
	
	@Override
	@CacheEvict(value="dictCache",key="#sysDictionary.code")
	public void update(SysDictionary sysDictionary) {

		sysDictionaryDao.update(sysDictionary);
		sysDictionaryDao.deleteByGroupId(sysDictionary.getId());
		
		if(sysDictionary.getChildren() != null && sysDictionary.getChildren().size() > 0){
			for(SysDictionary child : sysDictionary.getChildren()){
				
				child.setId(ResourceUtil.getUUID());
				child.setGroupId(sysDictionary.getId());
				sysDictionaryDao.add(child);
			}
		}
	}

	@Override
	@CacheEvict(value="dictCache",key="#sysDictionary.code")
	public void delete(SysDictionary sysDictionary) {

		sysDictionaryDao.delete(sysDictionary.getId());
		sysDictionaryDao.deleteByGroupId(sysDictionary.getId());
	}
 	
	@Override
	@Cacheable(value="dictCache",key="#code")
	public SysDictionary getByCode(String code){
		
		SysDictionary sysDictionary = sysDictionaryDao.getByGroupCode(code);
		if(sysDictionary != null) {
			
			sysDictionary.setChildren(sysDictionaryDao.getByGroupId(sysDictionary.getId()));
		}
		
		return sysDictionary;
	}
}