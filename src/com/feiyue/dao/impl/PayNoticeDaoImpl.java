package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.PayNoticeDao;
import com.feiyue.entiy.PayNoticeBean;
import com.feiyue.util.DBUtil;

public class PayNoticeDaoImpl implements PayNoticeDao{
	//遍历
	@Override
	public List<PayNoticeBean> getPayNotice() {
		// TODO Auto-generated method stub
		return (List<PayNoticeBean>) DBUtil.select("SELECT tb_tv.tenementName,tb_tv.mobilePhone,tb_tv.villageName, tb_payment.years,tb_payment.months,SUM(tb_payment.payable)AS totalPay FROM tb_payment LEFT  JOIN  (SELECT tb_tenement.tenementId,tb_tenement.tenementName,tb_tenement.mobilePhone,tb_villageinfo.villageName FROM tb_villageinfo left JOIN tb_tenement ON tb_villageinfo.villageId = tb_tenement.villageId)tb_tv ON tb_payment.tenementId=tb_tv.tenementId GROUP BY tb_tv.tenementName,tb_payment.years,tb_payment.months", PayNoticeBean.class);
	}
}
