package com.feiyue.dao;
import java.util.List;

import com.feiyue.entiy.CostBean;
import com.feiyue.entiy.NoticeBean;
import com.feiyue.util.PageData;
/**
 * 
 * @author Administrator
 *
 */
public interface NoticeBeanDao {
	    //增加
		public boolean addNotice(NoticeBean n);
	    //修改
	    public boolean updateNotice(NoticeBean n);
	    //删除
	    public boolean deleteNotice(int NoticeId);
	  /*  //查询所有方法
	    public List<NoticeBean> queryOnlyNoticeBean();
	  //查询所有方法
	    public List<NoticeBean> queryNoticeBean();*/
	   //遍历
	    public List<NoticeBean> getNotice();
	    //分页
	    public PageData<NoticeBean> queryNoticeByPage(int page, int pageSize, String keywords);
	    //查询
	    public List<NoticeBean> selectNotice(String keyword);
	    //前台查询所有公告
	    public PageData<NoticeBean> selectAllNotice(int page, int pageSize);
	    
	   
	
	}