package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.CostTypeBean;
import com.feiyue.service.CostTypeService;
import com.feiyue.service.impl.CostTypeServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * @author Administrator
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/CostTypeServlet")
public class CostTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CostTypeService ctsi = new CostTypeServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CostTypeServlet() {
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		String op = "";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		Object obj = request.getSession().getAttribute("users");
		if (obj != null) {
			if ("load".equals(op)) {
				List<CostTypeBean> list = ctsi.getCostType();
				PrintWriter out = response.getWriter();

				Gson gson = new Gson();
				out.println(gson.toJson(list));

				out.close();

			} else if ("".equals(op)) {
				// 使用Gson对象
				Gson gson = new Gson();
				// 得到费用信息
				List<CostTypeBean> list = ctsi.getCostType();

				MyData<CostTypeBean> md = new MyData<CostTypeBean>();

				md.setData(list);
				// 把list转为Gson
				String jsonStr = gson.toJson(md);
				// 创建out对象
				PrintWriter out = response.getWriter();
				// 输出jsonStr
				out.print(jsonStr);
				System.out.println("[jsonStr]:" + jsonStr);
				// 关闭
				out.close();
			} else if ("add".equals(op)) {
				String ctName = request.getParameter("ctName");
				String extent = request.getParameter("extent");
				CostTypeBean costType = new CostTypeBean(ctName, extent);
				boolean flag = ctsi.addCostType(costType);
				PrintWriter out = response.getWriter();
				if (flag) {
					out.print(true);
				} else {
					out.print(false);
				}

			} else if ("update".equals(op)) {
				int ctId = Integer.parseInt(request.getParameter("ctId"));
				String ctName = request.getParameter("ctName");
				String extent = request.getParameter("extent");
				CostTypeBean costType = new CostTypeBean(ctId, ctName, extent);
				PrintWriter out = response.getWriter();
				boolean flag = ctsi.updateCostType(costType);
				if (flag) {
					out.print(true);
				} else {
					out.print(false);
				}

			} else if ("del".equals(op)) {
				int ctId = Integer.parseInt(request.getParameter("ctId"));
				boolean flag = ctsi.deleteCostType(ctId);
				PrintWriter out = response.getWriter();
				if (flag) {
					out.print(true);
				} else {
					out.print(false);
				}

			}else if("batchDelete".equals(op)) {
				//批量删除的SQL语句
				String sql="DELETE FROM tb_costtype WHERE ctId IN (";
				//获取批量ID
				String[] ctId = request.getParameterValues("ctId");
				PrintWriter out = response.getWriter();
				//循环拼接ID
				for (String string : ctId) {
					sql+=string+",";
				}
				//最后的SQL语句
				sql=sql.substring(0,sql.lastIndexOf(","))+")";
				boolean flag = ctsi.getBatchDeleteCostType(sql);
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
