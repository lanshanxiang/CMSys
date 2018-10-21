package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.CostBean;
import com.feiyue.util.PageData;
/**
 * 
 * @author Administrator
 *
 */
public interface CostDao {
	//增加
	public boolean add(CostBean cost);
    //修改
    public boolean update(CostBean cost);
    //删除
    public boolean delete(int costId);
    //遍历
    public List<CostBean> getCost();
    //分页
    public PageData<CostBean> queryCostByPage(int page, int pageSize, String keywords);
    //查询
    public List<CostBean> selectCost(String keyword);
   //批量删除
    public boolean batchDeleteCost(String sql);
}
