package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.RoomBean;
import com.feiyue.service.RoomBeanService;
import com.feiyue.service.impl.RoomBeanServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * 用于处理房间管理的servlet
 */
@WebServlet("/RoomBeanServlet")
public class RoomBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RoomBeanService rbs = new RoomBeanServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RoomBeanServlet() {
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
		Object obj = request.getSession().getAttribute("users");
		if (obj != null) {
			if ("load".equals(op)) {
				List<RoomBean> list = rbs.getQueryOnlyRoomBean();
				PrintWriter out = response.getWriter();

				Gson gson = new Gson();
				out.println(gson.toJson(list));

				out.close();
				// 展示所有功能
			} else if ("".equals(op)) {
				// 调用service实现数据库的访问
				List<RoomBean> list = rbs.getQueryRoomBuildingBean();
				// Ajax来实现
				// 返回数据最好是json格式 外部的jar包 gson
				MyData<RoomBean> md = new MyData<RoomBean>();
				// 将list存入到MyData中
				md.setData(list);
				// 创建一个Gson实体
				Gson gson = new Gson();
				// 将MyData格式转化成字符串
				String jsonString = gson.toJson(md);
				// 使用printWriter对象
				PrintWriter out = response.getWriter();
				// 将jsonString返回到页面
				out.print(jsonString);
				System.out.println(jsonString);
				// 释放资源
				out.close();
				// 增加功能
			} else if ("addRoomBean".equals(op)) {
				// 从页面中获取要用到的信息
				String roomName = request.getParameter("roomName");
				int buildingId = Integer.parseInt(request.getParameter("buildingId"));
				String unitNum = request.getParameter("unitNum");
				String eApartment = request.getParameter("eApartment");
				double buildArea = Double.parseDouble(request.getParameter("buildArea"));
				double usingArea = Double.parseDouble(request.getParameter("usingArea"));
				String face = request.getParameter("face");
				String extent = request.getParameter("extent");
				String housetype = request.getParameter("housetype");
				String lease = request.getParameter("lease");
				// 将获取到的信息存储到实体类中
				RoomBean rb = new RoomBean(roomName, buildingId, unitNum, eApartment, buildArea, usingArea, face,
						extent, housetype, lease);
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = rbs.getAddRoomBean(rb);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
				// 修改功能
			} else if ("updateRoomBean".equals(op)) {
				// 从页面中获取要用到的信息
				String roomName = request.getParameter("roomName");
				int buildingId = Integer.parseInt(request.getParameter("buildingId"));
				String unitNum = request.getParameter("unitNum");
				String eApartment = request.getParameter("eApartment");
				double buildArea = Double.parseDouble(request.getParameter("buildArea"));
				double usingArea = Double.parseDouble(request.getParameter("usingArea"));
				String face = request.getParameter("face");
				String extent = request.getParameter("extent");
				String housetype = request.getParameter("housetype");
				String lease = request.getParameter("lease");
				int roomId = Integer.parseInt(request.getParameter("roomId"));
				// 将获取到的信息存储到实体类中
				RoomBean rb = new RoomBean(roomName, buildingId, unitNum, eApartment, buildArea, usingArea, face,
						extent, housetype, lease, roomId);
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = rbs.getUpdateRoomBean(rb);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
				// 删除功能
			} else if ("deleteRoomBean".equals(op)) {
				// 从页面中获取要用到的信息
				int roomId = Integer.parseInt(request.getParameter("roomId"));
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = rbs.getDeleteRoomBean(roomId);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
			}
		} else {
			request.getRequestDispatcher("back/login.jsp").forward(request, response);
		}
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
