package com.feiyue.dao.impl;

import com.feiyue.dao.WelfareDao;
import com.feiyue.entiy.Welfare;
import com.feiyue.util.DBUtil;
import com.feiyue.util.PageData;

public class WelfareDaoImpl implements WelfareDao{

	@Override
	public PageData<Welfare> queryWelfare(int page, int pageSize) {
		// TODO Auto-generated method stub
		return DBUtil.getPage("select * from tb_welfare", page, pageSize, Welfare.class);
	}
    
}
