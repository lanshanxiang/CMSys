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
 * Servlet implementation class TenementBeanServlet
 */
@WebServlet("/TenementBeanServlet")
public class TenementBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private TenementBeanService tbs = new TenementBeanServiceImpl();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TenementBeanServlet() {
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
        if ("".equals(op)) {
			List<TenementBean> list = tbs.getTenementBean();
			// Ajax来实现
			// 返回数据最好是json格式 外部的jar包 gson
			MyData<TenementBean> md = new MyData<TenementBean>();

			md.setData(list);

			Gson gson = new Gson();
			String jsonString = gson.toJson(md);

			// 使用printWriter对象
			PrintWriter out = response.getWriter();

			out.print(jsonString);
			System.out.println("[jsonString] :" + jsonString);
			out.close();
		}else if("register".equals(op)) {
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
			int userId = Integer.parseInt(request.getParameter("userId"));
			String remark = request.getParameter("remark");		
			TenementBean tb = new TenementBean(tenementName, sex, aunit, idCard, mobilePhone, email, areStay, nationality, homeAddress, residenceType, maritalStatus, userId, remark);
			boolean flag = tbs.getInsertTenementBean(tb);
			PrintWriter out = response.getWriter();
			out.print(flag);
			out.close();
		}else if("update".equals(op)){
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
			int userId = Integer.parseInt(request.getParameter("userId"));
			String remark = request.getParameter("remark");	
			int tenementId = Integer.parseInt(request.getParameter("tenementId"));
			TenementBean tb = new TenementBean(tenementName, sex, aunit, idCard, mobilePhone, email, areStay, nationality, homeAddress, residenceType, maritalStatus, userId, remark,tenementId);
			boolean flag = tbs.updateTenementBean(tb);
			PrintWriter out = response.getWriter();
			out.print(flag);
			out.close();
		}else if("deleteTenement".equals(op)) {
			String tenementId = request.getParameter("tenementId");
			boolean flag = tbs.getDeleteTenementBean(Integer.valueOf(tenementId));
			PrintWriter out = response.getWriter();
			out.print(flag);
			out.close();
		}else  if("queryIsY".equals(op)) {
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
			System.out.println("[jsonString] :" + jsonString);

			out.close();
		}else if("queryIsYN".equals(op)) {
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
			System.out.println("[jsonString] :" + jsonString);

			out.close();
		}else if("queryIsN".equals(op)) {
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
			System.out.println("[jsonString] :" + jsonString);

			out.close();
		}else if("queryIsYR".equals(op)) {
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
		}else if("updateStatus".equals(op)) {
			int status= Integer.parseInt(request.getParameter("status"));
			int tenementId = Integer.parseInt(request.getParameter("tenementId"));
			boolean flag=tbs.updateTenementBeanByStatus(status, tenementId);
			PrintWriter out = response.getWriter();

			out.print(flag);
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
