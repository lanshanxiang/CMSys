package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.B_countDao;
import com.feiyue.dao.C_countDao;
import com.feiyue.entiy.B_count;
import com.feiyue.entiy.C_count;
import com.feiyue.util.DBUtil;

public class C_countDaoImpl implements C_countDao {

	@Override
	public List<C_count> queryAll() {
		// TODO Auto-generated method stub
		return (List<C_count>) DBUtil.select("select * from tb_cCount ORDER BY tb_cCount.c_countMonth asc", C_count.class);
	}

}
