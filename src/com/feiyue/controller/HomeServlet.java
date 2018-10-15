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
import com.feiyue.entiy.ManagerBean;
import com.feiyue.entiy.ParkingBean;
import com.feiyue.entiy.RoomBean;
import com.feiyue.entiy.TenementBean;
import com.feiyue.entiy.UserBean;
import com.feiyue.entiy.VillageInfoBean;
import com.feiyue.service.BuildingBeanService;
import com.feiyue.service.ManagerService;
import com.feiyue.service.ParkingBeanService;
import com.feiyue.service.RoomBeanService;
import com.feiyue.service.TenementBeanService;
import com.feiyue.service.UserBeanService;
import com.feiyue.service.VillageInfoBeanService;
import com.feiyue.service.impl.BuildingBeanServiceImpl;
import com.feiyue.service.impl.ManagerServiceImpl;
import com.feiyue.service.impl.ParkingBeanServiceImpl;
import com.feiyue.service.impl.RoomBeanServiceImpl;
import com.feiyue.service.impl.TenementBeanServiceImpl;
import com.feiyue.service.impl.UserBeanServiceImpl;
import com.feiyue.service.impl.VillageInfoBeanServiceImpl;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	VillageInfoBeanService vibd=new VillageInfoBeanServiceImpl();
	BuildingBeanService bbs=new BuildingBeanServiceImpl();
	RoomBeanService rbs=new RoomBeanServiceImpl();
	TenementBeanService tbs=new TenementBeanServiceImpl();
	ParkingBeanService pbs=new ParkingBeanServiceImpl();
	UserBeanService ubs=new UserBeanServiceImpl();
	ManagerService ms=new ManagerServiceImpl();
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeServlet() {
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
		response.setContentType("application/json");
		// 获取op
		String op = "";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		List<VillageInfoBean> list1=vibd.getQueryVillageInfoBean();
		request.setAttribute("listVillage", list1.size());
		List<BuildingBean> list2=bbs.getQueryOnlyBuildingBean();
		request.setAttribute("listBuilding", list2.size());
		List<RoomBean> list3=rbs.getQueryOnlyRoomBean();
		request.setAttribute("listRoom", list3.size());
		List<TenementBean> list4=tbs.getTenementBean();
		request.setAttribute("listTenement", list4.size());
		List<ParkingBean> list5=pbs.getAllParkingBean();
		request.setAttribute("listParking", list5.size());
		List<UserBean> list6=ubs.getQueryUser();
		request.setAttribute("listUser", list6.size());
		List<ManagerBean> list7=ms.getQueryManager();
		request.setAttribute("listManager", list7.size());
		request.getRequestDispatcher("back/welcome.jsp").forward(request, response);
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
