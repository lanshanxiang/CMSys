package com.feiyue.test;
/**
 *  @author lsx 
 *  @version 1.0
 *  @date 2018年10月17日 下午11:45:37
 *  
 */

import com.feiyue.entiy.ParkingBean;
import com.feiyue.service.ParkingBeanService;
import com.feiyue.service.impl.ParkingBeanServiceImpl;
import com.feiyue.util.PageData;

public class parking {
	
	public static void main(String[] args) {
		ParkingBeanService pbs = new ParkingBeanServiceImpl();
		PageData<ParkingBean> list = pbs.getQueryParkingBean(1, 3, 10);
		list.getData().forEach(System.out::println);
	}
	
}
