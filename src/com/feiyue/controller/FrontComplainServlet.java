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
import com.feiyue.entiy.PaymentBean;
import com.feiyue.service.ComplainService;
import com.feiyue.service.impl.ComplainServiceImpl;
import com.feiyue.util.PageData;
import com.google.gson.Gson;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/FrontComplainServlet")
public class FrontComplainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ComplainService csi = new ComplainServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontComplainServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
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
			List<ComplainBean> list = csi.getQueryComplain();
			PrintWriter out = response.getWriter();

			Gson gson = new Gson();
			out.println(gson.toJson(list));

			out.close();

		} else if ("addComplain".equals(op)) {
			PrintWriter out = response.getWriter();
			String conplyName=request.getParameter("conplyName");
			String conplyQuestion=request.getParameter("conplyQuestion");
			String conplyPhone=request.getParameter("conplyPhone");
			int conplyStatus=0;
			String conplyRemark=request.getParameter("conplyRemark");
			ComplainBean c=new ComplainBean(conplyName, conplyQuestion, conplyPhone, conplyStatus, conplyRemark);
			boolean flag=csi.addFrontComplain(c);
			if(flag) {
				out.print(true);
			}else {
				out.print(false);
			}
			
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
