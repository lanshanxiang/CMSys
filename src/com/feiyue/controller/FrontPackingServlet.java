package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.Lost;
import com.feiyue.entiy.ParkingBean;
import com.feiyue.entiy.RoomBean;
import com.feiyue.service.LostService;
import com.feiyue.service.ParkingBeanService;
import com.feiyue.service.impl.LostServiceImpl;
import com.feiyue.service.impl.ParkingBeanServiceImpl;
import com.feiyue.util.PageData;
import com.google.gson.Gson;

/**
 * Servlet implementation class FontLostServlet
 */
@WebServlet("/FrontPackingServlet")
public class FrontPackingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ParkingBeanService pbs = new ParkingBeanServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontPackingServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
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
		int page=1;
		int pageSize=3;
		if(null!=request.getParameter("page")) {
			page=Integer.parseInt(request.getParameter("page"));
		}if(null!=request.getParameter("pageSize")) {
			pageSize=Integer.parseInt(request.getParameter("pageSize"));
		}
		//查询所有！ 流加载 ,前台查询我的车位
		if("".equals(op)) {
			int tenementId = Integer.parseInt(request.getParameter("tenementId"));
			PageData<ParkingBean> listPark = pbs.getQueryParkingBean(page, pageSize, tenementId);
			//将查询到的返回值存起来
			request.setAttribute("listPark", listPark);
			//创建一个Gson对象
			Gson gs = new Gson();
			//通过Gson对象的tojson方法将pd.getData（）转成字符串
			String str = gs.toJson(listPark.getData());
			//将字符组传到页面
			response.getWriter().print(str+listPark.getTotalPage());
		}else if("selectAllParking".equals(op)) {
			PageData<ParkingBean> listParkingBean = pbs.getSelectAllParkingBean(page, pageSize);
			//将查询到的返回值存起来
			request.setAttribute("listParkingBean", listParkingBean);
			//创建一个Gson对象
			Gson gs = new Gson();
			//通过Gson对象的tojson方法将pd.getData（）转成字符串
			String str = gs.toJson(listParkingBean.getData());
			//将字符组传到页面
			response.getWriter().print(str+listParkingBean.getTotalPage());
		}
		//前台申请车位处理的servlet
		else if("updatePark".equals(op)) {
			
			//替换下面语句
			int parkSRId=Integer.parseInt(request.getParameter("parkSRId"));
			int parkingId=Integer.parseInt(request.getParameter("parkingId"));
			ParkingBean pb = new ParkingBean(parkSRId,parkingId);
			int tenementId= Integer.parseInt(request.getParameter("tenementId"));
			boolean flag = pbs.getParkingBeanUpdate(pb, tenementId);
			response.getWriter().print(flag);
		}else if("queryParkByStatu".equals(op)) {
			List<ParkingBean> listParkState=pbs.getAllParkingBeanByStateService();
			PrintWriter out = response.getWriter();
			Gson gson = new Gson();
			out.print(gson.toJson(listParkState));
			out.close();
		}else if("queryParkById".equals(op)) {
			int parkingId=Integer.parseInt(request.getParameter("parkingId"));
			PageData<ParkingBean> listParkById = pbs.getSelectsssssParkingBeanById(page, pageSize, parkingId);
			PrintWriter out = response.getWriter();
			Gson gson = new Gson();
			out.print(gson.toJson(listParkById.getData())+listParkById.getTotalPage());
			out.close();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
