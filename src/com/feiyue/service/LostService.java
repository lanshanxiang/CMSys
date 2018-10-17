package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.Lost;
import com.feiyue.util.PageData;

public interface LostService {
	public PageData<Lost> getQueryLost(int page,int pageSize);
}
