package com.feiyue.dao;

import java.util.List;


import com.feiyue.entiy.ComplainBean;
/**
 * 处理数据库交互的DAO
 * @author Administrator
 *
 */
public interface ComplainDao {
	 //查询所有方法
     public List<ComplainBean> queryComplain();
     //增加操作
     public boolean addComplain(ComplainBean c);
     //修改操作
     public boolean updateComplain(ComplainBean c);
     //删除操作
     public boolean deleteComplain(int conplyId);
     //批量删除
     public boolean batchDeleteComplain(String sql);
}
