package hotel.control;

import hotel.model.Beifen;
import hotel.model.guest;
import hotel.model.guestIn;
import hotel.model.room;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

public class GuestInfoController extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(request.getServletPath());
		request.setCharacterEncoding("UTF-8");
		String actionUrl = request.getServletPath();
		if(actionUrl.equals("registeremp.action")){

		}else if (actionUrl.equals("/view/opencam.action")) {
			FaceCollection faceCollection=new FaceCollection();
			request.getRequestDispatcher("/view/index.jsp").forward(request, response);
			try {

				faceCollection.identyAll();

			} catch (Exception e) {
				throw new RuntimeException(e);
			}
		}
		else if (actionUrl.equals("/view/register.action")) {
			// 获取参数
			String roomType = request.getParameter("roomType");
			String guestId = request.getParameter("guestId");
			String guestName = request.getParameter("guestName");
			int roomNumber = Integer.parseInt(request.getParameter("roomNumber"));
			System.out.print(roomNumber);

			String sex = request.getParameter("sex");
			String phoneNumber = request.getParameter("phoneNumber");
			System.out.println(guestId);
			room ro = new room();
			ro.setRoomNumber(roomNumber);
			int roo=ro.upDateRoomIn();
			Beifen bf = new Beifen();
			guest ui = new guest();
			guestIn in = new guestIn();
			// 调用相应业务方法，根据返回值选择合适的视图层响应用户
			ui.setName(guestName);
			ui.setGuestId(guestId);
			ui.setRoomNumber(roomNumber);
			ui.setPhoneNumber(phoneNumber);
			ui.setSex(sex);
			in.setGuestId(guestId);
			in.setRoomNumber(roomNumber);
			bf.setName(guestName);
			bf.setGuestId(guestId);
			bf.setRoomNumber(roomNumber);
			bf.setPhoneNumber(phoneNumber);
			bf.setSex(sex);
			// int roomBed = Integer.parseInt(request.getParameter("roomBed"));
			// bf.setRoomBed(roomBed );
			bf.setRoomType(roomType);
			int r = bf.backup();
			FaceCollection faceCollection=new FaceCollection();
			try {
				faceCollection.collect(String.valueOf(in.getRoomNumber()),in.getGuestId(),"guest.guest");
				in.SetFace(1);
			} catch (Exception e) {
				throw new RuntimeException(e);
			}
			int result = ui.registerGuest();
			int resultIn = in.registerGuestIn();
			if (result == 1 && resultIn == 1 && r == 1) {
				request.getRequestDispatcher("/view/regSuccess.html").forward(request, response);
				try {

					faceCollection.train(String.valueOf(in.getRoomNumber()));
					faceCollection.trainall();
				} catch (Exception e) {
					throw new RuntimeException(e);
				}
			} else {
				request.getRequestDispatcher("/view/regFailure.html").forward(request, response);
			}

		} else if (actionUrl.equals("/view/registerDouble.action")) {
			// 获取参数
			String roomType = request.getParameter("roomType");
			int roomNumber = Integer.parseInt(request.getParameter("roomNumber"));

			String guestId1 = request.getParameter("guestId1");
			String guestName1 = request.getParameter("guestName1");
			String sex1 = request.getParameter("sex1");
			String phoneNumber1 = request.getParameter("phoneNumber1");
			
			String guestId2 = request.getParameter("guestId2");
			String guestName2 = request.getParameter("guestName2");
			String sex2 = request.getParameter("sex2");
			String phoneNumber2 = request.getParameter("phoneNumber2");
			
			room ro = new room();
			int roo=ro.upDateRoomIn();
			ro.setRoomNumber(roomNumber);
//			ro.upDateRoomIn();
			
			guest ui1 = new guest();
			guestIn in1 = new guestIn();
			guest ui2 = new guest();
			guestIn in2 = new guestIn();
			// 调用相应业务方法，根据返回值选择合适的视图层响应用户
			ui1.setName(guestName1);
			ui1.setGuestId(guestId1);
			ui1.setRoomNumber(roomNumber);
			ui1.setPhoneNumber(phoneNumber1);
			ui1.setSex(sex1);
			
			in1.setGuestId(guestId1);
			in1.setRoomNumber(roomNumber);
			
			ui2.setName(guestName2);
			ui2.setGuestId(guestId2);
			ui2.setRoomNumber(roomNumber);
			ui2.setPhoneNumber(phoneNumber2);
			ui2.setSex(sex2);
			
			in2.setGuestId(guestId2);
			in2.setRoomNumber(roomNumber);
			Beifen bf1 = new Beifen();
			Beifen bf2 = new Beifen();
			bf1.setGuestId(guestId1);
			bf1.setRoomNumber(roomNumber);
			bf1.setName(guestName1);
			bf1.setSex(sex1);
			bf1.setRoomType(roomType);
			bf1.setPhoneNumber(phoneNumber1);
			int r1 = bf1.backup();
			bf2.setGuestId(guestId2);
			bf2.setRoomNumber(roomNumber);
			bf2.setName(guestName2);
			bf2.setSex(sex2);
			bf2.setRoomType(roomType);
			bf2.setPhoneNumber(phoneNumber2);
			int r2 = bf2.backup();
			FaceCollection faceCollection=new FaceCollection();
			try {
				faceCollection.collect(String.valueOf(in1.getRoomNumber()),in1.getGuestId(),"guest.guest");
				in1.SetFace(1);
				faceCollection.collect(String.valueOf(in2.getRoomNumber()),in2.getGuestId(),"guest.guest");
				in2.SetFace(1);
			} catch (Exception e) {
				throw new RuntimeException(e);
			}
			int result1 = ui1.registerGuest();
			int resultIn1 = in1.registerGuestIn();
			int result2 = ui2.registerGuest();
			int resultIn2 = in2.registerGuestIn();
			if (result1 == 1 && resultIn1 == 1 && result2 == 1 && resultIn2 == 1 && r1 == 1 && r2 == 1) {

				request.getRequestDispatcher("/view/regSuccess.html").forward(request, response);

				try {
					faceCollection.train(String.valueOf(in1.getRoomNumber()));
					faceCollection.trainall();
				} catch (Exception e) {
					throw new RuntimeException(e);
				}

			} else {
				request.getRequestDispatcher("/view/regFailure.html").forward(request, response);
			}
		}

		else if (actionUrl.equals("/view/check.action")) {
			request.getRequestDispatcher("/view/findInUsed.jsp").forward(request, response);

		} else if (actionUrl.equals("/view/checkName.action")) {
			String username = request.getParameter("r");
			if (username.equals("标单")) {
				ArrayList<room> list = room.getStanderSingleRoomList();
				request.setAttribute("list", list);
				request.getRequestDispatcher("/view/roomInformation.jsp").forward(request, response);
			}
			if (username.equals("标双")) {
				ArrayList<room> list = room.getStanderDoubleRoomList();
				request.setAttribute("list", list);
				request.getRequestDispatcher("/view/roomInformation.jsp").forward(request, response);
			}
			if (username.equals("商务单人间")) {
				ArrayList<room> list = room.getBusinessSingleRoomList();
				request.setAttribute("list", list);
				request.getRequestDispatcher("/view/roomInformation.jsp").forward(request, response);
			}
			if (username.equals("商务双人间")) {
				ArrayList<room> list = room.getBusinessDoubleRoomList();
				request.setAttribute("list", list);
				request.getRequestDispatcher("/view/roomInformation.jsp").forward(request, response);
			}
			if (username.equals("豪华大床房")) {
				ArrayList<room> list = room.getLuxurySingleRoomList();
				request.setAttribute("list", list);
				request.getRequestDispatcher("/view/roomInformation.jsp").forward(request, response);
			}
			if (username.equals("豪华双床房")) {
				ArrayList<room> list = room.getLuxuryDoubleRoomList();
				request.setAttribute("list", list);
				request.getRequestDispatcher("/view/roomInformation.jsp").forward(request, response);
			}
		}

	}

}
