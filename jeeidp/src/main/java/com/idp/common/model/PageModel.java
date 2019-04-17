package com.idp.common.model;

import java.util.List;

import com.github.pagehelper.Page;

/**
 * 分页Model
 * 
 * @author King
 *
 * @param <T>
 */
public class PageModel<T> {

	private Integer draw;
	private Integer start;
	private Integer length;
	private Integer recordsTotal;
	private Integer recordsFiltered;
	private List<T> data;
	
	public Integer getDraw() {
		return draw;
	}
	public void setDraw(Integer draw) {
		this.draw = draw;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getLength() {
		return length;
	}
	public void setLength(Integer length) {
		this.length = length;
	}
	public Integer getRecordsTotal() {
		return recordsTotal;
	}
	public void setRecordsTotal(Integer recordsTotal) {
		this.recordsTotal = recordsTotal;
	}
	public Integer getRecordsFiltered() {
		return recordsFiltered;
	}
	public void setRecordsFiltered(Integer recordsFiltered) {
		this.recordsFiltered = recordsFiltered;
	}
	public List<T> getData() {
		return data;
	}
	public void setData(List<T> data) {
		this.data = data;
	}
	
	public void initData(Page<T> page) {
		
		this.data = page.getResult();
		this.recordsTotal = new Long(page.getTotal()).intValue();
		this.recordsFiltered = this.recordsTotal;
	}
	
	@Override
	public String toString() {
		
		return "分页参数：[开始行=" + start + ", 每页行数=" + length + ", 总行数=" + recordsTotal + ", 数据=" + data + "]";
	}
	
}
