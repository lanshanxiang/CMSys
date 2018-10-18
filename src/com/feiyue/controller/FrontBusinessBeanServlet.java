package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.BusinessBean;
import com.feiyue.entiy.ReportBean;
import com.feiyue.entiy.RoomBean;
import com.feiyue.entiy.TenementBean;
import com.feiyue.service.BusinessBeanService;
import com.feiyue.service.impl.BusinessBeanServiceImpl;
import com.feiyue.util.MyData;
import com.feiyue.util.PageData;
import com.google.gson.Gson;

/**
 * Servlet implementation class BusinessBeanServlet
 */
@WebServlet("/FrontBusinessBeanServlet")
public class FrontBusinessBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BusinessBeanService bbs = new BusinessBeanServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontBusinessBeanServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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
		int pageSize = 3;
		if (null != request.getParameter("page")) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		if (null != request.getParameter("pageSize")) {
			pageSize = Integer.parseInt(request.getParameter("pageSize"));
		}
		// 查询所有！ 流加载
		if ("".equals(op)) {
			PageData<BusinessBean> listBusinessBean = bbs.getSelectAllBusinessBean(page, pageSize);
			// 将查询到的返回值存起来
			request.setAttribute("listBusinessBean", listBusinessBean);
			// 创建一个Gson对象
			Gson gs = new Gson();
			// 通过Gson对象的tojson方法将pd.getData（）转成字符串
			String str = gs.toJson(listBusinessBean.getData());
			// 将字符组传到页面
			response.getWriter().print(str + listBusinessBean.getTotalPage());
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
