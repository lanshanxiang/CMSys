package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.R_countDao;
import com.feiyue.entiy.R_count;
import com.feiyue.util.DBUtil;

public class R_countDaoImpl implements R_countDao {

	@Override
	public List<R_count> queryAll() {
		// TODO Auto-generated method stub
		return (List<R_count>) DBUtil.select("select * from tb_rCount ORDER BY tb_rCount.r_countMonth asc", R_count.class);
	}

}
