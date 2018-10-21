package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.ComplainDao;
import com.feiyue.entiy.ComplainBean;
import com.feiyue.util.DBUtil;
/**
 * 与数据库交互的DAO实现类
 * @author Administrator
 *
 */
public class ComplainDaoImpl implements ComplainDao {
	//查询所有
	@Override
	public List<ComplainBean> queryComplain() {
		// TODO Auto-generated method stub
		return (List<ComplainBean>) DBUtil.select("select * from tb_complain", ComplainBean.class);
	}
    //增加
	@Override
	public boolean addComplain(ComplainBean c) {
		// TODO Auto-generated method stub
		return DBUtil.execute("INSERT INTO tb_complain VALUES (null, ?, ?, ?, ?, ?, ?)", c.getConplyName(),c.getConplyQuestion(),c.getConplyTime(),c.getConplyPhone(),c.getConplyStatus(),c.getConplyRemark())>0;
	}
    //修改
	@Override
	public boolean updateComplain(ComplainBean c) {
		// TODO Auto-generated method stub
		return DBUtil.execute("UPDATE tb_complain SET `conplyName`=?, `conplyQuestion`=?, `conplyTime`=?,  `conplyPhone`=?, `conplyStatus`=?, `conplyRemark`=? WHERE (`conplyId`=?);", c.getConplyName(),c.getConplyQuestion(),c.getConplyTime(),c.getConplyPhone(),c.getConplyStatus(),c.getConplyRemark(),c.getConplyId())>0;
	}
    //删除
	@Override
	public boolean deleteComplain(int conplyId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("delete from tb_complain where conplyId=?", conplyId)>0;
	}
	@Override
	public boolean batchDeleteComplain(String sql) {
		// TODO Auto-generated method stub
		return DBUtil.execute(sql)>0;
	}
	@Override
	public boolean addFrontComplain(ComplainBean c) {
		// TODO Auto-generated method stub
		return  DBUtil.execute("INSERT INTO tb_complain VALUES (null, ?,?,NOW(),?,?,?)", c.getConplyName(),c.getConplyQuestion(),c.getConplyPhone(),c.getConplyStatus(),c.getConplyRemark())>0;
	}

}
