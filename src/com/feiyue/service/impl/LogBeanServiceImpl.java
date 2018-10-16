package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.LogBeanDao;
import com.feiyue.dao.impl.LogBeanDaoImpl;
import com.feiyue.entiy.LogBean;
import com.feiyue.service.LogBeanService;
import com.feiyue.util.PageData;

public class LogBeanServiceImpl implements LogBeanService {
	LogBeanDao lbd=new LogBeanDaoImpl();

	@Override
	public List<LogBean> getQueryLog() {
		// TODO Auto-generated method stub
		return lbd.queryLog();
	}

	@Override
	public PageData<LogBean> getQueryLogByPage(int page, int pageSize) {
		// TODO Auto-generated method stub
		return lbd.queryLogByPage(page, pageSize);
	}

	@Override
	public boolean getAddLog(LogBean lb) {
		// TODO Auto-generated method stub
		return lbd.addLog(lb);
	}

}
