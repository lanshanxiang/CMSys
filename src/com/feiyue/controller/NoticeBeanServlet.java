package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.NoticeBean;
import com.feiyue.service.NoticeBeanService;
import com.feiyue.service.impl.NoticeBeanServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * 通知公告类型的servlet
 */
@WebServlet("/NoticeBeanServlet")
public class NoticeBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	NoticeBeanService nbs = new NoticeBeanServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NoticeBeanServlet() {
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
					List<NoticeBean> list = nbs.getNotice();
					PrintWriter out = response.getWriter();

					Gson gson = new Gson();
					out.println(gson.toJson(list));

					out.close();
		        //展示所有功能
				} else if ("".equals(op)) {
					//调用service实现数据库的访问
					List<NoticeBean> list = nbs.getNotice();
					// Ajax来实现
					// 返回数据最好是json格式 外部的jar包 gson
					MyData<NoticeBean> md = new MyData<NoticeBean>();
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
				
				}else if("updateNotice".equals(op)) {
					//从页面中获取要用到的信息
					System.out.println(request.getParameter("noticeId"));
					int noticeId= Integer.parseInt(request.getParameter("noticeId"));//通知公告编号
					 String titles=request.getParameter("titles");//通知公告标题
					 String contents=request.getParameter("contents");//通知公告内容
					 String  typeName = request.getParameter("typeName");//通知类型
					 String releaseTime=request.getParameter("releaseTime");//通知公告发布时间
					 String extent=request.getParameter("extent");//扩展
					NoticeBean  nt=new NoticeBean(noticeId, titles, contents, typeName, releaseTime, extent);
					//再进行数据库交互，返回一个boolean类型的值
					boolean flag=nbs.updateNotice(nt);
					//在将返回值返回回页面
					PrintWriter out = response.getWriter();
					if(flag) {
						out.print(true);
					}else {
						out.print(false);
					}
				}else if("addNotice".equals(op)) {
					//从页面中获取要用到的信息
					
					 
					 String titles=request.getParameter("titles");//通知公告标题
					 String contents=request.getParameter("contents");//通知公告内容
					 
					int  typeId= Integer.parseInt(request.getParameter("typeId")); //公告类型编号
					 String releaseTime=request.getParameter("releaseTime");//通知公告发布时间
					 String extent=request.getParameter("extent");//扩展
					//将获取到的信息存储到实体类中
					NoticeBean  nt=new NoticeBean(titles, contents, typeId, releaseTime, extent);
					//再进行数据库交互，返回一个boolean类型的值
					boolean flag=nbs.addNotice(nt);
					//在将返回值返回回页面
					PrintWriter out = response.getWriter();
					out.print(flag);
					
				}else if("delNotice".equals(op)) {
					int noticeId=Integer.parseInt(request.getParameter("noticeId"));
					boolean flag=nbs.deleteNotice(noticeId);
					PrintWriter out =response.getWriter();
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
