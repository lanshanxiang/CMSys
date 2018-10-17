package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.B_countDao;
import com.feiyue.dao.C_countDao;
import com.feiyue.dao.impl.B_countDaoImpl;
import com.feiyue.dao.impl.C_countDaoImpl;
import com.feiyue.entiy.B_count;
import com.feiyue.entiy.C_count;
import com.feiyue.service.B_countService;
import com.feiyue.service.C_countService;

public class C_countServiceImpl implements C_countService {
	C_countDao bd=new C_countDaoImpl();

	@Override
	public List<C_count> getQueryAll() {
		// TODO Auto-generated method stub
		return bd.queryAll();
	}

}
