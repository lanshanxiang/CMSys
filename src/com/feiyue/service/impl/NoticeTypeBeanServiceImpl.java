package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.NoticeTypeBeanDao;
import com.feiyue.dao.impl.NoticeTypeBeanDaoImpl;
import com.feiyue.entiy.CostTypeBean;
import com.feiyue.entiy.NoticeTypeBean;
import com.feiyue.service.NoticeTypeBeanService;
import com.feiyue.util.PageData;

public class NoticeTypeBeanServiceImpl implements NoticeTypeBeanService {
	
	NoticeTypeBeanDao ntbd=new NoticeTypeBeanDaoImpl();
	
	@Override
	public boolean addNoticeType(NoticeTypeBean nt) {
		// TODO Auto-generated method stub
		return ntbd.addNoticeType(nt);
	}

	@Override
	public boolean updateNoticeType(NoticeTypeBean nt) {
		// TODO Auto-generated method stub
		return ntbd.updateNoticeType(nt);
	}

	@Override
	public boolean deleteNoticeType(int TypeId) {
		// TODO Auto-generated method stub
		return ntbd.deleteNoticeType(TypeId);
	}

	@Override
	public List<NoticeTypeBean> getNoticeType() {
		// TODO Auto-generated method stub
		return ntbd.getNoticeType();
	}
	@Override
	public PageData<NoticeTypeBean> queryNoticeTypeByPage(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		return ntbd.queryNoticeTypeByPage(page, pageSize, keywords);
	}
	@Override
	public List<NoticeTypeBean> selectNoticeType(String keyword) {
		// TODO Auto-generated method stub
		return ntbd.selectNoticeType(keyword);
	}

}
