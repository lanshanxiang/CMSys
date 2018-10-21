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
 * 处理费用的servlet类
 * @author 飞跃队
 */
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//定义PaymentServiceImpl实现类，获得对数据库费用表处理的各种方法
	private PaymentService psi = new PaymentServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PaymentServlet() {
		super();
	
	}

	/**
	 * @param request
	 * @param response
	 *  doGet方法接收和处理页面发来的请求
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//设置相响应的编码格式
		request.setCharacterEncoding("utf-8");
		//设置响应的编码格式
		response.setCharacterEncoding("utf-8");
		//设置响应的返回的内用类型为application/json
		response.setContentType("application/json");
		String op = "";//op为页面请求的操作类型
		//如果op不为空得到页面传来的op参数
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		//得到session的user对象  登录的用户信息的
		Object obj = request.getSession().getAttribute("users");
		if (obj != null) {
			//页面加载时得到费用表中的信息
			if ("load".equals(op)) {
				List<PaymentBean> list = psi.getPayment();
				PrintWriter out = response.getWriter();
				//创建的json对象
				Gson gson = new Gson();
				//将得到的list集合转换为json对象传回请求的页面
				out.println(gson.toJson(list));

				out.close();

			} else if ("".equals(op)) {
				// 使用Gson对象
				Gson gson = new Gson();
				// 得到费用信息
				List<PaymentBean> list = psi.getPayment();

				MyData<PaymentBean> md = new MyData<PaymentBean>();

				md.setData(list);
				// 把list转为Gson
				String jsonStr = gson.toJson(md);
				// 创建out对象
				PrintWriter out = response.getWriter();
				// 输出jsonStr
				out.print(jsonStr);
				
				// 关闭
				out.close();
			}
			//得到未缴费的费用记录 
			else if ("before".equals(op)) {
				// 使用Gson对象
				Gson gson = new Gson();
				// 得到费用信息
				List<PaymentBean> list = psi.getPaymentBefore();

				MyData<PaymentBean> md = new MyData<PaymentBean>();

				md.setData(list);
				// 把list转为Gson
				String jsonStr = gson.toJson(md);
				// 创建out对象
				PrintWriter out = response.getWriter();
				// 输出jsonStr
				out.print(jsonStr);
				
				// 关闭
				out.close();
			}
			//得到已缴费的费用记录 
			else if ("after".equals(op)) {
				// 使用Gson对象
				Gson gson = new Gson();
				// 得到费用信息
				List<PaymentBean> list = psi.getPaymentAfter();

				MyData<PaymentBean> md = new MyData<PaymentBean>();

				md.setData(list);
				// 把list转为Gson
				String jsonStr = gson.toJson(md);
				// 创建out对象
				PrintWriter out = response.getWriter();
				// 输出jsonStr
				out.print(jsonStr);
				
				// 关闭
				out.close();
			}
			//添加缴费记录 
			else if ("add".equals(op)) {
				//得到表单输入的数据
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
				//创建PaymentBean对象存储得到的数据
				PaymentBean payment = new PaymentBean(tenementId, years, months, lastHalf, thisMonth, costId, quantity,
						payable, practical, payDate, extent);
				//调用方法，将新数据添加到数据库中
				boolean flag = psi.addPayment(payment);
				//返回给页面添加结果 true 添加成功 false 添加失败
				PrintWriter out = response.getWriter();
				if (flag) {
					out.print(true);
				} else {
					out.print(false);
				}
			
				
			} 
			//更新费用信息
			else if ("update".equals(op)) {
				///得到修改后的数据
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
				//创建PaymentBean对象存储得到的数据
				PaymentBean payment = new PaymentBean(payId, tenementId, years, months, lastHalf, thisMonth, costId,
						quantity, payable, practical, payDate, extent);
				PrintWriter out = response.getWriter();
				System.out.println(payment);
				//返回给页面修改的结果 true 修改成功 false 修改失败
				boolean flag = psi.updatePayment(payment);
				if (flag) {
					out.print(true);
				} else {
					out.print(false);
				}
				
				
			}//根据费用ID删除指定费用记录 
			else if ("del".equals(op)) {
				//得到页面传来的ID参数值
				int payId = Integer.parseInt(request.getParameter("payId"));
				//执行删除的方法，删除数据库中的指定数据
				boolean flag = psi.deletePayment(payId);
				PrintWriter out = response.getWriter();
				//返回给页面删除结果 true 删除成功 false 删除失败
				if (flag) {
					out.print(true);
				} else {
					out.print(false);
				}

			}//批量删除费用记录
			else if("batchDelete".equals(op)) {
				//批量删除的SQL语句
				String sql="DELETE FROM tb_payment WHERE payId IN (";
				//获取批量ID
				String[] payId = request.getParameterValues("payId");
				PrintWriter out = response.getWriter();
				//循环拼接ID
				for (String string : payId) {
					sql+=string+",";
				}
				//最后的SQL语句
				sql=sql.substring(0,sql.lastIndexOf(","))+")";
				boolean flag = psi.getBatchDeletePayment(sql);
				out.print(flag);
			}
		} else {
			//如果session（user)为空，跳转到登录界面
			request.getRequestDispatcher("back/login.jsp").forward(request, response);
		}

	}

	/**
	 * @param request
	 * @param response
	 *  doPost方法接收和处理页面发来的请求
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
