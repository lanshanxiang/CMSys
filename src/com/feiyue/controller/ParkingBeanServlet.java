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
import com.feiyue.entiy.RoomBean;
import com.feiyue.service.ParkingBeanService;
import com.feiyue.service.RoomBeanService;
import com.feiyue.service.impl.ParkingBeanServiceImpl;
import com.feiyue.service.impl.RoomBeanServiceImpl;
import com.feiyue.util.MyData;
import com.google.gson.Gson;

/**
 * Servlet implementation class ParkingSpaceServlet
 */
@WebServlet("/ParkingBeanServlet")
public class ParkingBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     ParkingBeanService pbs=new ParkingBeanServiceImpl();
     RoomBeanService rbs=new RoomBeanServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParkingBeanServlet() {
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
		response.setContentType("application/json");
		
		String op = "";
		if (request.getParameter("op") != null) {
			op = request.getParameter("op");
		}
		System.out.println(op);
		PrintWriter out = response.getWriter();
		 if ("".equals(op)) {
			List<ParkingBean> list = pbs.getAllParkingBean();
			
			MyData<ParkingBean> md = new MyData<ParkingBean>();

			md.setData(list);

			Gson gson = new Gson();
			String jsonString = gson.toJson(md);

			out.print(jsonString);
			//System.out.println("[jsonString] :" + jsonString);
			System.out.println(jsonString);
			out.close();
		}else if("delete".equals(op)) {
		
			int pId=Integer.valueOf(request.getParameter("parkingId"));
			System.out.println(pId);
			boolean flag =pbs.deleteParkingBean(pId);
			
			out.print(flag);
			out.close();
		}
		else if("addParking".equals(op)) {
		
			String parkingNo=request.getParameter("parkingNo");
			String carNum=request.getParameter("carNum");
			String carType=request.getParameter("carType");
			String timeStart=request.getParameter("timeStart");
			String timeEnd=request.getParameter("timeEnd");	
			int ptId=Integer.valueOf(request.getParameter("ptName"));
			int roomId=Integer.valueOf(request.getParameter("roomName"));
			int parkSRId=Integer.valueOf(request.getParameter("parkSRName"));
			double money=Double.valueOf(request.getParameter("money"));
			String remarks=request.getParameter("remarks");
			ParkingBean pb=new ParkingBean(parkingNo, ptId, roomId, carNum, carType, money, timeStart, timeEnd, parkSRId, remarks);
			boolean flag =pbs.addParkingBean(pb);
			
			out.print(flag);
			out.close();
		}else if("updateParking".equals(op)) {
			
			String parkingNo=request.getParameter("parkingNo");
			String carNum=request.getParameter("carNum");
			String carType=request.getParameter("carType");
			String timeStart=request.getParameter("timeStart");
			String timeEnd=request.getParameter("timeEnd");	
			int ptId=Integer.valueOf(request.getParameter("ptName"));
			int roomId=Integer.valueOf(request.getParameter("roomName"));
			int parkSRId=Integer.valueOf(request.getParameter("parkSRName"));
			double money=Double.valueOf(request.getParameter("money"));
			String remarks=request.getParameter("remarks");
			ParkingBean pb=new ParkingBean(parkingNo, ptId, roomId, carNum, carType, money, timeStart, timeEnd, parkSRId, remarks);
			boolean flag =pbs.updateParkingBean(pb);
			
			out.print(flag);
			out.close();
			
		}else if("getRooms".equals(op)) {
			System.out.println("getRooms");
			List<RoomBean> list = rbs.getQueryOnlyRoomBean();
			//list.forEach(System.out::println);
			Gson gson = new Gson();
			String jsonString = gson.toJson(list);
			System.out.println(jsonString);
			out.print(jsonString);
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
