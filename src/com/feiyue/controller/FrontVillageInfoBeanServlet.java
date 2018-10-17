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
import com.feiyue.util.PageData;
import com.google.gson.Gson;

/**
 * 用于处理小区管理的servlet
 */
@WebServlet("/FrontVillageInfoBeanServlet")
public class FrontVillageInfoBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	VillageInfoBeanService vifs = new VillageInfoBeanServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontVillageInfoBeanServlet() {
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
		// 设置响应和请求编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 设置返回的为json格式
		// 获取op
		String op = "";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		int page=1;
		int pageSize=10;
		if(null!=request.getParameter("page")) {
			page=Integer.parseInt(request.getParameter("page"));
		}
		if(null!=request.getParameter("pageSize")) {
			pageSize=Integer.parseInt(request.getParameter("pageSize"));
		}
		if ("load".equals(op)) {
			List<VillageInfoBean> list = vifs.getQueryVillageInfoBean();
			PrintWriter out = response.getWriter();

			Gson gson = new Gson();
			out.println(gson.toJson(list));

			out.close();
			// 展示所有功能+流加载 分页
		} else if ("".equals(op)) {
			// 调用service实现数据库的访问
			PageData<VillageInfoBean> pdVillage = vifs.getQueryVillageInfoBeanByPage(page,pageSize);
			// Ajax来实现
			// 创建一个Gson实体
			Gson gson = new Gson();
			// 将MyData格式转化成字符串
			String jsonString = gson.toJson(pdVillage.getData());
			// 使用printWriter对象
			PrintWriter out = response.getWriter();
			// 将jsonString返回到页面
			out.print(jsonString+pdVillage.getTotalPage());
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
			// 删除功能
		} else if ("deleteVillageInfoBean".equals(op)) {
			// 从页面中获取要用到的信息
			int villageId = Integer.parseInt(request.getParameter("villageId"));
			// 再进行数据库交互，返回一个boolean类型的值
			boolean flag = vifs.getDeleteVillageInfoBean(villageId);
			// 在将返回值返回回页面
			PrintWriter out = response.getWriter();
			out.print(flag);
			out.close();
		} else if ("batchDelete".equals(op)) {
			// 批量删除的SQL语句
			String sql = "DELETE FROM tb_villageinfo WHERE villageId IN (";
			// 获取批量ID
			String[] villageId = request.getParameterValues("villageId");
			PrintWriter out = response.getWriter();
			// 循环拼接ID
			for (String string : villageId) {
				sql += string + ",";
			}
			// 最后的SQL语句
			sql = sql.substring(0, sql.lastIndexOf(",")) + ")";
			boolean flag = vifs.getBatchDeleteVillageInfoBean(sql);
			out.print(flag);
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
