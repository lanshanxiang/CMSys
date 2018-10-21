package com.feiyue.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.feiyue.entiy.ParkingBean;
import com.feiyue.service.ParkingBeanService;
import com.feiyue.service.impl.ParkingBeanServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;
/**
 * 处理车位管理模块的servlet类
 * @author 飞跃队
 */
@WebServlet("/ParkingBeanServlet")
public class ParkingBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ParkingBeanService pbs = new ParkingBeanServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ParkingBeanServlet() {
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
		// TODO Auto-generated method stub

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		String op = "";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}

		PrintWriter out = response.getWriter();
		Object obj = request.getSession().getAttribute("users");
		if (obj != null) {
			if ("".equals(op)) {
				List<ParkingBean> list = pbs.getAllParkingBean();

				MyData<ParkingBean> md = new MyData<ParkingBean>();

				md.setData(list);

				Gson gson = new Gson();
				String jsonString = gson.toJson(md);

				out.print(jsonString);
				// System.out.println("[jsonString] :" + jsonString);

				out.close();
			} else if ("delete".equals(op)) {

				int pId = Integer.valueOf(request.getParameter("parkingId"));

				boolean flag = pbs.deleteParkingBean(pId);

				out.print(flag);
				out.close();
			} else if ("addParking".equals(op)) {

				String parkingNo = request.getParameter("parkingNo");

				int ptId = Integer.valueOf(request.getParameter("ptId"));
				int villageId = Integer.valueOf(request.getParameter("villageId"));
				int parkSRId = Integer.valueOf(request.getParameter("parkSRId"));
				double area = Double.valueOf(request.getParameter("area"));
				String remarks = request.getParameter("remarks");
				ParkingBean pb = new ParkingBean(parkingNo, ptId, villageId, parkSRId, area, remarks);
				boolean flag = pbs.addParkingBean(pb);

				out.print(flag);
				out.close();
			} else if ("updateParking".equals(op)) {
				int parkingId = Integer.valueOf(request.getParameter("parkingId"));
				String parkingNo = request.getParameter("parkingNo");
				int ptId = Integer.valueOf(request.getParameter("ptId"));
				int villageId = Integer.valueOf(request.getParameter("villageId"));
				int parkSRId = Integer.valueOf(request.getParameter("parkSRId"));
				double area = Double.valueOf(request.getParameter("area"));
				String remarks = request.getParameter("remarks");

				ParkingBean pb = new ParkingBean(parkingId, parkingNo, ptId, villageId, parkSRId, area, remarks);

				boolean flag = pbs.updateParkingBean(pb);

				out.print(flag);
				out.close();

			}else if("batchDelete".equals(op)) {
				//批量删除的SQL语句
				String sql="DELETE FROM tb_parkings WHERE parkingId IN (";
				//获取批量ID
				String[] parkingId = request.getParameterValues("parkingId");
				//循环拼接ID
				for (String string : parkingId) {
					sql+=string+",";
				}
				//最后的SQL语句
				sql=sql.substring(0,sql.lastIndexOf(","))+")";
				boolean flag = pbs.getBatchDeleteParkingBean(sql);
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
