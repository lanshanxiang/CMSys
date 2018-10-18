package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.NoticeTypeBeanDao;
import com.feiyue.entiy.CostTypeBean;
import com.feiyue.entiy.NoticeTypeBean;
import com.feiyue.util.DBUtil;
import com.feiyue.util.PageData;

public class NoticeTypeBeanDaoImpl implements NoticeTypeBeanDao {
	// 增加
	@Override
	public boolean addNoticeType(NoticeTypeBean nt) {
		// TODO Auto-generated method stub
		return DBUtil.execute("insert into tb_noticetype  values (null,?,?)", nt.getTypeName(), nt.getRemark()) > 0;
	}

	// 修改
	@Override
	public boolean updateNoticeType(NoticeTypeBean nt) {
		// TODO Auto-generated method stub
		return DBUtil.execute("UPDATE tb_noticetype SET typeName=?,remark=?" + "where typeId=?", nt.getTypeName(),
				nt.getRemark(), nt.getTypeId()) > 0;
	}

	// 删除
	@Override
	public boolean deleteNoticeType(int TypeId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("delete from tb_noticetype where typeId=?", TypeId) > 0;
	}

	// 遍历
	@Override
	public List<NoticeTypeBean> getNoticeType() {
		// TODO Auto-generated method stub
		return (List<NoticeTypeBean>) DBUtil.select("SELECT * FROM tb_noticetype ", NoticeTypeBean.class);
	}

	// 分页
	@Override
	public PageData<NoticeTypeBean> queryNoticeTypeByPage(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		return null;
	}

	// 查询
	@Override
	public List<NoticeTypeBean> selectNoticeType(String keyword) {
		// TODO Auto-generated method stub
		return (List<NoticeTypeBean>) DBUtil.select("SELECT * FROM tb_noticetype WHERE ctName=? ", NoticeTypeBean.class,
				"%" + keyword + "%");
	}
}
