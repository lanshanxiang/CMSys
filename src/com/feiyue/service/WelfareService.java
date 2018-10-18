package com.feiyue.service;

import com.feiyue.entiy.Welfare;
import com.feiyue.util.PageData;

public interface WelfareService {
	public PageData<Welfare> getQueryWelfare(int page,int pageSize);
}
