package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.B_countDao;
import com.feiyue.dao.P_countDao;
import com.feiyue.dao.impl.B_countDaoImpl;
import com.feiyue.dao.impl.P_countDaoImpl;
import com.feiyue.entiy.B_count;
import com.feiyue.entiy.P_count;
import com.feiyue.service.B_countService;
import com.feiyue.service.P_countService;

public class P_countServiceImpl implements P_countService {
	P_countDao bd=new P_countDaoImpl();

	@Override
	public List<P_count> getQueryAll() {
		// TODO Auto-generated method stub
		return bd.queryAll();
	}

}
