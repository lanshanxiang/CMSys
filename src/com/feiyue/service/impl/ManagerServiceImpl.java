package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.ManagerDao;
import com.feiyue.dao.impl.ManagerDaoImpl;
import com.feiyue.entiy.ManagerBean;
import com.feiyue.service.ManagerService;

/**
 *  @author lsx 
 *  @version 1.0
 *  @date 2018年10月14日 下午3:04:16
 *  
 */
public class ManagerServiceImpl implements ManagerService {

	ManagerDao md = new ManagerDaoImpl();
	@Override
	public ManagerBean login(String mName, String mPwd) {
		// TODO Auto-generated method stub
		return md.queryManager(mName, mPwd);
	}

}
