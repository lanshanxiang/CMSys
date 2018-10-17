package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.R_countDao;
import com.feiyue.dao.impl.R_countDaoImpl;
import com.feiyue.entiy.R_count;
import com.feiyue.service.R_countService;

public class R_countServiceImpl implements R_countService {
	R_countDao bd=new R_countDaoImpl();

	@Override
	public List<R_count> getQueryAll() {
		// TODO Auto-generated method stub
		return bd.queryAll();
	}

}
