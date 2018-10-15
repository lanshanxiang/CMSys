package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.BusinessBean;
import com.feiyue.entiy.ReportBean;
import com.feiyue.entiy.TenementBean;
import com.feiyue.service.BusinessBeanService;
import com.feiyue.service.impl.BusinessBeanServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * Servlet implementation class BusinessBeanServlet
 */
@WebServlet("/BusinessBeanServlet")
public class BusinessBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BusinessBeanService bbs=new BusinessBeanServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusinessBeanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//设置响应和请求编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//设置返回的为json格式
		response.setContentType("application/json");
		//获取op
		String op = "";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		if ("load".equals(op)) {
			List<BusinessBean> list = bbs.getQueryBusinessBean();
			PrintWriter out = response.getWriter();

			Gson gson = new Gson();
			out.println(gson.toJson(list));

			out.close();
        //展示所有功能
		} else if ("".equals(op)) {
			//调用service实现数据库的访问
			List<BusinessBean> list = bbs.getQueryBusinessBean();
			// Ajax来实现
			// 返回数据最好是json格式 外部的jar包 gson
			MyData<BusinessBean> md = new MyData<BusinessBean>();
            //将list存入到MyData中
			md.setData(list);
            //创建一个Gson实体
			Gson gson = new Gson();
			//将MyData格式转化成字符串
			String jsonString = gson.toJson(md);
			// 使用printWriter对象
			PrintWriter out = response.getWriter();
            //将jsonString返回到页面
			out.print(jsonString);
			System.out.println(jsonString);
            //释放资源
			out.close();
		//查询已修理
		}else if("businessY".equals(op)) {
			//调用service实现数据库的访问
			List<BusinessBean> list = bbs.getQueryBusinessBeanStateY();
			// Ajax来实现
			// 返回数据最好是json格式 外部的jar包 gson
			MyData<BusinessBean> md = new MyData<BusinessBean>();
            //将list存入到MyData中
			md.setData(list);
            //创建一个Gson实体
			Gson gson = new Gson();
			//将MyData格式转化成字符串
			String jsonString = gson.toJson(md);
			// 使用printWriter对象
			PrintWriter out = response.getWriter();
            //将jsonString返回到页面
			out.print(jsonString);
			System.out.println(jsonString);
            //释放资源
			out.close();
	    //查询正在修理
		}else if("businessYN".equals(op)) {
			//调用service实现数据库的访问
			List<BusinessBean> list = bbs.getQueryBusinessBeanStateYN();
			// Ajax来实现
			// 返回数据最好是json格式 外部的jar包 gson
			MyData<BusinessBean> md = new MyData<BusinessBean>();
            //将list存入到MyData中
			md.setData(list);
            //创建一个Gson实体
			Gson gson = new Gson();
			//将MyData格式转化成字符串
			String jsonString = gson.toJson(md);
			// 使用printWriter对象
			PrintWriter out = response.getWriter();
            //将jsonString返回到页面
			out.print(jsonString);
			System.out.println(jsonString);
            //释放资源
			out.close();
	    //查询修理失败
		}else if("businessN".equals(op)) {
			//调用service实现数据库的访问
			List<BusinessBean> list = bbs.getQueryBusinessBeanStateN();
			// Ajax来实现
			// 返回数据最好是json格式 外部的jar包 gson
			MyData<BusinessBean> md = new MyData<BusinessBean>();
            //将list存入到MyData中
			md.setData(list);
            //创建一个Gson实体
			Gson gson = new Gson();
			//将MyData格式转化成字符串
			String jsonString = gson.toJson(md);
			// 使用printWriter对象
			PrintWriter out = response.getWriter();
            //将jsonString返回到页面
			out.print(jsonString);
			System.out.println(jsonString);
            //释放资源
			out.close();
		}
		//增加功能
		else if("addBusinessBean".equals(op)) {
			//从页面中获取要用到的信息
			String bName=request.getParameter("bName");
			String bPeopleName=request.getParameter("bPeopleName");
			String bTel=request.getParameter("bTel");
			//将获取到的信息存储到实体类中
			BusinessBean bb=new BusinessBean(bName, bPeopleName, bTel);
			//再进行数据库交互，返回一个boolean类型的值
			boolean flag=bbs.getAddBusinessBean(bb);
			//在将返回值返回回页面
			PrintWriter out = response.getWriter();
			out.print(flag);
			out.close();
		//修改功能
		}else if("updateBusinessBean".equals(op)) {
			//从页面中获取要用到的信息
			String bName=request.getParameter("bName");
			String bPeopleName=request.getParameter("bPeopleName");
			String bTel=request.getParameter("bTel");
			int bState=Integer.parseInt(request.getParameter("bState"));
			String bDate=request.getParameter("bDate");
			int bId=Integer.parseInt(request.getParameter("bId"));
			//将获取到的信息存储到实体类中
			BusinessBean bb=new BusinessBean(bName, bPeopleName, bTel, bState, bDate, bId);
			//再进行数据库交互，返回一个boolean类型的值
			boolean flag=bbs.getUpdateBusinessBean(bb);
			//在将返回值返回回页面
			PrintWriter out = response.getWriter();
			out.print(flag);
			out.close();
		//删除功能
		}else if("deleteBusinessBean".equals(op)) {
			//从页面中获取要用到的信息
			int bId=Integer.parseInt(request.getParameter("bId"));
			//再进行数据库交互，返回一个boolean类型的值
			boolean flag=bbs.getDeleteBusinessBean(bId);
			//在将返回值返回回页面
			PrintWriter out = response.getWriter();
			out.print(flag);
			out.close();
        }else if("updateState".equals(op)) {
        	int bId=Integer.parseInt(request.getParameter("bId"));
        	int bState=Integer.parseInt(request.getParameter("bState"));
        	boolean flag=bbs.getUpdateBusinessBeanByState(bId, bState);
        	//在将返回值返回回页面
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
