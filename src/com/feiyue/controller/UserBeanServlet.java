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
		 if("".equals(op)) {
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
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String userPwd=MD5Util.getEncodeByMd5(password);
			UserBean user=null;
			user=ubs.getLogin(username, userPwd);
			
			request.getSession().setAttribute("user", user);
			PrintWriter out = response.getWriter();
			boolean flag=false;
			if(user!=null) {
				flag=true;
			}
			out.print(flag);
		//修改
		}else if("updateUser".equals(op)) {
			/*String userName=request.getParameter("userName");
			String userPwdNo=request.getParameter("userPwd");
			String userPwd=MD5Util.getEncodeByMd5(userPwdNo);
			String question=request.getParameter("question");
			String answer=request.getParameter("answer");
			int userId=Integer.parseInt(request.getParameter("userId"));
			UserBean ub=new UserBean(userName, userPwd, question, answer, userId);
			boolean flag=ubs.getUpdateUser(ub);
			PrintWriter out = response.getWriter();
			out.print(flag);*/
		//停用或启用用户
		}
		//用户注册
		else if("register".equals(op)) {
			System.out.println(11111);
			
			String register="";
			String userPwd=MD5Util.getEncodeByMd5(request.getParameter("password"));
			String question=request.getParameter("question");
			String answer=request.getParameter("answer");
			
			//生成一个账号，判断该账号是否已被注册，如果被注册过了，则重新生成
			do {
				register="";
				for(int i=0;i<10;i++ ) {

					register += (int)(10*(Math.random()));

			      }
			}while(ubs.isHaveUserByRegister(register)==true);
			System.out.println(register);
			UserBean ub=new UserBean(userPwd, register, question, answer);
			boolean flag=ubs.addUser(ub);
			PrintWriter out = response.getWriter();
			out.print(flag);
			
			
		}
		//管理员添加用户
				else if("addUser".equals(op)) {
					System.out.println(11111);
					
					String register="";
					String userPwd=MD5Util.getEncodeByMd5(request.getParameter("password"));
					String userSex=request.getParameter("userSex");
					String userAge=request.getParameter("userAge");
					String question=request.getParameter("question");
					String answer=request.getParameter("answer");
					
					//生成一个账号，判断该账号是否已被注册，如果被注册过了，则重新生成
					do {
						register="";
						for(int i=0;i<10;i++ ) {

							register += (int)(10*(Math.random()));

					      }
					}while(ubs.isHaveUserByRegister(register)==true);
					System.out.println(register);
					UserBean ub=new UserBean(userPwd, register, question, answer);
					boolean flag=ubs.addUser(ub);
					PrintWriter out = response.getWriter();
					out.print(flag);
					
					
				}
		//修改用户密码
		else if("updatePwd".equals(op)) {
			UserBean user=null;
			PrintWriter out = response.getWriter();
			String register=request.getParameter("register");
			String answer=request.getParameter("answer");
			String newPwd=MD5Util.getEncodeByMd5(request.getParameter("password"));
			user=ubs.getUserByRegister(register);
			if(user!=null) {
				if(user.getAnswer().equals(answer)) {
					out.print(ubs.updatePwd(register, newPwd));
				}
				
			}else {
				out.print(false);
			}
			
			
			
		}
		
		else if("stopStartUser".equals(op)) {
			int state=Integer.parseInt(request.getParameter("state"));
			int userId=Integer.parseInt(request.getParameter("userId"));
			boolean flag=ubs.getStopUser(state, userId);
			PrintWriter out = response.getWriter();
			out.print(flag);
			
		//删除
		}else if("deleteUserBean".equals(op)) {
			int userId=Integer.parseInt(request.getParameter("userId"));
			System.out.println("delete");
			boolean flag=ubs.getDeleteUser(userId);
			PrintWriter out = response.getWriter();
			out.print(flag);
		}
		//得到指定账号的密保问题
		else if("getQuestion".equals(op)) {
			UserBean user=null;
			String register=request.getParameter("register");
			System.out.println(register);
			user=ubs.getUserByRegister(register);
			PrintWriter out = response.getWriter();
			if(user!=null) {
				System.out.println(user.getQuestion());
				//out.print(user.getQuestion());
				out.print(true);
			}else {
				out.print(false);
			}
			
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
