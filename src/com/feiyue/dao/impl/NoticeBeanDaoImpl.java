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
	return DBUtil.execute("INSERT INTO tb_notice (noticeId, titles, contents, typeId, releaseTime, extent) VALUES (null, ?, ?, ?, ?, ?) ",
		        n.getTitles(),n.getContents(),n.getTypeId(),n.getReleaseTime(),n.getExtent())>0;
	}
	//修改
	@Override
	public boolean updateNotice(NoticeBean n) {
		// TODO Auto-generated method stub
		return DBUtil.execute("UPDATE tb_notice,tb_noticetype SET titles=?, contents=?, typeName=?, releaseTime=?, extent=? WHERE (tb_notice.typeId=tb_noticetype.typeId and noticeId=?)",n.getTitles(),n.getContents(),n.getTypeName(),n.getReleaseTime(),n.getExtent(),n.getNoticeId())>0;
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
		return (List<NoticeBean>) DBUtil.select("SELECT noticeId , titles ,contents,tb_noticetype.typeId,releaseTime,tb_notice.extent,typeName from tb_notice,tb_noticetype where  tb_notice.typeId= tb_noticetype.typeId ", NoticeBean.class);
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
		return (List<NoticeBean>) DBUtil.select("SELECT noticeId , titles ,contents,tb_noticetype.typeId,releaseTime,tb_notice.extent,typeName from tb_notice,tb_noticetype where  tb_notice.typeId= tb_noticetype.typeId and NoticeName=? ", NoticeBean.class,"%"+keyword+"%");
	}
	
	/**
	 * 前台查询所有公告
	 */
	@Override
	public PageData<NoticeBean> selectAllNotice(int page, int pageSize) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from tb_notice";
		return DBUtil.getPage(sql, page, pageSize, NoticeBean.class);
	}
	
	
	
	

	
}
