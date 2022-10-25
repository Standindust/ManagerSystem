
package login;

import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;
import common.*;
import login.*;


public class LoginBean
{
	
  public int getUsersLoginInfor(String UserName,String PassWords, String UserType) throws Exception {
               Connection con=null;
               Statement  Stmt=null;
               DataBase database = new DataBase();
               ResultSet rs =null;
               int nResult=0;
         try {
               con = database.getConnection();                            
               String sql = "select* from Users where ( UserType='"+UserType+"')and(UserName='"
                            +UserName+"')and(PassWords='"+PassWords+"')"; 
               Stmt = con.createStatement();
               rs = Stmt.executeQuery( sql );
              if (rs.next())
                           {
                           	sql = "select * from Employees where EmpName='"+UserName+"'";
                           	rs = Stmt.executeQuery( sql );
                           	if (rs.next())
                           	   {
                           		nResult=1;//��ѯ��ȷ
                           		}
                           	else{
                           		nResult=3;//��˾�����ڸ�Ա��
                           		}
                           		 
                           }  	
    	       else        
    	                   {
    	                 	nResult=2;
    	      	           }
     	      return nResult;                                 
              }
         catch( SQLException ex )
	    	 {
		 	        ex.printStackTrace( System.err );
			        nResult=0;
                    return nResult;
	    	 }     
        finally
              {
               database.close(null,Stmt,con);
               }
  } 
    public int SelectOneUsersLoginInfor( String UserId,String UserName,String PassWords) throws Exception {
               Connection con=null;
               Statement  Stmt=null;
               DataBase database = new DataBase();
               ResultSet rs =null;
               int nResult=0;
         try {
               con = database.getConnection();                            
               String sql = "select* from Users where ( UserId='"+UserId+"')and(UserName='"
                            +UserName+"')and(PassWords='"+PassWords+"')"; 
               Stmt = con.createStatement();
               rs = Stmt.executeQuery( sql );
              if (rs.next())
                           {
                           		nResult=1;//��ѯ��ȷ
                           }  	
    	       else        
    	                   {
    	                 	nResult=2;
    	      	           }
     	      return nResult;                                 
              }
         catch( SQLException ex )
	    	 {
		 	        ex.printStackTrace( System.err );
			        nResult=0;
                    return nResult;
	    	 }     
        finally
              {
               database.close(null,Stmt,con);
               }
  }
  //���һ����¼�û��Ļ�����Ϣ
  public int InsertUsersLoginUser(String UserId,String UserName,String PassWords,String UserType) throws Exception  
              
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT UserId FROM Users WHERE UserId='"+UserId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
               
               nResult=2;       	
            }
         else
           {
               sql= "INSERT into Users(UserId,UserName,PassWords,UserType)values('"+UserId+"','"
               +UserName+"','"+PassWords+"','"+UserType+"')" ;
               nResult = Stmt.executeUpdate(sql);  
           }
             return nResult;
         }  
         catch( SQLException ex )
	    	{
			     ex.printStackTrace( System.err );
			     nResult=0;
            return nResult;
	    	}
        finally{
             database.close(null,Stmt,con);
            }      
      
      }
      

     
   //����һ����¼�û��Ļ�����Ϣ
 public int updateUsersLoginUser(String UserId,String UserName,String PassWords,String UserType) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "UPDATE Users set UserId='"+UserId+"',UserName='"+UserName+"',PassWords='"
                       +PassWords+"',UserType='"+UserType+"' where UserId='"+UserId+"'";
         Stmt = con.createStatement();
         nResult = Stmt.executeUpdate(sql);     
         return nResult;
         }  
         catch( SQLException ex )
	    	{
			   ex.printStackTrace( System.err );
			   nResult=0;
               return nResult;
	    	}
         finally
            {
               database.close(null,Stmt,con);
             }      
      
   } 
      //����һ����¼�û��Ļ�����Ϣ,���ǲ��ı�����Ȩ��
 public int updateUsersLoginUserSpacial(String UserId,String UserName,String PassWords) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "UPDATE Users set UserId='"+UserId+"',UserName='"+UserName+"',PassWords='"
                       +PassWords+"' where UserId='"+UserId+"'";
         Stmt = con.createStatement();
         nResult = Stmt.executeUpdate(sql);     
         return nResult;
         }  
         catch( SQLException ex )
	    	{
			   ex.printStackTrace( System.err );
			   nResult=0;
               return nResult;
	    	}
         finally
            {
               database.close(null,Stmt,con);
             }      
      
   }
  //�޸�һ����¼�û���Ȩ��
 public int updateUsersLoginUserQuanxian(String UserId,String UserType) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "UPDATE Users set UserId='"+UserId+"',UserType='"+UserType+"' where UserId='"+UserId+"'";
         Stmt = con.createStatement();
         nResult = Stmt.executeUpdate(sql);     
         return nResult;
         }  
         catch( SQLException ex )
	    	{
			   ex.printStackTrace( System.err );
			   nResult=0;
               return nResult;
	    	}
         finally
            {
               database.close(null,Stmt,con);
             }      
      
   }
     //�޸�һ����¼�����û�������
 public int updateUsersLoginUserMima(String UserId,String UserName,String PassWords) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "select * from Employees Where (EmpId='"+UserId+"')and(EmpName='"+UserName+"')";
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );     
          if (rs.next())
                     {
                     sql = "UPDATE Users set PassWords='"+PassWords+"'where UserId='"+UserId+"'";
                     nResult = Stmt.executeUpdate(sql);   
                     }  	
    	       else        
    	              {
    	                 	nResult=2;
    	      	       }
     	      return nResult;                                 
              }
         catch( SQLException ex )
	    	{
			   ex.printStackTrace( System.err );
			   nResult=0;
               return nResult;
	    	}
         finally
            {
               database.close(null,Stmt,con);
             }      
      
   }
    
   
 //ɾ��һ����¼�û��Ļ�����Ϣ
 public int deleteOneUsersLoginUser(String UserId) throws Exception 
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT UserId FROM Users WHERE UserId='"+UserId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
             sql="DELETE  from Users where UserId='"+UserId+"'";
             nResult = Stmt.executeUpdate(sql);	    	
             }
         else
            {
              nResult=2;      
            }
             return nResult;
            }  
         catch( SQLException ex )
	    	{
			     ex.printStackTrace( System.err );
			     nResult=0;
                 return nResult;
	    	}
         finally{
                 database.close(null,Stmt,con);
                 }      
      
   } 
      //�����û��ı�Ž��в�ѯĳһ���û���¼����ϸ��Ϣ
 public Login getUsersLoginDetails(String UserId) throws Exception {
    Connection con=null;
    PreparedStatement prepStmt=null;
    DataBase database = new DataBase();
    ResultSet rs =null;
    try {
      con=database.getConnection();
      String selectStatement = "select * " + "from Users where UserId = ? ";
      prepStmt = con.prepareStatement(selectStatement);
      prepStmt.setString(1, UserId);
      rs = prepStmt.executeQuery();
      if (rs.next()) {
                      Login  bd = new Login(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
                      prepStmt.close();
                      return bd;
                     }
      else 
                     {
                      return null;
                      }
                  }
     finally
           {
               database.closeResultSet(rs);
               database.closePrepStmt(prepStmt);
               database.closeConnection(con);
            }
  } 
	
}