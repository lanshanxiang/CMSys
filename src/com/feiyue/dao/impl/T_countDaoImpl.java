package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.B_countDao;
import com.feiyue.dao.T_countDao;
import com.feiyue.entiy.B_count;
import com.feiyue.entiy.T_count;
import com.feiyue.util.DBUtil;

public class T_countDaoImpl implements T_countDao {

	@Override
	public List<T_count> queryAll() {
		// TODO Auto-generated method stub
		return (List<T_count>) DBUtil.select("select * from tb_tCount ORDER BY tb_tCount.t_countMonth DESC", T_count.class);
	}

}
