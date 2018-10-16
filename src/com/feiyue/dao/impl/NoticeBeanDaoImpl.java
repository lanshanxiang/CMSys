package com.feiyue.dao.impl;
import java.util.List;

import com.feiyue.dao.NoticeBeanDao;

import com.feiyue.entiy.NoticeBean;

import com.feiyue.util.DBUtil;
import com.feiyue.util.PageData;
public class NoticeBeanDaoImpl implements NoticeBeanDao{
	//增加
	@Override
	public boolean addNotice(NoticeBean n) {
		// TODO Auto-generated method stub
	return DBUtil.execute("insert into tb_notice   values (null,?,?,?,?,?)",
		        n.getTitles(),n.getContents(),n.getTypeId(),n.getReleaseTime(),n.getExtent())>0;
	}
	//修改
	@Override
	public boolean updateNotice(NoticeBean n) {
		// TODO Auto-generated method stub
		return DBUtil.execute("UPDATE tb_notice SET titles=?,contents=?,typeId=?,releaseTime=?,extent=? where noticeId=?",n.getTitles(),n.getContents(),n.getTypeId(),n.getReleaseTime(),n.getExtent(),n.getNoticeId())>0;
	}
	//删除
	@Override
	public boolean deleteNotice(int noticeId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("delete from tb_notice where noticeId=?",noticeId)>0;
	}
	
	//遍历
	@Override
	public List<NoticeBean> getNotice() {
		// TODO Auto-generated method stub
		return (List<NoticeBean>) DBUtil.select("SELECT * FROM tb_notice ", NoticeBean.class);
	}
	
	//分页
	@Override
	public PageData<NoticeBean> queryNoticeByPage(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		return null;
	}
	
	//查询
	/*@Override
	public List<NoticeBean> selectNotice(String keyword) {
		// TODO Auto-generated method stub
		return (List<NoticeBean>) DBUtil.select("SELECT * FROM tb_notice WHERE NoticeName=? ", NoticeBean.class,"%"+keyword+"%");
	}*/
	@Override
	public List<NoticeBean> selectNotice(String keyword) {
		// TODO Auto-generated method stub
		return (List<NoticeBean>) DBUtil.select("SELECT * FROM tb_notice WHERE NoticeName=? ", NoticeBean.class,"%"+keyword+"%");
	}
	
	
	
	

	
}
