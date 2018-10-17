package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.LostDao;
import com.feiyue.entiy.Lost;
import com.feiyue.util.DBUtil;
import com.feiyue.util.PageData;

public class LostDaoImpl implements LostDao {

	@Override
	public PageData<Lost> queryLost(int page, int pageSize) {
		// TODO Auto-generated method stub
		return (PageData<Lost>) DBUtil.getPage("select * from tb_lost ORDER BY tb_lost.sDate DESC", page, pageSize, Lost.class);
	}

	@Override
	public boolean lostAdd(Lost l) {
		// TODO Auto-generated method stub
		return DBUtil.execute("insert into tb_lost values(null,?,?,?,?,?,now())", l.getLostGood(),l.getLostDate(),l.getLostArea(),l.getLostName(),l.getLostTel())>0;
	}

}
