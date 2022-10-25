package hotel.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class room {
	public room(int roomNumber){
		this.roomNumber=roomNumber;
	}
	public room() {
		// TODO Auto-generated constructor stub
	}
	private int roomNumber;
	private String roomType;
	private int roomBed;
	private int isUsed=0;
	
	public int getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public int getRoomBed() {
		return roomBed;
	}
	public void setRoomBed(int roomBed) {
		this.roomBed = roomBed;
	}
	public int getisUsed() {
		return this.isUsed;
	}
	public void setUsed() {
		this.isUsed=1;
	}
	public void setUsed(int i) {
		this.isUsed = i;
	}
	public static ArrayList<room> getAllRoomList(){
		ArrayList<room> list=new ArrayList<room>();
		String sql="select * from room";
		DBBean jdbc=new DBBean();
		ResultSet rs=jdbc.executeQuery(sql);
	    try {
			while(rs.next()){
				room r=new room();
				r.setRoomNumber(rs.getInt("roomNumber"));
				r.setRoomType(rs.getString("roomType"));
				r.setRoomBed(rs.getInt("roomBed"));
				r.setUsed(rs.getInt("IsUsed"));
				list.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	    jdbc.close();
	    return list;
	}
	public int upDateRoomIn(){
		String sql="update room set isUsed=1 where roomNumber= "+this.roomNumber+";";
		System.out.print(sql);
		DBBean jdbc=new DBBean();		 
		int result=jdbc.executeUpdate(sql);
	    jdbc.close();
	    return result;
	}
	public int upDateRoomOut(){
		String sql="update room set isUsed=0 where roomNumber= "+this.roomNumber+";";
		System.out.print(sql);
		DBBean jdbc=new DBBean();		 
		int result=jdbc.executeUpdate(sql);
	    jdbc.close();
	    return result;
	}
			
	public static ArrayList<room> getStanderSingleRoomList(){
		ArrayList<room> list=new ArrayList<room>();
		String roomType="标准单人间";
		String sql="select * from room where roomType='"+roomType+"';";
		DBBean jdbc=new DBBean();
		ResultSet rs=jdbc.executeQuery(sql);
	    try {
			while(rs.next()){
				room r=new room();
				r.setRoomNumber(rs.getInt("roomNumber"));
				r.setRoomBed(rs.getInt("roomBed"));
				r.setUsed(rs.getInt("IsUsed"));
				list.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	    jdbc.close();
	    return list;
	}
	public static ArrayList<room> getStanderDoubleRoomList(){
		ArrayList<room> list=new ArrayList<room>();
		String roomType="标准双人间";
		String sql="select * from room where roomType='"+roomType+"';";
		DBBean jdbc=new DBBean();
		ResultSet rs=jdbc.executeQuery(sql);
	    try {
			while(rs.next()){
				room r=new room();
				r.setRoomNumber(rs.getInt("roomNumber"));
				r.setRoomBed(rs.getInt("roomBed"));
				r.setUsed(rs.getInt("IsUsed"));
				list.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	    jdbc.close();
	    return list;
	}
	public static ArrayList<room> getBusinessSingleRoomList(){
		ArrayList<room> list=new ArrayList<room>();
		String roomType="商务单人间";
		String sql="select * from room where roomType='"+roomType+"';";
		DBBean jdbc=new DBBean();
		ResultSet rs=jdbc.executeQuery(sql);
	    try {
			while(rs.next()){
				room r=new room();
				r.setRoomNumber(rs.getInt("roomNumber"));
				r.setRoomBed(rs.getInt("roomBed"));
				r.setUsed(rs.getInt("IsUsed"));
				list.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	    jdbc.close();
	    return list;
	}
	public static ArrayList<room> getBusinessDoubleRoomList(){
		ArrayList<room> list=new ArrayList<room>();
		String roomType="商务双人间";
		String sql="select * from room where roomType='"+roomType+"';";
		DBBean jdbc=new DBBean();
		ResultSet rs=jdbc.executeQuery(sql);
	    try {
			while(rs.next()){
				room r=new room();
				r.setRoomNumber(rs.getInt("roomNumber"));
				r.setRoomBed(rs.getInt("roomBed"));
				r.setUsed(rs.getInt("IsUsed"));
				list.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	    jdbc.close();
	    return list;
	}
	public static ArrayList<room> getLuxurySingleRoomList(){
		ArrayList<room> list=new ArrayList<room>();
		String roomType="豪华大床房";
		String sql="select * from room where roomType='"+roomType+"';";
		DBBean jdbc=new DBBean();
		ResultSet rs=jdbc.executeQuery(sql);
	    try {
			while(rs.next()){
				room r=new room();
				r.setRoomNumber(rs.getInt("roomNumber"));
				r.setRoomBed(rs.getInt("roomBed"));
				r.setUsed(rs.getInt("IsUsed"));
				list.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	    jdbc.close();
	    return list;
	}
	public static ArrayList<room> getLuxuryDoubleRoomList(){
		ArrayList<room> list=new ArrayList<room>();
		String roomType="豪华双床房";
		String sql="select * from room where roomType='"+roomType+"';";
		DBBean jdbc=new DBBean();
		ResultSet rs=jdbc.executeQuery(sql);
	    try {
			while(rs.next()){
				room r=new room();
				r.setRoomNumber(rs.getInt("roomNumber"));
				r.setRoomBed(rs.getInt("roomBed"));
				r.setUsed(rs.getInt("IsUsed"));
				list.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	    jdbc.close();
	    return list;
	}
public static void main(String[] args) {
	System.out.println(getStanderSingleRoomList());
}
	}
	
	


