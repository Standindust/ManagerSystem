package supplyer;
public class Supplyer {     //供应商厂家信息
      private String SupId=null;
      private String SupName=null;
      private String Address=null;
      private String Postcode=null;
      private String ProductName=null;
  

   public  Supplyer(String SupId,String SupName,String Address,
                String Postcode,String ProductName){
      	this.SupId = SupId;
      	this.SupName = SupName;
      	this.Address = Address;
      	this.Postcode = Postcode;
      	this.ProductName= ProductName;
   
      	} 	
     
//////////////////////////////////////////////////////////////////////
      public void setSupId(String newSupId){
      	this.SupId = newSupId;
      	}
      public String  getSupId(){
      	return SupId; 
      	}
      public void setSupName(String newSupName){
      	this.SupName = newSupName;
      	}
      public String  getSupName(){
      	return SupName; 
      	}
      public void setAddress(String newAddress){
      	this.Address = newAddress;
      	}
      public String  getAddress(){
      	return Address; 
      	}
     public void setPostcode(String newPostcode){
      	this.Postcode = newPostcode;
      	}
      public String  getPostcode(){
      	return Postcode; 
      	}
      public void setProductName(String newProductName){
      	this.ProductName = newProductName;
      	}
      public String  getProductName(){
      	return ProductName; 
      	}


}
	
    


