package com.feiyue.dao;

import com.feiyue.entiy.Welfare;
import com.feiyue.util.PageData;
/**
 * 
 * @author Administrator
 *
 */
public interface WelfareDao {
	//显示页码
    public PageData<Welfare> queryWelfare(int page,int pageSize);
}
