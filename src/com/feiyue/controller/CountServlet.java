package com.feiyue.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feiyue.dao.B_countDao;
import com.feiyue.dao.impl.B_countDaoImpl;
import com.feiyue.entiy.B_count;
import com.feiyue.entiy.P_count;
import com.feiyue.entiy.R_count;
import com.feiyue.entiy.T_count;
import com.feiyue.entiy.V_count;
import com.feiyue.service.B_countService;
import com.feiyue.service.P_countService;
import com.feiyue.service.R_countService;
import com.feiyue.service.T_countService;
import com.feiyue.service.V_countService;
import com.feiyue.service.impl.B_countServiceImpl;
import com.feiyue.service.impl.P_countServiceImpl;
import com.feiyue.service.impl.R_countServiceImpl;
import com.feiyue.service.impl.T_countServiceImpl;
import com.feiyue.service.impl.V_countServiceImpl;

/**
 * Servlet implementation class CountServlet
 */
@WebServlet("/CountServlet")
public class CountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	B_countService bd=new B_countServiceImpl(); 
	R_countService rs=new R_countServiceImpl(); 
	V_countService vs=new V_countServiceImpl();  
	P_countService ps=new P_countServiceImpl(); 
	T_countService ts=new T_countServiceImpl(); 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
			//统计楼房 房屋，小区，车位
			if("brtp".equals(op)) {
				//楼房
				List<B_count> buildingList=bd.getQueryAll();
				request.setAttribute("buildingList", buildingList);
				//房屋
				List<R_count> roomList=rs.getQueryAll();
				request.setAttribute("roomList", roomList);
				//小区
				List<V_count> villageList=vs.getQueryAll();
				request.setAttribute("villageList", villageList);
				//车位
				List<P_count> parkingList=ps.getQueryAll();
				request.setAttribute("parkingList", parkingList);
				request.getRequestDispatcher("back/charts-1.jsp").forward(request, response);
			}else if("t".equals(op)) {
				//车位
				List<T_count> tenementList=ts.getQueryAll();
				request.setAttribute("tenementList", tenementList);
				request.getRequestDispatcher("back/charts-6.jsp").forward(request, response);
			}
			
		} else {
			request.getRequestDispatcher("back/login.jsp").forward(request, response);
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
