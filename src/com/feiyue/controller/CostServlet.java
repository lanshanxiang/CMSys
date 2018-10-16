package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.CostBean;
import com.feiyue.entiy.PaymentBean;
import com.feiyue.service.CostService;
import com.feiyue.service.PaymentService;
import com.feiyue.service.impl.CostServiceImpl;
import com.feiyue.service.impl.PaymentServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/CostServlet")
public class CostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CostService csi = new CostServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CostServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

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
				List<CostBean> list = csi.getCost();
				PrintWriter out = response.getWriter();

				Gson gson = new Gson();
				out.println(gson.toJson(list));

				out.close();

			} else if ("".equals(op)) {
				// 使用Gson对象
				Gson gson = new Gson();
				// 得到费用信息
				List<CostBean> list = csi.getCost();

				MyData<CostBean> md = new MyData<CostBean>();

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
				String costName = request.getParameter("costName");
				double unitPrice = Double.parseDouble(request.getParameter("unitPrice"));
				String remarks = request.getParameter("remarks");
				int ctId = Integer.parseInt(request.getParameter("ctId"));
				String munit = request.getParameter("munit");
				String extent = request.getParameter("extent");
				CostBean cost = new CostBean(costName, unitPrice, remarks, ctId, munit, extent);
				boolean flag = csi.addCost(cost);
				PrintWriter out = response.getWriter();
				if (flag) {
					out.print(true);
				} else {
					out.print(false);
				}

			} else if ("update".equals(op)) {
				int costId = Integer.parseInt(request.getParameter("costId"));
				String costName = request.getParameter("costName");
				double unitPrice = Double.parseDouble(request.getParameter("unitPrice"));
				String remarks = request.getParameter("remarks");
				int ctId = Integer.parseInt(request.getParameter("ctId"));
				String munit = request.getParameter("munit");
				String extent = request.getParameter("extent");
				CostBean cost = new CostBean(costId, costName, unitPrice, remarks, ctId, munit, extent);
				PrintWriter out = response.getWriter();
				boolean flag = csi.updateCost(cost);
				if (flag) {
					out.print(true);
				} else {
					out.print(false);
				}

			} else if ("del".equals(op)) {
				int costId = Integer.parseInt(request.getParameter("costId"));
				boolean flag = csi.deleteCost(costId);
				PrintWriter out = response.getWriter();
				if (flag) {
					out.print(true);
				} else {
					out.print(false);
				}

			}
		} else {
			request.getRequestDispatcher("back/login.jsp").forward(request, response);
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
