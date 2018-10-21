package com.feiyue.dao;

import com.feiyue.entiy.Active;
import com.feiyue.util.PageData;
/**
 * 
 * @author Administrator
 *
 */
public interface ActiveDao {
	//显示页码
      public PageData<Active> queryActive(int page,int pageSize);
}
