package com.feiyue.dao.impl;

import com.feiyue.dao.PayDao;
import com.feiyue.entiy.Pay;
import com.feiyue.util.DBUtil;
import com.feiyue.util.PageData;

public class PayDaoImpl implements PayDao {

	@Override
	public boolean addPay(Pay p) {
		// TODO Auto-generated method stub
		return DBUtil.execute("insert into tb_pay values(null,now(),?,?,?)", p.getPayMoney(),p.getCostId(),p.getTenementId())>0;
	}

	@Override
	public PageData<Pay> queryPay(int page, int pageSize) {
		// TODO Auto-generated method stub
		return DBUtil.getPage("select tb_pay.payTime,tb_pay.payMoney,tb_cost.costName,tb_tenement.tenementName from tb_pay,tb_cost,tb_tenement where tb_pay.costId=tb_cost.costId and tb_pay.tenementId=tb_tenement.tenementId", page, pageSize, Pay.class);
	}

}
