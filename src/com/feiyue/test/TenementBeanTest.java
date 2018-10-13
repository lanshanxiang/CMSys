package com.feiyue.test;

import java.util.List;

import com.feiyue.entiy.TenementBean;
import com.feiyue.service.TenementBeanService;
import com.feiyue.service.impl.TenementBeanServiceImpl;


public class TenementBeanTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//List<TenementBean> list = tbs.getTenementBean();
		//list.forEach(System.out::println);
		TenementBeanService tbs = new TenementBeanServiceImpl();
		String a="123";
		boolean flag = tbs.getDeleteTenementBean(3);
		System.out.println(flag);
	}

}
