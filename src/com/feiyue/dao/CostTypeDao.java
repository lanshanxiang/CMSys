package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.CostTypeBean;
import com.feiyue.util.PageData;

public interface CostTypeDao {
	//增加
	public boolean add(CostTypeBean costType);
    //修改
    public boolean update(CostTypeBean costType);
    //删除
    public boolean delete(int ctId);
    //遍历
    public List<CostTypeBean> getCostType();
    //分页
    public PageData<CostTypeBean> queryCostTypeByPage(int page, int pageSize, String keywords);
    //查询
    public List<CostTypeBean> selectCostType(String keyword);
}
