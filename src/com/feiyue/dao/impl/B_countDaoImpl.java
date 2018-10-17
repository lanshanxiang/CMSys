package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.B_countDao;
import com.feiyue.entiy.B_count;
import com.feiyue.util.DBUtil;

public class B_countDaoImpl implements B_countDao {

	@Override
	public List<B_count> queryAll() {
		// TODO Auto-generated method stub
		return (List<B_count>) DBUtil.select("select * from tb_bCount ORDER BY tb_bCount.b_countMonth asc", B_count.class);
	}

}
