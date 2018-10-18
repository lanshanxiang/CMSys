package com.feiyue.service.impl;

import com.feiyue.dao.WelfareDao;
import com.feiyue.dao.impl.WelfareDaoImpl;
import com.feiyue.entiy.Welfare;
import com.feiyue.service.WelfareService;
import com.feiyue.util.PageData;

public class WelfareServiceImpl implements WelfareService {
	WelfareDao wd=new WelfareDaoImpl();

	@Override
	public PageData<Welfare> getQueryWelfare(int page, int pageSize) {
		// TODO Auto-generated method stub
		return wd.queryWelfare(page, pageSize);
	}

}
