package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feiyue.entiy.LogBean;
import com.feiyue.entiy.UserBean;
import com.feiyue.service.LogBeanService;
import com.feiyue.service.UserBeanService;
import com.feiyue.service.impl.LogBeanServiceImpl;
import com.feiyue.service.impl.UserBeanServiceImpl;
import com.feiyue.util.MD5Util;
import com.feiyue.util.MessageSend;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 *  UserBeanServlet类处理与用户有关的操作
 *  @author 李友惠
 */
@WebServlet("/UserBeanServlet")
public class UserBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//创建UserBeanServiceImpl对象，得到各种处理用户的方法
    UserBeanService ubs=new UserBeanServiceImpl();
    LogBeanService lbs=new LogBeanServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserBeanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @param  request
	 * @param response
	 * doGet方法接收和处理页面发来的请求
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//设置响应和请求编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		//创建String 对象op 接收操作类型
		String op = "";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		 if("".equals(op)) {
			//设置返回的为json格式
			 response.setContentType("application/json");
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
			
            //释放资源
			out.close();
		//用户登录
		}else if("login".equals(op)) {
			//从页面中获取用户名和密码
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			//密码加密
			String userPwd=MD5Util.getEncodeByMd5(password);
			UserBean user=null;
			//得到数据库中存在满足条件的用户
			user=ubs.getLogin(username, userPwd);

			PrintWriter out = response.getWriter();
			//设置flag的值为false
			boolean flag=false;
			if(user!=null) {
				//登录验证成功 设置session存放相关user对象信息
				request.getSession().setAttribute("user", user);
				String logName=user.getUserName();
				String logContent="登录飞跃社区服务中心";
				LogBean lb=new LogBean(logName, logContent);
				boolean flag1=lbs.getAddLog(lb);
				//flag为 true
				flag=true;
			}
			//返回页面 flag
			out.print(flag);
		//修改用户信息
		}else if("updateUser".equals(op)) {
			//得到修改后的用户信息
			int userId=Integer.parseInt(request.getParameter("userId"));
			String userName=request.getParameter("userName");
			String userSex=request.getParameter("userSex");
			int userAge=Integer.parseInt(request.getParameter("userAge"));
			int tenementId=Integer.parseInt(request.getParameter("tenementId"));
			String question=request.getParameter("question");
			String answer=request.getParameter("answer");
			int state=Integer.parseInt(request.getParameter("state"));
			//创建userBean对象存放得到的信息
			UserBean ub=new UserBean(userId, userName, userSex, userAge, question, answer, state, tenementId);
			//修改数据库中对应记录的数据
			boolean flag=ubs.getUpdateUser(ub);
			//返回给页面修改结果
			PrintWriter out = response.getWriter();
			out.print(flag);
		//停用或启用用户
		}
		//用户注册
		else if("register".equals(op)) {
			//得到用户输入的账号
			String register=request.getParameter("register");
			//得到用户输入的密码加密
			String userPwd=MD5Util.getEncodeByMd5(request.getParameter("password"));
			
			UserBean ub=new UserBean(userPwd, register);
			//调用往数据库中插入数据的方法
			boolean flag=ubs.addUser(ub);
			PrintWriter out = response.getWriter();
			//返回给页面是否注册成功
				out.print(flag);
				
		
		}
		//管理员添加用户
		else if("addUser".equals(op)) {
			
			//得到页面传来的数据
			String register=request.getParameter("register");
			String userName=request.getParameter("userName");
			String userPwd=MD5Util.getEncodeByMd5(request.getParameter("userPwd"));
			String userSex=request.getParameter("userSex");
			int userAge=0;
			int tenementId=0;
			if(!request.getParameter("userAge").isEmpty()) {
				userAge=Integer.parseInt(request.getParameter("userAge"));
			}
			if(!request.getParameter("tenementId").isEmpty()) {
				tenementId=Integer.parseInt(request.getParameter("tenementId"));
			}
			

			String question=request.getParameter("question");
			String answer=request.getParameter("answer");
			int state=0;
			
			
			UserBean ub=new UserBean(userName, userPwd, userSex, userAge, register, question, answer, state, tenementId);
			//调用往数据库中插入数据的方法
			boolean flag=ubs.addUserByAdmin(ub);
			PrintWriter out = response.getWriter();
			//返回给页面是否添加成功
			out.print(flag);
			
			
		}
		//用户忘记密码时修改密码
		else if("updatePwd".equals(op)) {
			UserBean user=null;
			PrintWriter out = response.getWriter();
			//得到账号
			String register=request.getParameter("register");
			//得到新密码加密
			String newPwd=MD5Util.getEncodeByMd5(request.getParameter("password"));
			//修改数据库中制定数据的密码
			out.print(ubs.updatePwd(register, newPwd));
	
			
		}//管理员通过userID重置用户密码
		else if("resetPwd".equals(op)) {
			PrintWriter out = response.getWriter();
			int userId=Integer.valueOf(request.getParameter("userId"));
			//将指定账号的用户密码重置为123456
			String userPwd=MD5Util.getEncodeByMd5("123456");
			out.print(ubs.resetPwd(userId, userPwd));
	
		}
		//修改用户状态为停用
		else if("stopStartUser".equals(op)) {
			int state=Integer.parseInt(request.getParameter("state"));
			int userId=Integer.parseInt(request.getParameter("userId"));
			boolean flag=ubs.getStopUser(state, userId);
			PrintWriter out = response.getWriter();
			out.print(flag);
			
		//删除
		}else if("deleteUserBean".equals(op)) {
			int userId=Integer.parseInt(request.getParameter("userId"));
			
			boolean flag=ubs.getDeleteUser(userId);
			PrintWriter out = response.getWriter();
			out.print(flag);
		}//批量删除用户
		else if("deleteUserBeans".equals(op)) {
			
			String[] userId = request.getParameterValues("userId");
			PrintWriter out = response.getWriter();
			
			boolean flag = ubs.deleteUsers(userId);
			out.print(flag);
		}
	
		//判断指定账号是否存在
		else if("isHaveUser".equals(op)) {
			UserBean user=null;
			//得到传来的账号
			String register=request.getParameter("register");
			//调用方法得到指定账号的信息 user对象
			user=ubs.getUserByRegister(register);
			PrintWriter out = response.getWriter();
			
			if(user!=null) {
			//user不为空 表示该用户存在 返回true
				out.print(true);
			}else {
			//user为空 表示该用户不存在 返回false
				out.print(false);
			}
			
		}
		//得到指定账号的密保问题
		else if("getCode".equals(op)) {
			PrintWriter out = response.getWriter();
			String tel=request.getParameter("tel");
			StringBuilder codestr=MessageSend.getTel(tel);
			
				out.print(codestr);
			
			
		}else if("exit".equals(op)) {
			//将session中的值设置为null
			HttpSession session=request.getSession();
			session.removeAttribute("user");
			response.sendRedirect("index.jsp");
		}
	}

	/**
	 * @param request
	 * @param response
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	

}
