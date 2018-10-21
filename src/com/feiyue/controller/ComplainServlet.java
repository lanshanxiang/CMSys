package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.ComplainBean;
import com.feiyue.service.ComplainService;
import com.feiyue.service.impl.ComplainServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * 用于处理投诉的servlet
 */
@WebServlet("/cs.do")
public class ComplainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ComplainService csi = new ComplainServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ComplainServlet() {
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
			if ("load".equals(op)) {
				List<ComplainBean> list = csi.getQueryComplain();
				PrintWriter out = response.getWriter();

				Gson gson = new Gson();
				out.println(gson.toJson(list));

				out.close();
				// 展示所有功能
			} else if ("".equals(op)) {
				// 调用service实现数据库的访问
				List<ComplainBean> list = csi.getQueryComplain();
				// Ajax来实现
				// 返回数据最好是json格式 外部的jar包 gson
				MyData<ComplainBean> md = new MyData<ComplainBean>();
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
				// 释放资源
				out.close();
				// 增加功能
			} else if ("addComplain".equals(op)) {
				// 从页面中获取要用到的信息
				String conplyName = request.getParameter("conplyName");
				String conplyQuestion = request.getParameter("conplyQuestion");
				String conplyTime = request.getParameter("conplyTime");
				String conplyPhone = request.getParameter("conplyPhone");
				int conplyStatus = Integer.parseInt(request.getParameter("conplyStatus"));
				String conplyRemark = request.getParameter("conplyRemark");
				// 将获取到的信息存储到实体类中
				ComplainBean c = new ComplainBean(conplyName, conplyQuestion, conplyTime, conplyPhone,
						conplyStatus, conplyRemark);
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = csi.getAddComplain(c);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
				// 修改功能
			} else if ("updateComplain".equals(op)) {
				// 从页面中获取要用到的信息
				String conplyName = request.getParameter("conplyName");
				String conplyQuestion = request.getParameter("conplyQuestion");
				String conplyTime = request.getParameter("conplyTime");
				String conplyPhone = request.getParameter("conplyPhone");
				int conplyStatus = Integer.parseInt(request.getParameter("conplyStatus"));
				String conplyRemark = request.getParameter("conplyRemark");
				int conplyId = Integer.parseInt(request.getParameter("conplyId"));
				// 将获取到的信息存储到实体类中
				ComplainBean c = new ComplainBean(conplyName, conplyQuestion, conplyTime, conplyPhone,
						conplyStatus, conplyRemark, conplyId);
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = csi.getUpdateComplain(c);
				// 在将返回值返回回页面
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
				// 删除功能
			} else if ("deleteComplain".equals(op)) {
				// 从页面中获取要用到的信息
				int conplyId = Integer.parseInt(request.getParameter("conplyId"));
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = csi.getDeleteComplain(conplyId);
				System.out.println(conplyId);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
			}else if("batchDelete".equals(op)) {
				//批量删除的SQL语句
				String sql="DELETE FROM tb_complain WHERE conplyId IN (";
				//获取批量ID
				String[] conplyId = request.getParameterValues("conplyId");
				PrintWriter out = response.getWriter();
				//循环拼接ID
				for (String string : conplyId) {
					sql+=string+",";
				}
				//最后的SQL语句
				sql=sql.substring(0,sql.lastIndexOf(","))+")";
				boolean flag = csi.getBatchDeleteComplain(sql);
				out.print(flag);
			}
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
