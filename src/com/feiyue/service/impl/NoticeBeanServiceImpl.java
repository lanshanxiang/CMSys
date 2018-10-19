package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.NoticeBeanDao;
import com.feiyue.dao.impl.NoticeBeanDaoImpl;
import com.feiyue.entiy.NoticeBean;
import com.feiyue.service.NoticeBeanService;
import com.feiyue.util.PageData;






public class NoticeBeanServiceImpl implements NoticeBeanService {
	
	NoticeBeanDao nbd=new NoticeBeanDaoImpl();
	
	@Override
	public boolean addNotice(NoticeBean n) {
		// TODO Auto-generated method stub
		return nbd.addNotice(n);
	}

	@Override
	public boolean updateNotice(NoticeBean n) {
		// TODO Auto-generated method stub
		return nbd.updateNotice(n);
	}

	@Override
	public boolean deleteNotice(int NoticeId) {
		// TODO Auto-generated method stub
		return nbd.deleteNotice(NoticeId);
	}


	@Override
	public List<NoticeBean> getNotice() {
		// TODO Auto-generated method stub
		return nbd.getNotice();
	}

		@Override
		public PageData<NoticeBean> queryNoticeByPage(int page, int pageSize, String keywords) {
			// TODO Auto-generated method stub
			return nbd.queryNoticeByPage(page, pageSize, keywords);
		}
		@Override
		public List<NoticeBean> selectNotice(String keyword) {
			// TODO Auto-generated method stub
			return nbd.selectNotice(keyword);
		}

		@Override
		public PageData<NoticeBean> getSelectAllNotice(int page, int pageSize) {
			// TODO Auto-generated method stub
			return nbd.selectAllNotice(page, pageSize);
		}
	
}
