package com.feiyue.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.feiyue.entiy.NoticeTypeBean;
import com.feiyue.service.NoticeTypeBeanService;
import com.feiyue.service.impl.NoticeTypeBeanServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * 通知公告类型的servlet
 */
@WebServlet("/NoticeTypeBeanServlet")
public class NoticeTypeBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	NoticeTypeBeanService ntbs=new NoticeTypeBeanServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeTypeBeanServlet() {
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
					List<NoticeTypeBean> list = ntbs.getNoticeType();
					PrintWriter out = response.getWriter();

					Gson gson = new Gson();
					out.println(gson.toJson(list));

					out.close();
		        //展示所有功能
				} else if ("".equals(op)) {
					//调用service实现数据库的访问
					List<NoticeTypeBean> list = ntbs.getNoticeType();
					// Ajax来实现
					// 返回数据最好是json格式 外部的jar包 gson
					MyData<NoticeTypeBean> md = new MyData<NoticeTypeBean>();
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
					
				//增加
				}else if("addNoticeType".equals(op)) {
					String typeName = request.getParameter("typeName");
					String remark = request.getParameter("remark");
					NoticeTypeBean noticeType=new NoticeTypeBean(typeName, remark);
					boolean flag=ntbs.addNoticeType(noticeType);
					PrintWriter out =response.getWriter();
					out.print(flag);
					
					
					
				}else if("updateNoticeType".equals(op)) {
					int typeId=Integer.parseInt(request.getParameter("typeId"));
					String typeName = request.getParameter("typeName");
					String remark = request.getParameter("remark");
					NoticeTypeBean noticeType=new NoticeTypeBean(typeId,typeName,remark);
					PrintWriter out =response.getWriter();
					boolean flag=ntbs.updateNoticeType(noticeType);
					if(flag) {
						out.print(true);
					}else {
						out.print(false);
					}
					
					
					
				}else if("delNoticeType".equals(op)) {
					int typeId=Integer.parseInt(request.getParameter("typeId"));
					boolean flag=ntbs.deleteNoticeType(typeId);
					PrintWriter out =response.getWriter();
					if(flag) {
						out.print(true);
					}else {
						out.print(false);
					}
					
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
