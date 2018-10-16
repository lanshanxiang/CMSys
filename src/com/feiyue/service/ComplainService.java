package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.ComplainBean;
/**
 * 与数据库交互的service
 * @author Administrator
 *
 */
public interface ComplainService {
	 //查询所有
     public List<ComplainBean> getQueryComplain();
     //增加
     public boolean getAddComplain(ComplainBean c);
     //修改
     public boolean getUpdateComplain(ComplainBean c);
     //删除
     public boolean getDeleteComplain(int conplyId);
   //批量删除
     public boolean getBatchDeleteComplain(String sql);
}
