package com.feiyue.dao;

import com.feiyue.entiy.Active;
import com.feiyue.util.PageData;

public interface ActiveDao {
      public PageData<Active> queryActive(int page,int pageSize);
}
