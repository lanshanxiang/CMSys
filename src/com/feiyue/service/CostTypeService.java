package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.CostTypeBean;
import com.feiyue.util.PageData;

public interface CostTypeService {
	   //增加
		public boolean addCostType(CostTypeBean costType);
	    //修改
	    public boolean updateCostType(CostTypeBean costType);
	    //删除
	    public boolean deleteCostType(int ctId);
	    //遍历
	    public List<CostTypeBean> getCostType();
	    //分页
	    public PageData<CostTypeBean> queryCostTypeByPage(int page, int pageSize, String keywords);
	    //查询
	    public List<CostTypeBean> selectCostType(String keyword);
}
