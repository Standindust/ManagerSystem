package hotel.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class guest {
	public guest (){
		
	}
private String name="";
private String guestId;
private int roomNumber;
private String sex;
private String phoneNumber;
public String getPhoneNumber() {
	return phoneNumber;
}
public void setPhoneNumber(String phonenumber) {
	this.phoneNumber = phonenumber;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}

public String getGuestId() {
	return guestId;
}
public void setGuestId(String i) {
	this.guestId = i;
}

public int getRoomNumber() {
	return roomNumber;
}
public void setRoomNumber(int roomnumber) {
	this.roomNumber = roomnumber;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
} 
//public boolean checkName(){
//	System.out.print(name);
//	boolean exist=false;
//	String sql="select * from guest where name='"+name+"'";
//    DBBean jdbc=new DBBean();
//	ResultSet rs=jdbc.executeQuery(sql);
//    try {
//		if(rs!=null && rs.next())
//		  exist=true;
//	} catch (SQLException e) {
//		e.printStackTrace();
//	}
//    jdbc.close();
//    return exist;
//}
//将注册用户信息添加到数据库的方法
public int registerGuest(){
	String sql="insert into guest values('"+this.guestId+"','"+this.name+"','"+this.roomNumber+"','"+this.sex+"','"+this.phoneNumber+"')";
	DBBean jdbc=new DBBean();		 
	int result=jdbc.executeUpdate(sql);
    jdbc.close();
    return result;
}
//返回数据库中所有用户信息的方法
public static ArrayList<guest> getGuestList(){
	ArrayList<guest> list=new ArrayList<guest>();
	String sql="select *from(select * from guest left join room USING(roomNumber))e left join guestIn USING(guestId,roomNumber);";
	DBBean jdbc=new DBBean();
	ResultSet rs=jdbc.executeQuery(sql);
    try {
		while(rs.next()){
			guest g=new guest();
			g.setName(rs.getString("name"));
			g.setGuestId(rs.getString("guestId"));
			g.setRoomNumber(rs.getInt("roomNumber"));
			g.setSex(rs.getString("sex"));
			g.setPhoneNumber(rs.getString("phoneNumber"));
			list.add(g);
			
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
    jdbc.close();
    return list;
}

}
