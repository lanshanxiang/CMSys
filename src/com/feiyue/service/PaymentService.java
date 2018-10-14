package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.PaymentBean;
import com.feiyue.util.PageData;

public interface PaymentService {
	   //增加
		public boolean addPayment(PaymentBean payment);
	    //修改
	    public boolean updatePayment(PaymentBean payment);
	    //删除
	    public boolean deletePayment(int fareId);
	    //遍历
	    public List<PaymentBean> getPayment();
	    //分页
	    public PageData<PaymentBean> queryPaymentByPage(int page, int pageSize, String keywords);
	    //查询
	    public List<PaymentBean> selectPayment(String keyword);
}
