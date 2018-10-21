package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feiyue.entiy.LogBean;
import com.feiyue.entiy.ManagerBean;
import com.feiyue.entiy.TenementBean;
import com.feiyue.service.LogBeanService;
import com.feiyue.service.ManagerService;
import com.feiyue.service.impl.LogBeanServiceImpl;
import com.feiyue.service.impl.ManagerServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * Servlet implementation class ManagerServlet
 */
@WebServlet("/ManagerServlet")
public class ManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ManagerService msi = new ManagerServiceImpl();
    LogBeanService lbs=new LogBeanServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
@Override
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		String op = "";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
        if ("".equals(op)) {
		
			// Ajax来实现
			// 返回数据最好是json格式 外部的jar包 gson
			MyData<TenementBean> md = new MyData<TenementBean>();
			Gson gson = new Gson();
			String jsonString = gson.toJson(md);
			// 使用printWriter对象
			PrintWriter out = response.getWriter();
			out.print(jsonString);
			out.close();
		}else if("login".equals(op)) {
			// 通过response的方法得到一个jspwriter
			PrintWriter out = response.getWriter();
			// 用户登录
			// 先获取用户名和密码
			String mName = request.getParameter("mName");
			String mPwd = request.getParameter("mPwd");
			ManagerBean m = msi.login(mName, mPwd);
			if (m == null) {
				// 用户名或者密码错误
				out.print("false");
			} else {
				//1 登录成功，需要将用户登录的信息存储在session中.
				//HttpSession session=request.getSession();
				System.out.println(111);
				request.getSession().setAttribute("users", m);
				//将用户登录的信息存储在cookie
				Cookie  cookie =new Cookie("userName",m.getmName());
				Cookie  cookie1 =new Cookie("pwd",m.getmPwd());
				//使用response.addCookie
				response.addCookie(cookie);
				response.addCookie(cookie1);
				String logName=m.getmName();
				String logContent="登录飞跃社区管理系统";
				LogBean lb=new LogBean(logName, logContent);
				boolean flag=lbs.getAddLog(lb);
				out.print("true");
			}
		}else if("exit".equals(op)) {
			HttpSession session=request.getSession();
			session.removeAttribute("users");
			response.sendRedirect("back/login.jsp");
		}
	}
@Override
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
