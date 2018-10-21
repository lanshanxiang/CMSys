package com.feiyue.dao;



import com.feiyue.entiy.Lost;
import com.feiyue.util.PageData;
/**
 * 
 * @author Administrator
 *
 */
public interface LostDao {
	//分页
     public PageData<Lost> queryLost(int page,int pageSize);
     //增加
     public boolean lostAdd(Lost l);
     
}
