package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.B_countDao;
import com.feiyue.dao.S_countDao;
import com.feiyue.dao.impl.B_countDaoImpl;
import com.feiyue.dao.impl.S_countDaoImpl;
import com.feiyue.entiy.B_count;
import com.feiyue.entiy.S_count;
import com.feiyue.service.B_countService;
import com.feiyue.service.S_countService;

public class S_countServiceImpl implements S_countService {
	S_countDao bd=new S_countDaoImpl();

	@Override
	public List<S_count> getQueryAll() {
		// TODO Auto-generated method stub
		return bd.queryAll();
	}

}
