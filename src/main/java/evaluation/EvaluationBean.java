
package evaluation;


import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;
import common.*;


public class EvaluationBean
{
	//����Ա��������Ϣ����Ϣ
   public int InsertEvaluation(String EvaId,String EmpId,String EvaDate,
          String Subject,String Result,String Score,String Memo,String EmpName) throws Exception  
              
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT EmpId FROM Employees WHERE (EmpId='"+EmpId+"')and (EmpName='"+EmpName+"')"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
               sql = "SELECT EvaId FROM Evaluation WHERE EvaId='"+EvaId+"'"; 
               rs = Stmt.executeQuery( sql );
                if(rs.next())
                   {
                 	nResult = 3;  //�����ظ��ı��
                  }
                else
                   {
                    sql= "insert into Evaluation( EvaId,EmpId,EvaDate,Subject,Result,Score,Memo) values('"
                          +EvaId+"','"+EmpId+"','"+EvaDate+"','"+Subject+"','"+Result+"','"+Score+"','"+Memo+"')";
                    nResult = Stmt.executeUpdate(sql); 
                    //nResult=1����ӳɹ�
                 
                	}
               	
            }
         else
           { 
              nResult=2; //�����ڸ�Ա��
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
  //ɾ��һ��ĳһ������Ŀ�����Ϣ
  public int deleteOneEvaluation(String EvaId) throws Exception 
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT EvaId FROM Evaluation WHERE EvaId='"+EvaId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
             sql="DELETE  from Evaluation where EvaId='"+EvaId+"'";
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
   //����һ��Ա�����ڵĻ�����Ϣ
 public int updateEvaluation(String EvaId,String EmpId,String EvaDate,String Subject,String Result,
       String Score,String Memo) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "UPDATE Evaluation set EvaId='"+EvaId+"', EmpId='"+EmpId+"',EvaDate='"+EvaDate+"',Subject='"
                    +Subject+"',Result='"+Result+"',Score='"+Score+"',Memo='"+Memo+"' where EvaId='"+EvaId+"'";
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
  // ��ѯ���е�Ա�����ڵ���Ϣ
	public Vector allEvaluationInfor()throws Exception
	{
		Vector vt = new Vector();
	
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		DataBase database = new DataBase();
		try
	    	{
	    //	vt=null;
			conn = database.getConnection();
			st = conn.createStatement();
			String sql = "SELECT EvaId,EmpId,EvaDate,Subject,Result,Score, Memo FROM Evaluation ";
			sql = sql + " ORDER BY EvaId ASC";
			rs = st.executeQuery( sql );
		    	while( rs.next() )
		          	{
				
				Evaluation  evaluation = new Evaluation(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
                vt.add(evaluation);

		      	}
		    }
    	catch( SQLException ex )
	    	{
			   ex.printStackTrace( System.err );
	    	}
         finally
            {
               database.close(null,st,conn);
             } 
		 
         	return vt;
    }
     // ��ѯһ��Ա�������п��ڵ���Ϣ
	public Vector allOneEmployeeEvaluationInfor(String EmpId)throws Exception
	{
		Vector vt = new Vector();
	//	 vt = null;
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		DataBase database = new DataBase();
		try
	    	{
	       
			conn = database.getConnection();
			st = conn.createStatement();
			String sql = "SELECT EvaId,EmpId,EvaDate,Subject,Result,Score, Memo FROM Evaluation where EmpId='"+EmpId+"'";
			sql = sql + " ORDER BY EvaId ASC";
			rs = st.executeQuery( sql );
		    	while( rs.next() )
		          	{
				
				Evaluation  evaluation = new Evaluation(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
                vt.add(evaluation);

		      	}
		    }
    	catch( SQLException ex )
	    	{
			   ex.printStackTrace( System.err );
	    	}
         finally
            {
               database.close(null,st,conn);
             } 
		 
         	return vt;
    }
 //����Ա���ı�Ž��в�ѯĳһ��Ա���Ŀ�����ϸ��Ϣ
   public Evaluation getEvaluationDetails(String EvaId) throws Exception {
    Connection con=null;
    PreparedStatement prepStmt=null;
    DataBase database = new DataBase();
    ResultSet rs =null;
    try {
      con=database.getConnection();
      String selectStatement = "select EvaId,EmpId,EvaDate,Subject,Result,Score,Memo " + "from Evaluation where EvaId = ? ";
      prepStmt = con.prepareStatement(selectStatement);
      prepStmt.setString(1, EvaId);
      rs = prepStmt.executeQuery();
      if (rs.next()) {
                      Evaluation bd = new Evaluation(rs.getString(1), rs.getString(2), 
                                           rs.getString(3),rs.getString(4),rs.getString(5),
                                           rs.getString(6),rs.getString(7));
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
   //����Ա���ı���Լ����ڱ�Ž��в�ѯĳһ��Ա���Ŀ�����ϸ��Ϣ
	public Evaluation getEvaluationDetailsEmpId(String EvaId,String EmpId) throws Exception
	{

		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		DataBase database = new DataBase();
		try
	    	{
			conn = database.getConnection();
			st = conn.createStatement();
			String sql = sql = "select EvaId,EmpId,EvaDate,Subject,Result,Score,Memo from Evaluation where (EvaId ='"+EvaId+"')and(EmpId='"+EmpId+"')";
			sql = sql + " ORDER BY EvaId ASC";
			rs = st.executeQuery( sql );

      if (rs.next()) {
                      Evaluation bd = new Evaluation(rs.getString(1), rs.getString(2), 
                                           rs.getString(3),rs.getString(4),rs.getString(5),
                                           rs.getString(6),rs.getString(7));
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
               database.closeConnection(conn);
            }

    }
}