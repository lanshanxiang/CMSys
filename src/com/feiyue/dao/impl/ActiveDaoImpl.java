package com.feiyue.dao.impl;

import com.feiyue.dao.ActiveDao;
import com.feiyue.entiy.Active;
import com.feiyue.util.DBUtil;
import com.feiyue.util.PageData;

public class ActiveDaoImpl implements ActiveDao {

	@Override
	public PageData<Active> queryActive(int page,int pageSize) {
		// TODO Auto-generated method stub
		return (PageData<Active>) DBUtil.getPage("select * from tb_active", page, pageSize, Active.class);
	}

}
