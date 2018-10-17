package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.B_countDao;
import com.feiyue.dao.S_countDao;
import com.feiyue.entiy.B_count;
import com.feiyue.entiy.S_count;
import com.feiyue.util.DBUtil;

public class S_countDaoImpl implements S_countDao {

	@Override
	public List<S_count> queryAll() {
		// TODO Auto-generated method stub
		return (List<S_count>) DBUtil.select("select * from tb_sCount ORDER BY tb_sCount.s_countMonth asc", S_count.class);
	}

}
