package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.B_countDao;
import com.feiyue.dao.impl.B_countDaoImpl;
import com.feiyue.entiy.B_count;
import com.feiyue.service.B_countService;

public class B_countServiceImpl implements B_countService {
	B_countDao bd=new B_countDaoImpl();

	@Override
	public List<B_count> getQueryAll() {
		// TODO Auto-generated method stub
		return bd.queryAll();
	}

}
