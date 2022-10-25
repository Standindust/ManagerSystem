package hotel.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class guestIn {
	private String guestId;
	private int roomNumber;
	private int faceinfo;
	public String getGuestId() {
		return guestId;
	}

	public void setGuestId(String guestId) {
		this.guestId = guestId;
	}

	public int getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}

	public int registerGuestIn() {
		String sql = "insert into guestIn values('" + this.guestId + "','" + this.roomNumber + "'," + "NOW()" + ","
				+ "NULL"+  "," +this.faceinfo+ ");";
		System.out.print(sql);
		DBBean jdbc = new DBBean();
		int result = jdbc.executeUpdate(sql);
		jdbc.close();
		return result;
	}

	public int registerGuestOut() {
		String sql = "UPDATE guestIn SET outTime=NOW() WHERE roomNumber=" + this.roomNumber + ";";
		System.out.print(sql);
		DBBean jdbc = new DBBean();
		int result = jdbc.executeUpdate(sql);
		jdbc.close();
		return result;
	}

	public static ArrayList getGuestInList() {
		ArrayList list = new ArrayList();
		String sql = "select *from(select * from guest left join room USING(roomNumber))e left join guestIn USING(guestId,roomNumber);";
		DBBean jdbc = new DBBean();
		ResultSet rs = jdbc.executeQuery(sql);
		try {
			while (rs.next()) {
				guest g = new guest();
				g.setName(rs.getString("name"));
				g.setGuestId(rs.getString("guestId"));
				g.setRoomNumber(rs.getInt("roomNumber"));
				g.setSex(rs.getString("sex"));
				g.setPhoneNumber(rs.getString("phoneNumber"));
				list.add(g);
				room r = new room();
				r.setRoomNumber(rs.getInt("roomNumber"));
				r.setRoomType(rs.getString("roomType"));
				r.setRoomBed(rs.getInt("roomBed"));
				r.setUsed(rs.getInt("IsUsed"));
				list.add(r);
				guestIn in = new guestIn();
				in.setGuestId(rs.getString("guestId"));
				in.setRoomNumber(rs.getInt("roomNumber"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		jdbc.close();
		return list;
	}

	public void SetFace(int faceinfo) {
		this.faceinfo=faceinfo;
	}
}
