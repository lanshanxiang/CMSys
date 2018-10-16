package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.LogBean;
import com.feiyue.util.PageData;



public interface LogBeanDao {
	 public List<LogBean> queryLog();
     public PageData<LogBean> queryLogByPage(int page,int pageSize);
     public boolean addLog(LogBean lb);
}
