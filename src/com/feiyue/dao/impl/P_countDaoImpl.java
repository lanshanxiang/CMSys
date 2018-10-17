package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.B_countDao;
import com.feiyue.dao.P_countDao;
import com.feiyue.entiy.B_count;
import com.feiyue.entiy.P_count;
import com.feiyue.util.DBUtil;

public class P_countDaoImpl implements P_countDao {

	@Override
	public List<P_count> queryAll() {
		// TODO Auto-generated method stub
		return (List<P_count>) DBUtil.select("select * from tb_pCount ORDER BY tb_pCount.p_countMonth DESC", P_count.class);
	}

}
