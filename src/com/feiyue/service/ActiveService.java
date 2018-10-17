package com.feiyue.service;

import com.feiyue.entiy.Active;
import com.feiyue.util.PageData;

public interface ActiveService {
      public PageData<Active> getQueryActive(int page,int pageSize);
}
