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
		return (List<PaymentBean>) DBUtil.select("SELECT tb_payment.payId,tb_tenement.tenementName,tb_payment.years,tb_payment.months,tb_payment.lastHalf,tb_payment.thisMonth,tb_cost.costName,tb_payment.quantity,tb_payment.payable,tb_payment.practical,tb_payment.payDate,tb_payment.extent FROM tb_payment INNER JOIN tb_tenement ON tb_payment.tenementId = tb_tenement.tenementId INNER JOIN tb_cost ON tb_payment.costId = tb_cost.costId WHERE tb_payment.payable >tb_payment.practical", PaymentBean.class);
	}
	//遍历已缴费的
	@Override
	public List<PaymentBean> getPaymentAfter() {
		// TODO Auto-generated method stub
		return (List<PaymentBean>) DBUtil.select("SELECT tb_payment.payId,tb_tenement.tenementName,tb_payment.years,tb_payment.months,tb_payment.lastHalf,tb_payment.thisMonth,tb_cost.costName,tb_payment.quantity,tb_payment.payable,tb_payment.practical,tb_payment.payDate,tb_payment.extent FROM tb_payment INNER JOIN tb_tenement ON tb_payment.tenementId = tb_tenement.tenementId INNER JOIN tb_cost ON tb_payment.costId = tb_cost.costId WHERE tb_payment.payable <= tb_payment.practical", PaymentBean.class);
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
	
	@Override
	public PageData<PaymentBean> getFrontPayment(int  tenementId,double years,double months,int page, int pageSize) {
		// TODO Auto-generated method stub
		return  DBUtil.getPage("SELECT tb_tenement.tenementName,tb_payment.years,tb_payment.months,tb_payment.lastHalf,tb_payment.thisMonth,tb_payment.quantity,tb_payment.payable,tb_payment.practical FROM tb_payment INNER JOIN tb_tenement ON tb_payment.tenementId = tb_tenement.tenementId WHERE tb_tenement.tenementId =? AND tb_payment.years LIKE ? AND tb_payment.months LIKE ?", page, pageSize, PaymentBean.class,tenementId,"%"+years+"%","%"+months+"%");
	}
}
