package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.PaymentBean;
import com.feiyue.util.PageData;

public interface PaymentDao {
	//增加
	public boolean add(PaymentBean payment);
    //修改
    public boolean update(PaymentBean payment);
    //删除
    public boolean delete(int fareId);
    //遍历
    public List<PaymentBean> getPayment();
    //遍历未缴费的
    public List<PaymentBean> getPaymentBefore();
    //遍历已缴费的
    public List<PaymentBean> getPaymentAfter();
    //分页
    public PageData<PaymentBean> queryPaymentByPage(int page, int pageSize, String keywords);
    //查询
    public List<PaymentBean> selectPayment(String keyword);
     //批量删除
    public boolean batchDeletePayment(String sql);
}
