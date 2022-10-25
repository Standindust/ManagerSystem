package hotel.model;

public class Beifen {
	private String name,sex,phoneNumber,roomType,guestId;
private int roomNumber;
	public int getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}

	public String getGuestId() {
		return guestId;
	}

	public void setGuestId(String guestId) {
		this.guestId = guestId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}



	public int backup(){
		String sql="insert into backup values('"+this.roomNumber+"','"+this.guestId+"','"+this.name+"','"+this.sex+"','"+this.phoneNumber+"','"+this.roomType+"',"+"NOW()"+","+"NULL"+");";
		System.out.print(sql);
		DBBean jdbc=new DBBean();		 
		int result=jdbc.executeUpdate(sql);
	    jdbc.close();
	    return result;
	}

}
