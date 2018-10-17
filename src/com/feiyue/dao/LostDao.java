package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.Lost;
import com.feiyue.util.PageData;

public interface LostDao {
     public PageData<Lost> queryLost(int page,int pageSize);
}
