package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.PayNoticeBean;
import com.feiyue.service.PayNoticeService;
import com.feiyue.service.impl.PayNoticeServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * 用于处理费用通知管理的servlet
 * 
 * @author 飞跃队
 *
 */
@WebServlet("/PayNoticeServlet")
public class PayNoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PayNoticeService pnsi = new PayNoticeServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PayNoticeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param request
	 * @param response
	 * doGet方法接收和处理页面发来的请求
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 设置响应和请求编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 设置返回的为json格式
		response.setContentType("application/json");
		// 设置op值为“”
		String op = "";
		// 如果传来的op值不为空 获取op值
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		// 得到session中的user对象
		Object obj = request.getSession().getAttribute("users");
		// obj不为空则
		if (obj != null) {
			//页面加载时得到数据库中的所有费用通知记录
			 if ("".equals(op)) {
				// 使用Gson对象
				Gson gson = new Gson();
				
				// 得到费用信息
				List<PayNoticeBean> list = pnsi.getPayNotice();

				MyData<PayNoticeBean> md = new MyData<PayNoticeBean>();

				md.setData(list);
				// 把list转为Gson
				String jsonStr = gson.toJson(md);
				// 创建out对象
				PrintWriter out = response.getWriter();
				// 输出jsonStr
				out.print(jsonStr);
				
				// 关闭
				out.close();
			}//页面加载时得到数据库中的所有费用通知记录 
			 else if ("load".equals(op)) {
				// 使用Gson对象
				Gson gson = new Gson();
				// 得到费用信息
				List<PayNoticeBean> list = pnsi.getPayNotice();

				// 把list转为Gson
				String jsonStr = gson.toJson(list);
				// 创建out对象
				PrintWriter out = response.getWriter();
				// 输出jsonStr
				out.print(jsonStr);
				
				// 关闭
				out.close();
			}
		} else {
			//obj为空就跳到登录界面
			request.getRequestDispatcher("back/login.jsp").forward(request, response);
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
