package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.B_countDao;
import com.feiyue.dao.T_countDao;
import com.feiyue.dao.impl.B_countDaoImpl;
import com.feiyue.dao.impl.T_countDaoImpl;
import com.feiyue.entiy.B_count;
import com.feiyue.entiy.T_count;
import com.feiyue.service.B_countService;
import com.feiyue.service.T_countService;

public class T_countServiceImpl implements T_countService {
	T_countDao bd=new T_countDaoImpl();

	@Override
	public List<T_count> getQueryAll() {
		// TODO Auto-generated method stub
		return bd.queryAll();
	}

}
