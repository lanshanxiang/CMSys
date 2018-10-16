package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.LogBean;
import com.feiyue.util.PageData;

public interface LogBeanService {
	public List<LogBean> getQueryLog();
    public PageData<LogBean> getQueryLogByPage(int page,int pageSize);
    public boolean getAddLog(LogBean lb);
}
