package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.CostTypeBean;
import com.feiyue.entiy.NoticeTypeBean;
import com.feiyue.util.PageData;

public interface NoticeTypeBeanService {
	// 增加
	public boolean addNoticeType(NoticeTypeBean nt);

	// 修改
	public boolean updateNoticeType(NoticeTypeBean nt);

	// 删除
	public boolean deleteNoticeType(int TypeId);
	 //遍历
    public List<NoticeTypeBean> getNoticeType();
    //分页
    public PageData<NoticeTypeBean> queryNoticeTypeByPage(int page, int pageSize, String keywords);
    //查询
    public List<NoticeTypeBean> selectNoticeType(String keyword);
}
