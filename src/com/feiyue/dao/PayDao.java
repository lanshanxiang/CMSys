package com.feiyue.dao;

import com.feiyue.entiy.Pay;
import com.feiyue.util.PageData;
/**
 * 
 * @author Administrator
 *
 */
public interface PayDao {
	//增加
     public boolean addPay(Pay p);
     //分页
     public PageData<Pay> queryPay(int page,int pageSize);
}
