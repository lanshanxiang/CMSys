package com.feiyue.dao;
import java.util.List;

import com.feiyue.entiy.CostTypeBean;
import com.feiyue.entiy.NoticeTypeBean;
import com.feiyue.util.PageData;
public interface NoticeTypeBeanDao {
	    //增加
		public boolean addNoticeType(NoticeTypeBean nt);
	    //修改
	    public boolean updateNoticeType(NoticeTypeBean nt);
	    //删除
	    public boolean deleteNoticeType(int TypeId);
	   /* //查询所有方法
	    public List<NoticeTypeBean> queryNoticeTypeBean();*/
	    //遍历
	    public List<NoticeTypeBean> getNoticeType();
	    //分页
	    public PageData<NoticeTypeBean> queryNoticeTypeByPage(int page, int pageSize, String keywords);
	    //查询
	    public List<NoticeTypeBean> selectNoticeType(String keyword);
	}