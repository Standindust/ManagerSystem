
package login;


import java.sql.*;
/**
 *  �û���¼��Ϣ���
 */

public class Login {
	private String UserId ;   //�û�ID��
	private String UserName; //��¼�û���
	private String PassWords; //��¼����
	private String UserType; //�û�Ȩ��

	public Login(String UserId,String UserName,String PassWords,String UserType)
       {
       		 this.UserId=UserId ;  
        	 this.UserName=UserName; 
	         this.PassWords=PassWords; 
             this.UserType=UserType; 
      	} 
	
	
	public String getUserId() {
		return UserId;
	}
    public void setUserId(String newUserId) {
		UserId = newUserId;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String newUserName) {
		UserName = newUserName;
	}
	public String getPassWords() {
		return PassWords;
	}
	public void setPassWords(String newPassWords) {
	    PassWords = newPassWords;
	}
	public String getUserType() {
		return UserType;
	}
	public void setUserType(String newUserType) {
	    UserType = newUserType;
	}

}
