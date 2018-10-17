package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.B_countDao;
import com.feiyue.dao.U_countDao;
import com.feiyue.dao.impl.B_countDaoImpl;
import com.feiyue.dao.impl.U_countDaoImpl;
import com.feiyue.entiy.B_count;
import com.feiyue.entiy.U_count;
import com.feiyue.service.B_countService;
import com.feiyue.service.U_countService;

public class U_countServiceImpl implements U_countService {
	U_countDao bd=new U_countDaoImpl();

	@Override
	public List<U_count> getQueryAll() {
		// TODO Auto-generated method stub
		return bd.queryAll();
	}

}
