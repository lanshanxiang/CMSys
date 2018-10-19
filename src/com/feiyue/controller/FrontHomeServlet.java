package com.feiyue.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.dao.VillageInfoBeanDao;
import com.feiyue.dao.impl.VillageInfoBeanDaoImpl;
import com.feiyue.entiy.BuildingBean;
import com.feiyue.entiy.BusinessBean;
import com.feiyue.entiy.LogBean;
import com.feiyue.entiy.Lost;
import com.feiyue.entiy.ManagerBean;
import com.feiyue.entiy.ParkingBean;
import com.feiyue.entiy.RoomBean;
import com.feiyue.entiy.TenementBean;
import com.feiyue.entiy.UserBean;
import com.feiyue.entiy.VillageInfoBean;
import com.feiyue.entiy.Welfare;
import com.feiyue.service.BuildingBeanService;
import com.feiyue.service.BusinessBeanService;
import com.feiyue.service.LogBeanService;
import com.feiyue.service.LostService;
import com.feiyue.service.ManagerService;
import com.feiyue.service.ParkingBeanService;
import com.feiyue.service.RoomBeanService;
import com.feiyue.service.TenementBeanService;
import com.feiyue.service.UserBeanService;
import com.feiyue.service.VillageInfoBeanService;
import com.feiyue.service.WelfareService;
import com.feiyue.service.impl.BuildingBeanServiceImpl;
import com.feiyue.service.impl.BusinessBeanServiceImpl;
import com.feiyue.service.impl.LogBeanServiceImpl;
import com.feiyue.service.impl.LostServiceImpl;
import com.feiyue.service.impl.ManagerServiceImpl;
import com.feiyue.service.impl.ParkingBeanServiceImpl;
import com.feiyue.service.impl.RoomBeanServiceImpl;
import com.feiyue.service.impl.TenementBeanServiceImpl;
import com.feiyue.service.impl.UserBeanServiceImpl;
import com.feiyue.service.impl.VillageInfoBeanServiceImpl;
import com.feiyue.service.impl.WelfareServiceImpl;
import com.feiyue.util.PageData;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/FrontHomeServlet")
public class FrontHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	VillageInfoBeanService vibd = new VillageInfoBeanServiceImpl();
	BuildingBeanService bbs = new BuildingBeanServiceImpl();
	RoomBeanService rbs = new RoomBeanServiceImpl();
	TenementBeanService tbs = new TenementBeanServiceImpl();
	ParkingBeanService pbs = new ParkingBeanServiceImpl();
	UserBeanService ubs = new UserBeanServiceImpl();
	ManagerService ms = new ManagerServiceImpl();
	BusinessBeanService bbss = new BusinessBeanServiceImpl();
	LogBeanService lbs = new LogBeanServiceImpl();
	LostService ls=new LostServiceImpl();
    WelfareService ws=new WelfareServiceImpl();
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontHomeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 设置响应和请求编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 设置返回的为json格式
		// 获取op
		String op = "";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		int page = 1;
		int pageSize = 6;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		if (request.getParameter("pageSize") != null) {
			pageSize = Integer.parseInt(request.getParameter("pageSize"));
		}
		PageData<VillageInfoBean> pdVillage=vibd.getQueryVillageInfoBeanByPage(page, pageSize);
		request.setAttribute("pdVillage", pdVillage);
		PageData<ParkingBean> pdPark=pbs.getSelectAllParkingBean(page, pageSize);
		request.setAttribute("pdPark", pdPark);
		PageData<RoomBean> pdRoom=rbs.getselectAllRoomBean(page, pageSize);
		request.setAttribute("pdRoom", pdRoom);
		PageData<Lost> pdLost=ls.getQueryLost(page, pageSize);
		request.setAttribute("pdLost", pdLost);
		PageData<Welfare> pdWelfare=ws.getQueryWelfare(page, pageSize);
		request.setAttribute("pdWelfare", pdWelfare);
		request.getRequestDispatcher("front/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
