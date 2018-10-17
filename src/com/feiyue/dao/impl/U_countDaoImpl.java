package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.B_countDao;
import com.feiyue.dao.U_countDao;
import com.feiyue.entiy.B_count;
import com.feiyue.entiy.U_count;
import com.feiyue.util.DBUtil;

public class U_countDaoImpl implements U_countDao {

	@Override
	public List<U_count> queryAll() {
		// TODO Auto-generated method stub
		return (List<U_count>) DBUtil.select("select * from tb_uCount ORDER BY tb_uCount.u_countMonth asc", U_count.class);
	}

}
