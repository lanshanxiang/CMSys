package com.feiyue.util;

import java.util.List;

/**
 * @author Administrator 分页数据类 , 包含了返回的数据信息
 */
public class PageData<T> {
	// 查询的数据 ,例如: 就是当前页中所有的用户
	private List<T> data;
	// 总记录数
	private Integer total; 
	// 每页几行
	private Integer pageSize;
	// 页数
	private Integer page;
	// 总页数
	private Integer totalPage; 
	public PageData() {
		super();
	}

	/**
	 * 
	 * @param data
	 * @param total
	 * @param pageSize
	 * @param page
	 */
	public PageData(List<T> data, Integer total, Integer pageSize, Integer page) {
		super();
		this.data = data;
		this.total = total;
		this.pageSize = pageSize;
		this.page = page;

	}

	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	// 总页数 users ->6 每页显示3条记录-> 总页数为2页
	public int getTotalPage() {
		// 6/4 =>1
		int num = total / pageSize; 
		if (total % pageSize != 0) {
			num++;
		} 
		// 2
		return num; 
	}

	@Override
	public String toString() {
		return "{total:" + total + ",data:" + data + "}";
	}
}
