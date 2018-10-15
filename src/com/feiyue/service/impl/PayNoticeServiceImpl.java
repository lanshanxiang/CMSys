package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.PayNoticeDao;
import com.feiyue.dao.impl.PayNoticeDaoImpl;
import com.feiyue.entiy.PayNoticeBean;
import com.feiyue.service.PayNoticeService;

public class PayNoticeServiceImpl implements PayNoticeService{
	PayNoticeDao pnd=new PayNoticeDaoImpl();

	@Override
	public List<PayNoticeBean> getPayNotice() {
		// TODO Auto-generated method stub
		return pnd.getPayNotice();
	}
	
	
}
