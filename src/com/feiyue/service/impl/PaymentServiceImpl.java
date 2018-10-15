package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.PaymentDao;
import com.feiyue.dao.impl.PaymentDaoImpl;
import com.feiyue.entiy.PaymentBean;
import com.feiyue.service.PaymentService;
import com.feiyue.util.PageData;

public class PaymentServiceImpl implements PaymentService{
	PaymentDao pd=new PaymentDaoImpl();

	@Override
	public boolean addPayment(PaymentBean payment) {
		// TODO Auto-generated method stub
		return pd.add(payment);
	}
	@Override
	public boolean deletePayment(int payId) {
		// TODO Auto-generated method stub
		return pd.delete(payId);
	}
	@Override
	public boolean updatePayment(PaymentBean payment) {
		// TODO Auto-generated method stub
		return pd.update(payment);
	}
	@Override
	public List<PaymentBean> getPayment() {
		// TODO Auto-generated method stub
		return pd.getPayment();
	}
	@Override
	public List<PaymentBean> getPaymentBefore() {
		// TODO Auto-generated method stub
		return pd.getPaymentBefore();
	}
	@Override
	public List<PaymentBean> getPaymentAfter() {
		// TODO Auto-generated method stub
		return pd.getPaymentAfter();
	}
	
	@Override
	public PageData<PaymentBean> queryPaymentByPage(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		return pd.queryPaymentByPage(page, pageSize, keywords);
	}
	@Override
	public List<PaymentBean> selectPayment(String keyword) {
		// TODO Auto-generated method stub
		return pd.selectPayment(keyword);
	}
	 
	
}
