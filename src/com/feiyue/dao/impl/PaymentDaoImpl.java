package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.PaymentDao;
import com.feiyue.entiy.PaymentBean;
import com.feiyue.util.DBUtil;
import com.feiyue.util.PageData;

public class PaymentDaoImpl implements PaymentDao{
    //增加
	@Override
	public boolean add(PaymentBean payment) {
		// TODO Auto-generated method stub
		return DBUtil.execute("INSERT into tb_payment VALUES(null,?,?,?,?,?,?,?,?,?,?,?)", 
				payment.getTenementId(),payment.getYears(),payment.getMonths(),payment.getLastHalf(),payment.getThisMonth(),
				payment.getCostId(),payment.getQuantity(),payment.getPayable(),
				payment.getPractical(),payment.getPayDate(),payment.getExtent())>0;
	}
    //修改
	@Override
	public boolean update(PaymentBean payment) {
		// TODO Auto-generated method stub
		return DBUtil.execute("UPDATE tb_payment set tenementId=?,years=?,months=?,lastHalf=?,thisMonth=?,costId=?,quantity=?,payable=?,practical=?,payDate=?,extent=? WHERE  payId=? ",
				payment.getTenementId(),payment.getYears(),payment.getMonths(),payment.getLastHalf(),payment.getThisMonth(),
				payment.getCostId(),payment.getQuantity(),payment.getPayable(),
				payment.getPractical(),payment.getPayDate(),payment.getExtent(),payment.getPayId())>0;
	}
    //删除
	@Override
	public boolean delete(int payId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("DELETE from tb_payment where payId=?", payId)>0;
	}
	//遍历
	@Override
	public List<PaymentBean> getPayment() {
		// TODO Auto-generated method stub
		return (List<PaymentBean>) DBUtil.select("SELECT * FROM tb_payment ", PaymentBean.class);
	}
	//遍历未缴费的
	@Override
	public List<PaymentBean> getPaymentBefore() {
		// TODO Auto-generated method stub
		return (List<PaymentBean>) DBUtil.select("SELECT * FROM tb_payment WHERE payable > practical ", PaymentBean.class);
	}
	//遍历已缴费的
	@Override
	public List<PaymentBean> getPaymentAfter() {
		// TODO Auto-generated method stub
		return (List<PaymentBean>) DBUtil.select("SELECT * FROM tb_payment WHERE payable <= practical ", PaymentBean.class);
	}
	//分页
	@Override
	public PageData<PaymentBean> queryPaymentByPage(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		
		return null;
	}
	@Override
	public List<PaymentBean> selectPayment(String keyword) {
		// TODO Auto-generated method stub
		
		return (List<PaymentBean>) DBUtil.select("SELECT * FROM tb_payment WHERE tenementId=? ", PaymentBean.class,"%"+keyword+"%");
	}
	@Override
	public boolean batchDeletePayment(String sql) {
		// TODO Auto-generated method stub
		return DBUtil.execute(sql)>0;
	}
}
