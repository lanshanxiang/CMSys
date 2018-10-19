package com.feiyue.controller;

import java.io.IOException;
import java.net.NetworkInterface;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.Active;
import com.feiyue.entiy.NoticeBean;
import com.feiyue.service.NoticeBeanService;
import com.feiyue.service.impl.NoticeBeanServiceImpl;
import com.feiyue.util.PageData;
import com.google.gson.Gson;

/**
 * Servlet implementation class FrontNoticeServlet
 */
@WebServlet("/FrontNoticeServlet")
public class FrontNoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NoticeBeanService nbs = new NoticeBeanServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontNoticeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		int page=1;
		int pageSize=10;
		if(null!=request.getParameter("page")) {
			page=Integer.parseInt(request.getParameter("page"));
		}if(null!=request.getParameter("pageSize")) {
			pageSize=Integer.parseInt(request.getParameter("pageSize"));
		}
		//查询所有！ 流加载
		if("".equals(op)) {
			PageData<NoticeBean> selectAllNotice = nbs.getSelectAllNotice(page, pageSize);
			//将查询到的返回值存起来
			request.setAttribute("selectAllNotice", selectAllNotice);
			//创建一个Gson对象
			Gson gs = new Gson();
			//通过Gson对象的tojson方法将pd.getData（）转成字符串
			String str = gs.toJson(selectAllNotice.getData());
			//将字符组传到页面
			response.getWriter().print(str+selectAllNotice.getTotalPage());
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
