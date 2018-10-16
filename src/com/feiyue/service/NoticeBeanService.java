package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.CostBean;
import com.feiyue.entiy.NoticeBean;
import com.feiyue.util.PageData;

public interface NoticeBeanService {

	// 增加
	public boolean addNotice(NoticeBean n);

	// 修改
	public boolean updateNotice(NoticeBean n);

	// 删除
	public boolean deleteNotice(int NoticeId);

	//遍历
    public List<NoticeBean> getNotice();
    //分页
    public PageData<NoticeBean> queryNoticeByPage(int page, int pageSize, String keywords);
    //查询
    public List<NoticeBean> selectNotice(String keyword);
}
