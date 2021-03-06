package com.feiyue.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.feiyue.entiy.VillageInfoBean;
import com.feiyue.service.VillageInfoBeanService;
import com.feiyue.service.impl.VillageInfoBeanServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;


/**
 * 用于处理小区管理的servlet
 * @author 飞跃队
 *
 */
@WebServlet("/VillageInfoBeanServlet")
public class VillageInfoBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//创建一个VillageInfoBeanServiceImpl对象
	VillageInfoBeanService vifs = new VillageInfoBeanServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VillageInfoBeanServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param  request
	 * @param response
	 * doGet方法接收和处理页面发来的请求
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
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
			//页面加载时请求的处理
			if ("load".equals(op)) {
				//得到数据库中的小区信息
				List<VillageInfoBean> list = vifs.getQueryVillageInfoBean();
				PrintWriter out = response.getWriter();
				//将得到的小区信息转换为json对象返回请求的页面
				Gson gson = new Gson();
				out.println(gson.toJson(list));

				out.close();
				
				
			} // 展示所有功能
			else if ("".equals(op)) {
				// 调用service实现数据库的访问
				List<VillageInfoBean> list = vifs.getQueryVillageInfoBean();
				// Ajax来实现
				// 返回数据最好是json格式 外部的jar包 gson
				MyData<VillageInfoBean> md = new MyData<VillageInfoBean>();
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
				//System.out.println(jsonString);
				// 释放资源
				out.close();
				// 增加功能
			} else if ("addVillageInfoBean".equals(op)) {
				// 从页面中获取要用到的信息
				String villageName = request.getParameter("villageName");
				String linkman = request.getParameter("linkman");
				String setUpTime = request.getParameter("setUpTime");
				String phone = request.getParameter("phone");
				String mobilePhone = request.getParameter("mobilePhone");
				String floorArea = request.getParameter("floorArea");
				String buildingArea = request.getParameter("buildingArea");
				String garageArea = request.getParameter("garageArea");
				String stallNum = request.getParameter("stallNum");
				String greenArea = request.getParameter("greenArea");
				String location = request.getParameter("location");
				String introduction = request.getParameter("introduction");
				String extent = request.getParameter("extent");
				// 将获取到的信息存储到实体类中
				VillageInfoBean vb = new VillageInfoBean(villageName, linkman, setUpTime, phone, mobilePhone, floorArea,
						buildingArea, garageArea, stallNum, greenArea, location, introduction, extent);
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = vifs.getAddVillageInfoBean(vb);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
				// 修改功能
			} else if ("updateVillageInfoBean".equals(op)) {
				// 从页面中获取要用到的信息
				String villageName = request.getParameter("villageName");
				String linkman = request.getParameter("linkman");
				String setUpTime = request.getParameter("setUpTime");
				String phone = request.getParameter("phone");
				String mobilePhone = request.getParameter("mobilePhone");
				String floorArea = request.getParameter("floorArea");
				String buildingArea = request.getParameter("buildingArea");
				String garageArea = request.getParameter("garageArea");
				String stallNum = request.getParameter("stallNum");
				String greenArea = request.getParameter("greenArea");
				String location = request.getParameter("location");
				String introduction = request.getParameter("introduction");
				String extent = request.getParameter("extent");
				int villageId = Integer.parseInt(request.getParameter("villageId"));
				// 将获取到的信息存储到实体类中
				VillageInfoBean vb = new VillageInfoBean(villageName, linkman, setUpTime, phone, mobilePhone, floorArea,
						buildingArea, garageArea, stallNum, greenArea, location, introduction, extent, villageId);
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = vifs.getUpdateVillageInfoBean(vb);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
				// 删除指定小区信息
			} else if ("deleteVillageInfoBean".equals(op)) {
				// 从页面中获取要用到的信息
				int villageId = Integer.parseInt(request.getParameter("villageId"));
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = vifs.getDeleteVillageInfoBean(villageId);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
			}//批量删除多条小区数据
			else if("batchDelete".equals(op)) {
				//批量删除的SQL语句
				String sql="DELETE FROM tb_villageinfo WHERE villageId IN (";
				//获取批量ID
				String[] villageId = request.getParameterValues("villageId");
				PrintWriter out = response.getWriter();
				//循环拼接ID
				for (String string : villageId) {
					sql+=string+",";
				}
				//最后的SQL语句
				sql=sql.substring(0,sql.lastIndexOf(","))+")";
				boolean flag = vifs.getBatchDeleteVillageInfoBean(sql);
				out.print(flag);
			}
		}//obj对象为空则跳到登录界面 
		else {
			request.getRequestDispatcher("back/login.jsp").forward(request, response);
		}
	}

    /**
	 * @param request
	 * @param response
	 * doPost方法
	 */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
