package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.BuildingBean;
import com.feiyue.service.BuildingBeanService;
import com.feiyue.service.impl.BuildingBeanServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * 用来处理后台楼房管理的servlet
 */
@WebServlet("/BuildingBeanServlet")
public class BuildingBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BuildingBeanService bbs = new BuildingBeanServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BuildingBeanServlet() {
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
		response.setContentType("application/json");
		// 获取op
		String op = "";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		Object obj = request.getSession().getAttribute("users");
		if (obj != null) {
			if ("load".equals(op)) {
				List<BuildingBean> list = bbs.getQueryOnlyBuildingBean();
				PrintWriter out = response.getWriter();

				Gson gson = new Gson();
				out.println(gson.toJson(list));

				out.close();
				// 展示所有功能
			} else if ("".equals(op)) {
				// 调用service实现数据库的访问
				List<BuildingBean> list = bbs.getQueryBuildingBean();
				// Ajax来实现
				// 返回数据最好是json格式 外部的jar包 gson
				MyData<BuildingBean> md = new MyData<BuildingBean>();
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
				System.out.println(jsonString);
				// 释放资源
				out.close();
				// 增加功能
			} else if ("addBuildingBean".equals(op)) {
				// 从页面中获取要用到的信息
				String buildingName = request.getParameter("buildingName");
				String face = request.getParameter("face");
				double buildArea = Double.parseDouble(request.getParameter("buildArea"));
				int floorNum = Integer.parseInt(request.getParameter("floorNum"));
				double height = Double.parseDouble(request.getParameter("height"));
				String buildTime = request.getParameter("buildTime");
				String type = request.getParameter("type");
				int villageId = Integer.parseInt(request.getParameter("villageId"));
				String extent = request.getParameter("extent");
				// 将获取到的信息存储到实体类中
				BuildingBean bb = new BuildingBean(buildingName, face, buildArea, floorNum, height, buildTime, type,
						villageId, extent);
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = bbs.getAddBuildingBean(bb);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
				// 修改功能
			} else if ("updateBuildingBean".equals(op)) {
				// 从页面中获取要用到的信息
				String buildingName = request.getParameter("buildingName");
				String face = request.getParameter("face");
				double buildArea = Double.parseDouble(request.getParameter("buildArea"));
				int floorNum = Integer.parseInt(request.getParameter("floorNum"));
				double height = Double.parseDouble(request.getParameter("height"));
				String buildTime = request.getParameter("buildTime");
				String type = request.getParameter("type");
				int villageId = Integer.parseInt(request.getParameter("villageId"));
				String extent = request.getParameter("extent");
				int buildingId = Integer.parseInt(request.getParameter("buildingId"));
				// 将获取到的信息存储到实体类中
				BuildingBean bb = new BuildingBean(buildingName, face, buildArea, floorNum, height, buildTime, type,
						villageId, extent, buildingId);
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = bbs.getUpdateBuildingBean(bb);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
				// 删除功能
			} else if ("deleteBuildingBean".equals(op)) {
				// 从页面中获取要用到的信息
				int buildingId = Integer.parseInt(request.getParameter("buildingId"));
				// 再进行数据库交互，返回一个boolean类型的值
				boolean flag = bbs.getDeleteBuildingBean(buildingId);
				// 在将返回值返回回页面
				PrintWriter out = response.getWriter();
				out.print(flag);
				out.close();
			}else if("batchDelete".equals(op)) {
				//批量删除的SQL语句
				String sql="DELETE FROM tb_building WHERE buildingId IN (";
				//获取批量ID
				String[] buildingId = request.getParameterValues("buildingId");
				PrintWriter out = response.getWriter();
				//循环拼接ID
				for (String string : buildingId) {
					sql+=string+",";
				}
				//最后的SQL语句
				sql=sql.substring(0,sql.lastIndexOf(","))+")";
				boolean flag = bbs.getBatchDeleteBuildingBean(sql);
				out.print(flag);
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
