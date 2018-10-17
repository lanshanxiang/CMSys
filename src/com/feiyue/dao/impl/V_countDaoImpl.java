package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.B_countDao;
import com.feiyue.dao.V_countDao;
import com.feiyue.entiy.B_count;
import com.feiyue.entiy.V_count;
import com.feiyue.util.DBUtil;

public class V_countDaoImpl implements V_countDao {

	@Override
	public List<V_count> queryAll() {
		// TODO Auto-generated method stub
		return (List<V_count>) DBUtil.select("select * from tb_vCount ORDER BY tb_vCount.v_countMonth asc", V_count.class);
	}

}
