package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.PayNoticeBean;
import com.feiyue.service.PayNoticeService;
import com.feiyue.service.impl.PayNoticeServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/PayNoticeServlet")
public class PayNoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private PayNoticeService pnsi=new PayNoticeServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayNoticeServlet() {
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
			List<PayNoticeBean> list=pnsi.getPayNotice();
			PrintWriter out = response.getWriter();

			Gson gson = new Gson();
			out.println(gson.toJson(list));

			out.close();

		} else if("".equals(op)) {
			//使用Gson对象
			Gson gson=new Gson();
			System.out.println(123);
			//得到费用信息
			List<PayNoticeBean> list=pnsi.getPayNotice();
			
			MyData<PayNoticeBean> md = new MyData<PayNoticeBean>();

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
		}else if("load".equals(op)) {
			//使用Gson对象
			Gson gson=new Gson();
			//得到费用信息
			List<PayNoticeBean> list=pnsi.getPayNotice();
			
			//把list转为Gson
			String jsonStr=gson.toJson(list);
			//创建out对象
			PrintWriter out =response.getWriter();
			//输出jsonStr
			out.print(jsonStr);
			System.out.println("[jsonStr]:"+jsonStr);
			//关闭
			out.close();
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
