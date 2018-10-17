package com.feiyue.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.entiy.Active;
import com.feiyue.entiy.Lost;
import com.feiyue.service.ActiveService;
import com.feiyue.service.impl.ActiveServiceImpl;
import com.feiyue.util.PageData;
import com.google.gson.Gson;

/**
 * Servlet implementation class FontActiveServlet
 */
@WebServlet("/FrontActiveServlet")
public class FrontActiveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ActiveService as=new ActiveServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontActiveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
				int page=1;
				int pageSize=5;
				if(null!=request.getParameter("page")) {
					page=Integer.parseInt(request.getParameter("page"));
				}if(null!=request.getParameter("pageSize")) {
					pageSize=Integer.parseInt(request.getParameter("pageSize"));
				}
				//查询所有！ 流加载
				if("".equals(op)) {
					PageData<Active> pdActive=as.getQueryActive(page, pageSize);
					//将查询到的返回值存起来
					request.setAttribute("pdActive", pdActive);
					//创建一个Gson对象
					Gson gs = new Gson();
					//通过Gson对象的tojson方法将pd.getData（）转成字符串
					String str = gs.toJson(pdActive.getData());
					//将字符组传到页面
					response.getWriter().print(str);
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
