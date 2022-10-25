package product;

import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;
import product.*;
import common.*;
import shopping.*;

public class ProductBean
{
 
 public boolean  addProduct(Product product) throws Exception
  {
	
    if( product==null ) return false;
	DataBase database = new DataBase();
	boolean result = false;
    Connection con = null;
    PreparedStatement prepStmt = null;
    ResultSet rs=null;
    try {
      con = database.getConnection();                            
      String sql = "insert into Product(ProId,ProName,TypeId,ProUnit,NowPrice,ProPrice,Quantity)values('"
      +product.getProId()+"','"+product.getProName()+"','"+product.getTypeId()+"','"
      +product.getProUnit()+"',"+product.getNowPrice()+","+product.getProPrice()+",'"+product.getQuantity()+"')";
      prepStmt = con.prepareStatement(sql);
      result = prepStmt.execute(sql);
        }
   catch( SQLException ex )
		{
			ex.printStackTrace( System.err );
			return false;
		}
       finally{
             database.closeResultSet(rs);
             database.closePrepStmt(prepStmt);
             database.closeConnection(con);
           }
        return result;
      }
      ////向数据库中插入一个商品信息
 public int InsertProduct(String ProId,String ProName,String TypeId,
                   String ProUnit,String NowPrice,String ProPrice,String Quantity,String Memo) throws Exception
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
        float nowprice = Float.valueOf(NowPrice);
        float proprice = Float.valueOf(ProPrice);
        
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT ProId FROM Product WHERE ProId='"+ProId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
         	 nResult=2;
         	
            }
         else
           {
              sql="insert into Product(ProId,ProName,TypeId,ProUnit,NowPrice,ProPrice,Quantity,Memo)VALUES('"
              +ProId+"','"+ProName+"','"+TypeId+"','"+ProUnit+"',"+nowprice+","+proprice+",'"+Quantity+"','"+Memo+"')";
              nResult = Stmt.executeUpdate(sql);
              if(nResult==1)
              nResult=1;      
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
     ////删除一个确定商品  
public int deleteProduct(String ProId) throws Exception
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;     
    try {    	 
         con = database.getConnection();                            
         Stmt = con.createStatement();
         String sql="delete from Product where ProId='"+ProId+"'";
          nResult = Stmt.executeUpdate(sql);
          if(nResult==1)
          nResult=1;               
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
   ////根据商品编号查询某一个商品的信息
 public int selsectProduct(String ProId) throws Exception
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;     
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT ProId FROM Product WHERE ProId='"+ProId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
              nResult=1;      
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
   ////修改某一个确定商品的信息
  public int updateProduct(String ProId,String ProName,String TypeId,
                   String ProUnit,String NowPrice,String ProPrice,String Quantity,String Memo) throws Exception
    {	
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
        float nowprice = Float.valueOf(NowPrice);
        float proprice = Float.valueOf(ProPrice);       
    try {  
         con = database.getConnection();                            
         Stmt = con.createStatement();
         String sql= "update Product set ProId='"+ProId+"',ProName='"+ProName
                  +"',TypeId='"+TypeId+"',ProUnit='"+ProUnit+"',NowPrice="+NowPrice
                  +",ProPrice="+ProPrice+",Quantity='"+Quantity+"',Memo='"+Memo+"' where ProId='"+ProId+"'";
              nResult = Stmt.executeUpdate(sql);
         if(nResult==1)
         nResult=1;      
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
 ////////////////////////查询某一个确定的商品的信息
  public Product getProductDetails(String ProId) throws Exception {
	DataBase database = new DataBase();
	boolean result = false;
    Connection con = null;
    PreparedStatement prepStmt = null;
    ResultSet rs = null;
    try {
       con = database.getConnection(); 
       String sql = "select *"+"from  Product where ProId =?";                      
       prepStmt = con.prepareStatement(sql);
       prepStmt.setString(1,ProId);
       rs = prepStmt.executeQuery();
       if(rs.next()){
        Product  product = new Product(rs.getString(1),rs.getString(2),rs.getString(3),
        rs.getString(4),rs.getFloat(5),rs.getFloat(6),rs.getString(7),rs.getString(8));
      	prepStmt.close();
      	return product;
      	}
      	else{
      	return null;	
      	}    	
       }
       finally{
             database.closeResultSet(rs);
             database.closePrepStmt(prepStmt);
             database.closeConnection(con);
          }
      }
 // 查询商品的的信息
	public Vector queryProduct()throws Exception
	{
		Vector vt = new Vector();
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		DataBase database = new DataBase();
		try
		{
			conn = database.getConnection();
			st = conn.createStatement();
			String sql = "SELECT  ProId,ProName,TypeId,ProUnit,ProPrice,NowPrice,Quantity,Memo FROM Product ";
			sql = sql + " ORDER BY ProId ASC";
			rs = st.executeQuery( sql );
			while( rs.next() )
			{
				
				Product  product = new Product(rs.getString(1),rs.getString(2),rs.getString(3),
                                   rs.getString(4),rs.getFloat(5),rs.getFloat(6),rs.getString(7),rs.getString(8));
                vt.add(product);
			   // Product pro = new Product();
			    			    
			   /* pro.setProId(rs.getString(1));
			    pro.setProName(rs.getString(2));
			    pro.setTypeId(rs.getString(3));
			    pro.setProUnit(rs.getString(4));
			    pro.setProPrice(rs.getFloat(5));
			    pro.setNowPrice(rs.getFloat(6));
			    pro.setQuantity(rs.getString(7));
			    pro.setMemo(rs.getString(8));
			    */
				//vt.add(pro);
			}
		}
		catch( SQLException ex )
		{
			ex.printStackTrace( System.err );
		}
		finally
		{
			database.close( rs, st, conn );
		}
		return vt;
	}
////////////////////////////////////////////////////////////////////shopping productbuy//////////////
public int getNumberOf() throws Exception {        
            DataBase database = new DataBase();
            Connection con=null;
            PreparedStatement prepStmt=null;
            ResultSet rs = null;
            ArrayList products = new ArrayList();
    try {
      con = database.getConnection();
      String selectStatement = "select ProId,ProName,TypeId,ProUnit,NowPrice,ProPrice,Quantity,Memo " + "from Product";
      prepStmt = con.prepareStatement(selectStatement);
      rs = prepStmt.executeQuery();

      while (rs.next()) {
         Product bd = new Product(rs.getString(1), rs.getString(2), rs.getString(3),rs.getString(4),rs.getFloat(5),rs.getFloat(6),rs.getString(7),rs.getString(8));
         products.add(bd);
          }
 
          }finally{
           database.closeResultSet(rs);
           database.closePrepStmt(prepStmt);
            database.closeConnection(con);
           }
    return products.size();
   }

  /////////////////////////////////////////根据购物车的内容更新Product表，并且作出统计，对收入表添加

  public void buyProducts(ShoppingCart cart)throws Exception {
                  DataBase database = new DataBase(); 
                  Connection con=null;
                  Collection items = cart.getItems();
                  Iterator i = items.iterator();
    try {
      con=database.getConnection();
      con.setAutoCommit(false);
      while (i.hasNext()) {
        ShoppingCartItem sci = (ShoppingCartItem)i.next();
        Product bd = (Product)sci.getItem();      
        String id = bd.getProId();
        int quantity = sci.getQuantity();
        buyProduct(id, quantity,con);
      }
      con.commit();
      con.setAutoCommit(true);

    } catch (Exception ex) {
      con.rollback();
      throw ex;
    }finally{
       database.closeConnection(con);
    }
  }


  public void buyProduct(String ProId, int quantity,Connection con) throws Exception {
            DataBase database = new DataBase();
            PreparedStatement prepStmt=null;
            ResultSet rs = null;
    
    try{
    	 con=database.getConnection();
         String selectStatement = "select * " + "from Product where ProId = ? ";
         prepStmt = con.prepareStatement(selectStatement);
         prepStmt.setString(1, ProId);
         rs = prepStmt.executeQuery();

      if (rs.next()) {
          prepStmt.close();
          String updateStatement =
                  "update Product set saleamount = saleamount + ? where ProId = ?";
          prepStmt = con.prepareStatement(updateStatement);
          prepStmt.setInt(1, quantity);
          prepStmt.setString(2, ProId);
          prepStmt.executeUpdate();
          prepStmt.close();
           }
    }finally{
      database.closeResultSet(rs);
      database.closePrepStmt(prepStmt);
    }
  }	
 
 }
 