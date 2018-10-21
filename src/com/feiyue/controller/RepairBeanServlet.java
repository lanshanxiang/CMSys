package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.RepairBean;
import com.feiyue.entiy.ReportBean;
import com.feiyue.entiy.TenementBean;
import com.feiyue.service.RepairBeanService;
import com.feiyue.service.impl.RepairBeanServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * 用于处理报修管理的servlet
 * 
 * @author 飞跃队
 *
 */
@WebServlet("/RepairBeanServlet")
public class RepairBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RepairBeanService rbs = new RepairBeanServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RepairBeanServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param request
	 * @param response
	 *  doGet方法接收和处理页面发来的请求
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
			//页面加载时得到数据库中的所有报修记录
			if ("load".equals(op)) {
				List<RepairBean> list = rbs.getQueryOnlyRepairBean();
				PrintWriter out = response.getWriter();

				Gson gson = new Gson();
				out.println(gson.toJson(list));

				out.close();
				// 展示所有功能
			} else if ("".equals(op)) {
				// 调用service实现数据库的访问
				List<RepairBean> list = rbs.getQueryReportRepairBean();
				// Ajax来实现
				// 返回数据最好是json格式 外部的jar包 gson
				MyData<RepairBean> md = new MyData<RepairBean>();
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
				// 查询已修理
			} // 增加功能
			else if ("addRepairBean".equals(op)) {
				// 从页面中获取要用到的信息
				int reportId = Integer.parseInt(request.getParameter("reportId"));
				String injureReason = request.getParameter("injureReason");
				String repairUnit = request.getParameter("repairUnit");
				String repairTime = request.getParameter("repairTime");
				String prid = request.getParameter("prid");
				double payment = Double.parseDouble(request.getParameter("payment"));
				String extent = request.getParameter("extent");
				// 将获取到的信息存储到实体类中
				RepairBean rb = new RepairBean(reportId, injureReason, repairUnit, repairTime, prid, payment, extent);
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = rbs.getAddRepairBean(rb);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
				// 修改功能
			} else if ("updateRepairBean".equals(op)) {
				// 从页面中获取要用到的信息
				int reportId = Integer.parseInt(request.getParameter("reportId"));
				String injureReason = request.getParameter("injureReason");
				String repairUnit = request.getParameter("repairUnit");
				String repairTime = request.getParameter("repairTime");
				String prid = request.getParameter("prid");
				double payment = Double.parseDouble(request.getParameter("payment"));
				String extent = request.getParameter("extent");
				int repairId = Integer.parseInt(request.getParameter("repairId"));
				// 将获取到的信息存储到实体类中
				RepairBean rb = new RepairBean(reportId, injureReason, repairUnit, repairTime, prid, payment, extent,
						repairId);
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = rbs.getUpdateRepairBean(rb);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
				// 删除功能
			} else if ("deleteRepairBean".equals(op)) {
				// 从页面中获取要用到的信息
				int repairId = Integer.parseInt(request.getParameter("repairId"));
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = rbs.getDeleteRepairBean(repairId);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
			} else if ("batchDelete".equals(op)) {
				// 批量删除的SQL语句
				String sql = "DELETE FROM tb_repair WHERE repairId IN (";
				// 获取批量ID
				String[] repairId = request.getParameterValues("repairId");
				PrintWriter out = response.getWriter();
				// 循环拼接ID
				for (String string : repairId) {
					sql += string + ",";
				}
				// 最后的SQL语句
				sql = sql.substring(0, sql.lastIndexOf(",")) + ")";
				boolean flag = rbs.getBatchDeleteRepairBean(sql);
				out.print(flag);
			}
		} else {
			request.getRequestDispatcher("back/login.jsp").forward(request, response);
		}
	}

	/**
	 * @param request
	 * @param response
	 *  doGet方法接收和处理页面发来的请求
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
