package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.LogBeanDao;
import com.feiyue.entiy.LogBean;
import com.feiyue.util.DBUtil;
import com.feiyue.util.PageData;

public class LogBeanDaoImpl implements LogBeanDao {

	@Override
	public List<LogBean> queryLog() {
		// TODO Auto-generated method stub
		return (List<LogBean>) DBUtil.select("select * from tb_log order by tb_log.logDate desc", LogBean.class);
	}

	@Override
	public PageData<LogBean> queryLogByPage(int page, int pageSize) {
		// TODO Auto-generated method stub
		return DBUtil.getPage("select * from tb_log order by tb_log.logDate desc", page, pageSize, LogBean.class);
	}

	@Override
	public boolean addLog(LogBean lb) {
		// TODO Auto-generated method stub
		return DBUtil.execute("insert into tb_log values(null,?,?,now())", lb.getLogName(),lb.getLogContent())>0;
	}

}
