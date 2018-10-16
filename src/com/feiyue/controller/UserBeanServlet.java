package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.feiyue.entiy.UserBean;
import com.feiyue.service.UserBeanService;
import com.feiyue.service.impl.UserBeanServiceImpl;
import com.feiyue.util.MD5Util;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * Servlet implementation class UserBeanServlet
 */
@WebServlet("/UserBeanServlet")
public class UserBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    UserBeanService ubs=new UserBeanServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserBeanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//设置响应和请求编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//设置返回的为json格式
		response.setContentType("application/json");
		//获取op
		String op = "";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		if("load".equals(op)) {
			//调用service实现数据库的访问
			List<UserBean> list = ubs.getQueryUser();
			//创建一个Gson实体
			System.out.println(list);
			Gson gson = new Gson();
			// 使用printWriter对象
			
			PrintWriter out = response.getWriter();
            //将jsonString返回到页面
			out.print(gson.toJson(list));
            //释放资源
			out.close();
		}else if("".equals(op)) {
			//调用service实现数据库的访问
			List<UserBean> list = ubs.getQueryUser();
			// Ajax来实现
			// 返回数据最好是json格式 外部的jar包 gson
			MyData<UserBean> md = new MyData<UserBean>();
            //将list存入到MyData中
			md.setData(list);
            //创建一个Gson实体
			Gson gson = new Gson();
			//将MyData格式转化成字符串
			String jsonString = gson.toJson(md);
			// 使用printWriter对象
			PrintWriter out = response.getWriter();
            //将jsonString返回到页面
			out.print(jsonString);
			System.out.println(jsonString);
            //释放资源
			out.close();
		//登录
		}else if("login".equals(op)) {
			//从页面中获取用户名和密码
			String register=request.getParameter("register");
			String userPwdNo=request.getParameter("userPwd");
			String userPwd=MD5Util.getEncodeByMd5(userPwdNo);
			UserBean user=ubs.getLogin(register, userPwd);
			request.getSession().setAttribute("user", user);
			PrintWriter out = response.getWriter();
			out.print(user);
		//修改
		}else if("updateUser".equals(op)) {
			String userName=request.getParameter("userName");
			String userPwdNo=request.getParameter("userPwd");
			String userPwd=MD5Util.getEncodeByMd5(userPwdNo);
			String question=request.getParameter("question");
			String answer=request.getParameter("answer");
			int userId=Integer.parseInt(request.getParameter("userId"));
			UserBean ub=new UserBean(userName, userPwd, question, answer, userId);
			boolean flag=ubs.getUpdateUser(ub);
			PrintWriter out = response.getWriter();
			out.print(flag);
		//停用或启用用户
		}else if("stopStartUser".equals(op)) {
			int state=Integer.parseInt(request.getParameter("state"));
			int userId=Integer.parseInt(request.getParameter("userId"));
			boolean flag=ubs.getStopUser(state, userId);
			PrintWriter out = response.getWriter();
			out.print(flag);
		//删除
		}else if("delete".equals(op)) {
			int userId=Integer.parseInt(request.getParameter("userId"));
			boolean flag=ubs.getDeleteUser(userId);
			PrintWriter out = response.getWriter();
			out.print(flag);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
