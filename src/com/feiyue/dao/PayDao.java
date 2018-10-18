package com.feiyue.dao;

import com.feiyue.entiy.Pay;
import com.feiyue.util.PageData;

public interface PayDao {
     public boolean addPay(Pay p);
     public PageData<Pay> queryPay(int page,int pageSize);
}
