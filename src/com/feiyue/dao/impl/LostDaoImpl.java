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
		return (PageData<Lost>) DBUtil.getPage("select * from tb_lost", page, pageSize, Lost.class);
	}

}
