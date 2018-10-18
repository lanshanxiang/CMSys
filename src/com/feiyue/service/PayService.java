package com.feiyue.service;

import com.feiyue.entiy.Pay;
import com.feiyue.util.PageData;

public interface PayService {
	public boolean getAddPay(Pay p);
    public PageData<Pay> getQueryPay(int page,int pageSize);
}
