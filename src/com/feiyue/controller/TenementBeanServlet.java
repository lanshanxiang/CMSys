package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.TenementBean;
import com.feiyue.service.TenementBeanService;
import com.feiyue.service.impl.TenementBeanServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * 用于处理住户管理模块的servlet
 * 
 * @author 飞跃队
 *
 */
@WebServlet("/TenementBeanServlet")
public class TenementBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// 创建TenementBeanServiceImpl对象，得到各种处理住户的方法
	private TenementBeanService tbs = new TenementBeanServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TenementBeanServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param request
	 * @param response
	 *            doGet方法接收和处理页面发来的请求
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 设置响应和请求编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 设置返回的为json格式
		response.setContentType("application/json");
		// 创建String 对象op 接收操作类型
		String op = "";
		// 如果传来的op值不为空 获取op值
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		// 得到session中的user对象
		Object obj = request.getSession().getAttribute("users");
		// obj不为空则
		if (obj != null) {
			//页面加载时请求的处理
			if ("load".equals(op)) {
				//得到数据库中的住户信息
				List<TenementBean> list = tbs.getTenementBean();
				PrintWriter out = response.getWriter();
				//将得到的小区信息转换为json对象返回给请求的页面
				Gson gson = new Gson();
				out.println(gson.toJson(list));
				out.close();

			}
			// 展示所有功能
			else if ("".equals(op)) {
				// 调用service实现数据库的访问
				List<TenementBean> list = tbs.getTenementBean();
				// Ajax来实现
				
				MyData<TenementBean> md = new MyData<TenementBean>();
				// 将list存入到MyData中
				md.setData(list);

				Gson gson = new Gson();
				String jsonString = gson.toJson(md);

				// 使用printWriter对象
				PrintWriter out = response.getWriter();
				// 返回数据是json格式 的字符串
				out.print(jsonString);
				
				out.close();
			} //添加新用户
			else if ("register".equals(op)) {
				//得到页面输入的信息
				String tenementName = request.getParameter("tenementName");
				String sex = request.getParameter("sex");
				String aunit = request.getParameter("aunit");
				String idCard = request.getParameter("idCard");
				String mobilePhone = request.getParameter("mobilePhone");
				String email = request.getParameter("email");
				String areStay = request.getParameter("areStay");
				String nationality = request.getParameter("nationality");
				String homeAddress = request.getParameter("homeAddress");
				String residenceType = request.getParameter("residenceType");
				String maritalStatus = request.getParameter("maritalStatus");
				// int userId = Integer.parseInt(request.getParameter("userId"));
				String remark = request.getParameter("remark");
				TenementBean tb = new TenementBean(tenementName, sex, aunit, idCard, mobilePhone, email, areStay,
						nationality, homeAddress, residenceType, maritalStatus, 2, remark);
				//添加新数据到数据库
				boolean flag = tbs.getInsertTenementBean(tb);
				PrintWriter out = response.getWriter();
				//返回Boolean值
				out.print(flag);
				out.close();
			}
			//修改住户信息 
			else if ("update".equals(op)) {
				//得到页面传来修改够的信息
				String tenementName = request.getParameter("tenementName");
				String sex = request.getParameter("sex");
				String aunit = request.getParameter("aunit");
				String idCard = request.getParameter("idCard");
				String mobilePhone = request.getParameter("mobilePhone");
				String email = request.getParameter("email");
				String areStay = request.getParameter("areStay");
				String nationality = request.getParameter("nationality");
				String homeAddress = request.getParameter("homeAddress");
				String residenceType = request.getParameter("residenceType");
				String maritalStatus = request.getParameter("maritalStatus");
				// int userId = Integer.parseInt(request.getParameter("userId"));
				String remark = request.getParameter("remark");
				int tenementId = Integer.parseInt(request.getParameter("tenementId"));
				TenementBean tb = new TenementBean(tenementName, sex, aunit, idCard, mobilePhone, email, areStay,
						nationality, homeAddress, residenceType, maritalStatus, 2, remark, tenementId);
				//修改数据库中的数据
				boolean flag = tbs.updateTenementBean(tb);
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
			} //删除住户
			else if ("deleteTenement".equals(op)) {
				String tenementId = request.getParameter("tenementId");
				boolean flag = tbs.getDeleteTenementBean(Integer.valueOf(tenementId));
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
			}//得到状态为已审核的住户 
			else if ("queryIsY".equals(op)) {
				List<TenementBean> list = tbs.getQueryTenementBeanByIsY();
				// Ajax来实现
				// 返回数据最好是json格式 外部的jar包 gson
				MyData<TenementBean> md = new MyData<TenementBean>();

				md.setData(list);

				Gson gson = new Gson();
				String jsonString = gson.toJson(md);

				// 使用printWriter对象
				PrintWriter out = response.getWriter();

				out.print(jsonString);
				

				out.close();
			} //得到状态为未审核的住户
			else if ("queryIsYN".equals(op)) {
				System.out.println(111);
				List<TenementBean> list = tbs.getQueryTenementBeanByIsYN();
				// Ajax来实现
				// 返回数据最好是json格式 外部的jar包 gson
				MyData<TenementBean> md = new MyData<TenementBean>();

				md.setData(list);

				Gson gson = new Gson();
				String jsonString = gson.toJson(md);

				// 使用printWriter对象
				PrintWriter out = response.getWriter();

				out.print(jsonString);
				

				out.close();
			}//得到状态为审核失败的住户 
			else if ("queryIsN".equals(op)) {
				List<TenementBean> list = tbs.getQueryTenementBeanByIsN();
				// Ajax来实现
				// 返回数据最好是json格式 外部的jar包 gson
				MyData<TenementBean> md = new MyData<TenementBean>();

				md.setData(list);

				Gson gson = new Gson();
				String jsonString = gson.toJson(md);

				// 使用printWriter对象
				PrintWriter out = response.getWriter();

				out.print(jsonString);
			

				out.close();
			}//得到状态为已迁入的用户列表
			else if ("queryIsYR".equals(op)) {
				List<TenementBean> list = tbs.getQueryTenementBeanByIsYR();
				// Ajax来实现
				// 返回数据最好是json格式 外部的jar包 gson
				MyData<TenementBean> md = new MyData<TenementBean>();

				md.setData(list);

				Gson gson = new Gson();
				String jsonString = gson.toJson(md);

				// 使用printWriter对象
				PrintWriter out = response.getWriter();

				out.print(jsonString);

				out.close();
			}
			// 更新住户状态
			else if ("updateStatus".equals(op)) {
				// 得到页面传来的状态值和住户ID
				int status = Integer.parseInt(request.getParameter("status"));
				int tenementId = Integer.parseInt(request.getParameter("tenementId"));
				// 与数据库交互，修改指定数据返回boolean值
				boolean flag = tbs.updateTenementBeanByStatus(status, tenementId);
				PrintWriter out = response.getWriter();

				out.print(flag);
				out.close();
			}
			// 批量删除多条住户数据
			else if ("batchDelete".equals(op)) {
				// 批量删除的SQL语句
				String sql = "DELETE FROM tb_tenement WHERE tenementId IN (";
				// 获取批量ID
				String[] tenementId = request.getParameterValues("tenementId");
				PrintWriter out = response.getWriter();
				// 循环拼接ID
				for (String string : tenementId) {
					sql += string + ",";
				}
				// 最后的SQL语句
				sql = sql.substring(0, sql.lastIndexOf(",")) + ")";
				boolean flag = tbs.getBatchDeleteTenementBean(sql);
				out.print(flag);
			}
			// obj对象为空则跳到登录界面
		} else {
			request.getRequestDispatcher("back/login.jsp").forward(request, response);
		}
	}

	/**
	 * @param request
	 * @param response
	 * doPost方法接收和处理页面发来的请求
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
