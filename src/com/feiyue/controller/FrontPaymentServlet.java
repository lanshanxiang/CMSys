package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.PaymentBean;
import com.feiyue.service.PaymentService;
import com.feiyue.service.impl.PaymentServiceImpl;
import com.feiyue.util.MyData;
import com.feiyue.util.PageData;
import com.google.gson.Gson;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/FrontPaymentServlet")
public class FrontPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PaymentService psi = new PaymentServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontPaymentServlet() {
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
		int page=1;
		int pageSize=5;
		if(null!=request.getParameter("page")) {
			page=Integer.parseInt(request.getParameter("page"));
		}
		if(null!=request.getParameter("pageSize")) {
			pageSize=Integer.parseInt(request.getParameter("pageSize"));
		}
		if ("load".equals(op)) {
			List<PaymentBean> list = psi.getPayment();
			PrintWriter out = response.getWriter();

			Gson gson = new Gson();
			out.println(gson.toJson(list));

			out.close();

		} else if ("myWater".equals(op)) {
			int tenementId = 5;
			double years = Double.parseDouble(request.getParameter("years"));
			double months = Double.parseDouble(request.getParameter("months"));
			// 使用Gson对象
			Gson gson = new Gson();
			// 得到费用信息
			PageData<PaymentBean> pdWater = psi.getFrontPayment(tenementId, years, months, page, pageSize);

			// 把list转为Gson
			String jsonStr = gson.toJson(pdWater.getData());
			// 创建out对象
			PrintWriter out = response.getWriter();
			// 输出jsonStr
			out.print(jsonStr+pdWater.getTotalPage());
			// 关闭
			out.close();
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
