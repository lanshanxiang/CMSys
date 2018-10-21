package com.feiyue.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.LogBean;
import com.feiyue.service.LogBeanService;
import com.feiyue.service.impl.LogBeanServiceImpl;
import com.feiyue.util.PageData;

/**
 * Servlet implementation class LogBeanServlet
 */
@WebServlet("/LogBeanServlet")
public class LogBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LogBeanService lbs = new LogBeanServiceImpl();

	/**@author Administrator
	 * @see HttpServlet#HttpServlet()
	 */
	public LogBeanServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
@Override
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
			
			List<LogBean> list = lbs.getQueryLog();
			request.setAttribute("listLogNo", list);
			request.getRequestDispatcher("back/admin-list-log.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("back/login.jsp").forward(request, response);
		}
	}
@Override
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
