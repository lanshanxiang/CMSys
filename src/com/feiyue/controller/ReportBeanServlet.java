package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.ReportBean;
import com.feiyue.entiy.TenementBean;
import com.feiyue.service.ReportBeanService;
import com.feiyue.service.impl.ReportBeanServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * 用于处理维修管理的servlet
 * 
 * @author 飞跃队
 *
 */
@WebServlet("/ReportBeanServlet")
public class ReportBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ReportBeanService rbs = new ReportBeanServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReportBeanServlet() {
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
		// TODO Auto-generated method stub
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
			//页面加载时得到数据库中的所有维修记录
			if ("load".equals(op)) {
				List<ReportBean> list = rbs.getQueryOnlyReportBean();
				PrintWriter out = response.getWriter();

				Gson gson = new Gson();
				out.println(gson.toJson(list));

				out.close();

			} // 展示所有功能
			else if ("".equals(op)) {
				// 调用service实现数据库的访问
				List<ReportBean> list = rbs.getQueryReportTenementBean();
				// Ajax来实现
				// 返回数据最好是json格式 外部的jar包 gson
				MyData<ReportBean> md = new MyData<ReportBean>();
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

			} // 查询已修理
			else if ("reportY".equals(op)) {
				// 调用service实现数据库的访问
				List<ReportBean> list = rbs.getQueryReportTenementBeanIsY();
				// Ajax来实现
				// 返回数据最好是json格式 外部的jar包 gson
				MyData<ReportBean> md = new MyData<ReportBean>();
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
				// 查询正在修理
			} else if ("reportYN".equals(op)) {
				// 调用service实现数据库的访问
				List<ReportBean> list = rbs.getQueryReportTenementBeanIsYN();
				// Ajax来实现
				// 返回数据最好是json格式 外部的jar包 gson
				MyData<ReportBean> md = new MyData<ReportBean>();
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
				// 查询修理失败
			} else if ("reportN".equals(op)) {
				// 调用service实现数据库的访问
				List<ReportBean> list = rbs.getQueryReportTenementBeanIsN();
				// Ajax来实现
				// 返回数据最好是json格式 外部的jar包 gson
				MyData<ReportBean> md = new MyData<ReportBean>();
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
			}
			// 增加新的维修记录
			else if ("addReportBean".equals(op)) {
				// 从页面中获取要用到的信息
				String equipment = request.getParameter("equipment");
				int tenementId = Integer.parseInt(request.getParameter("tenementId"));
				String reportName = request.getParameter("reportName");
				String reportTime = request.getParameter("reportTime");
				String extent = request.getParameter("extent");
				// 将获取到的信息存储到实体类中
				ReportBean rb = new ReportBean(equipment, tenementId, reportName, reportTime, extent);
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = rbs.getAddReportBean(rb);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();

			} // 修改维修记录的信息
			else if ("updateReportBean".equals(op)) {
				// 从页面中获取要用到的信息
				String equipment = request.getParameter("equipment");
				int tenementId = Integer.parseInt(request.getParameter("tenementId"));
				String reportName = request.getParameter("reportName");
				String reportTime = request.getParameter("reportTime");
				int isReport = Integer.parseInt(request.getParameter("isReport"));
				String extent = request.getParameter("extent");
				int reportId = Integer.parseInt(request.getParameter("reportId"));
				// 将获取到的信息存储到实体类中
				ReportBean rb = new ReportBean(equipment, tenementId, reportName, reportTime, isReport, extent,
						reportId);
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = rbs.getUpdateReportBean(rb);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();

			} // 删除一条记录
			else if ("deleteReportBean".equals(op)) {
				// 从页面中获取要用到的信息
				int reportId = Integer.parseInt(request.getParameter("reportId"));
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = rbs.getDeleteReportBean(reportId);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
			} // 得到所有住户信息
			else if ("queryTenementBean".equals(op)) {
				List<TenementBean> list = rbs.getQueryOnlyTenementBean();
				PrintWriter out = response.getWriter();

				Gson gson = new Gson();
				out.println(gson.toJson(list));

				out.close();
			} // 修改状态是否已维修
			else if ("updateIsReport".equals(op)) {
				int isReport = Integer.parseInt(request.getParameter("isReport"));
				int reportId = Integer.parseInt(request.getParameter("reportId"));
				boolean flag = rbs.getUpdateReportBeanByIsReport(isReport, reportId);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
			} // 批量删除数据
			else if ("batchDelete".equals(op)) {
				// 批量删除的SQL语句
				String sql = "DELETE FROM tb_report WHERE reportId IN (";
				// 获取批量ID
				String[] reportId = request.getParameterValues("reportId");
				PrintWriter out = response.getWriter();
				// 循环拼接ID
				for (String string : reportId) {
					sql += string + ",";
				}
				// 最后的SQL语句
				sql = sql.substring(0, sql.lastIndexOf(",")) + ")";
				boolean flag = rbs.getBatchDeleteReportBean(sql);
				out.print(flag);
			}
		} else {// obj对象为空则跳到登录界面
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
