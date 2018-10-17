package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.LostDao;
import com.feiyue.dao.impl.LostDaoImpl;
import com.feiyue.entiy.Lost;
import com.feiyue.service.LostService;
import com.feiyue.util.PageData;

public class LostServiceImpl implements LostService {
	LostDao ld=new LostDaoImpl();

	@Override
	public PageData<Lost> getQueryLost(int page, int pageSize) {
		// TODO Auto-generated method stub
		return ld.queryLost(page, pageSize);
	}

}
