package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.ComplainDao;
import com.feiyue.dao.impl.ComplainDaoImpl;
import com.feiyue.entiy.ComplainBean;
import com.feiyue.service.ComplainService;
/**
 * 与数据库交互的service实现类
 * @author Administrator
 *
 */
public class ComplainServiceImpl implements ComplainService {
	//创建dao
	ComplainDao  cd=new ComplainDaoImpl();
    //查询所有
	@Override
	public List<ComplainBean> getQueryComplain() {
		// TODO Auto-generated method stub
		return cd.queryComplain();
	}
    //增加
	@Override
	public boolean getAddComplain(ComplainBean c) {
		// TODO Auto-generated method stub
		return cd.addComplain(c);
	}
    //修改
	@Override
	public boolean getUpdateComplain(ComplainBean c) {
		// TODO Auto-generated method stub
		return cd.updateComplain(c);
	}
    //删除
	@Override
	public boolean getDeleteComplain(int conplyId) {
		// TODO Auto-generated method stub
		return cd.deleteComplain(conplyId);
	}

}
