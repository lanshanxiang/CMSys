package com.feiyue.service.impl;

import com.feiyue.dao.ActiveDao;
import com.feiyue.dao.impl.ActiveDaoImpl;
import com.feiyue.entiy.Active;
import com.feiyue.service.ActiveService;
import com.feiyue.util.PageData;

public class ActiveServiceImpl implements ActiveService {
	ActiveDao ad=new ActiveDaoImpl();

	@Override
	public PageData<Active> getQueryActive(int page, int pageSize) {
		// TODO Auto-generated method stub
		return ad.queryActive(page, pageSize);
	}

}
