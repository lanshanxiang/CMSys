package com.feiyue.dao;

import com.feiyue.entiy.Welfare;
import com.feiyue.util.PageData;

public interface WelfareDao {
    public PageData<Welfare> queryWelfare(int page,int pageSize);
}
