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
import com.google.gson.Gson;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private PaymentService psi=new PaymentServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		String op = "";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		if ("load".equals(op)) {
			List<PaymentBean> list=psi.getPayment();
			PrintWriter out = response.getWriter();

			Gson gson = new Gson();
			out.println(gson.toJson(list));

			out.close();

		} else if("".equals(op)) {
			//使用Gson对象
			Gson gson=new Gson();
			//得到费用信息
			List<PaymentBean> list=psi.getPayment();
			
			MyData<PaymentBean> md = new MyData<PaymentBean>();

			md.setData(list);
			//把list转为Gson
			String jsonStr=gson.toJson(md);
			//创建out对象
			PrintWriter out =response.getWriter();
			//输出jsonStr
			out.print(jsonStr);
			System.out.println("[jsonStr]:"+jsonStr);
			//关闭
			out.close();
		}else if("add".equals(op)) {
			int tenementId = Integer.parseInt(request.getParameter("tenementId"));
			String years = request.getParameter("years");
			String months = request.getParameter("months");
			double lastHalf = Double.parseDouble(request.getParameter("lastHalf"));
			double thisMonth = Double.parseDouble(request.getParameter("thisMonth"));
			int costId = Integer.parseInt(request.getParameter("costId"));
			double quantity = Double.parseDouble(request.getParameter("quantity"));
			double payable = Double.parseDouble(request.getParameter("payable"));
			double practical = Double.parseDouble(request.getParameter("practical"));
			String payDate = request.getParameter("payDate");
			String extent = request.getParameter("extent");
			PaymentBean payment=new PaymentBean(tenementId, years, months, lastHalf, thisMonth, costId, quantity, payable, practical, payDate, extent);
			boolean flag=psi.addPayment(payment);
			PrintWriter out =response.getWriter();
			if(flag) {
				out.print(true);
			}else {
				out.print(false);
			}
			
			
			
		}else if("update".equals(op)) {
			int payId = Integer.parseInt(request.getParameter("payId"));
			int tenementId = Integer.parseInt(request.getParameter("tenementId"));
			String years = request.getParameter("years");
			String months = request.getParameter("months");
			double lastHalf = Double.parseDouble(request.getParameter("lastHalf"));
			double thisMonth = Double.parseDouble(request.getParameter("thisMonth"));
			int costId = Integer.parseInt(request.getParameter("costId"));
			double quantity = Double.parseDouble(request.getParameter("quantity"));
			double payable = Double.parseDouble(request.getParameter("payable"));
			double practical = Double.parseDouble(request.getParameter("practical"));
			String payDate = request.getParameter("payDate");
			String extent = request.getParameter("extent");
			PaymentBean payment =new PaymentBean(payId, tenementId, years, months, lastHalf, thisMonth, costId, quantity, payable, practical, payDate, extent);
			PrintWriter out =response.getWriter();
			boolean flag=psi.updatePayment(payment);
			if(flag) {
				out.print(true);
			}else {
				out.print(false);
			}
			
			
			
		}else if("del".equals(op)) {
			int payId=Integer.parseInt(request.getParameter("payId"));
			boolean flag=psi.deletePayment(payId);
			PrintWriter out =response.getWriter();
			if(flag) {
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
