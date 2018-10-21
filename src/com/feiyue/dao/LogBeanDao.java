package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.LogBean;
import com.feiyue.util.PageData;

/**
 * 
 * @author Administrator
 *
 */

public interface LogBeanDao {
	//查询所有
	 public List<LogBean> queryLog();
	 //分页
     public PageData<LogBean> queryLogByPage(int page,int pageSize);
     //增加
     public boolean addLog(LogBean lb);
}
