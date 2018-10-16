package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.CostBean;
import com.feiyue.util.PageData;

public interface CostService {
	   //增加
		public boolean addCost(CostBean cost);
	    //修改
	    public boolean updateCost(CostBean cost);
	    //删除
	    public boolean deleteCost(int costId);
	    //遍历
	    public List<CostBean> getCost();
	    //分页
	    public PageData<CostBean> queryCostByPage(int page, int pageSize, String keywords);
	    //查询
	    public List<CostBean> selectCost(String keyword);
	  //批量删除
	     public boolean getBatchDeleteCost(String sql);
}
