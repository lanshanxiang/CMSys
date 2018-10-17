package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.B_countDao;
import com.feiyue.dao.V_countDao;
import com.feiyue.dao.impl.B_countDaoImpl;
import com.feiyue.dao.impl.V_countDaoImpl;
import com.feiyue.entiy.B_count;
import com.feiyue.entiy.V_count;
import com.feiyue.service.B_countService;
import com.feiyue.service.V_countService;

public class V_countServiceImpl implements V_countService {
	V_countDao bd=new V_countDaoImpl();

	@Override
	public List<V_count> getQueryAll() {
		// TODO Auto-generated method stub
		return bd.queryAll();
	}

}
