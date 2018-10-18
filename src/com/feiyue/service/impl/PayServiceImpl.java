package com.feiyue.service.impl;

import com.feiyue.dao.PayDao;
import com.feiyue.dao.impl.PayDaoImpl;
import com.feiyue.entiy.Pay;
import com.feiyue.service.PayService;
import com.feiyue.util.PageData;

public class PayServiceImpl implements PayService {
	PayDao pd=new PayDaoImpl();

	@Override
	public boolean getAddPay(Pay p) {
		// TODO Auto-generated method stub
		return pd.addPay(p);
	}

	@Override
	public PageData<Pay> getQueryPay(int page, int pageSize) {
		// TODO Auto-generated method stub
		return pd.queryPay(page, pageSize);
	}

}
