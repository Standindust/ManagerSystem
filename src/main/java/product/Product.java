package product;
public class Product implements Comparable{ 
        private String ProId = null;		
        private String ProName = null;	
        private String TypeId = null;	
        private String ProUnit = null;     
        private float   ProPrice = 0.0F;
        private float   NowPrice = 0.0F;	
        private String Quantity = null;
        private String Memo = null;
   public  void Product(){
              ProId="";		
              ProName="";	
              TypeId="";	
              ProUnit = "" ;     
              ProPrice = 0;
              NowPrice = 0;	
              Quantity = "";
              Memo = "";   
               }
            
  Product(String ProId,String ProName,String TypeId ,String ProUnit,
	    float ProPrice,float NowPrice,String Quantity,String Memo){
      	this.ProId = ProId;
      	this.ProName = ProName;
      	this.TypeId = TypeId;
      	this.ProUnit = ProUnit;
      	this.ProPrice = ProPrice;
      	this.NowPrice = NowPrice ;
      	this.Quantity = Quantity;
      	this.Memo = Memo;
      	}
         
        
        public void setProId(String newProId){
                this.ProId = newProId;
        }
        public String getProId(){
                return ProId;
        }
        public void setProName(String newProName) {
                this.ProName = newProName;
        }
        public String getProName() {
                return ProName;
        }
        public void setTypeId(String newTypeId) {
                this.TypeId = newTypeId;
        }
        public String getTypeId() {
                return TypeId;
        }
        public void setProUnit(String newProUnit) {
                this.ProUnit = newProUnit;
        }
        public String getProUnit() {
                return ProUnit;
        }
        public void setProPrice(float newProPrice) {
                this.ProPrice = newProPrice;
        }
        public float getProPrice() {
                return ProPrice;
        }
        public void setNowPrice(float newNowPrice) {
                this.NowPrice = newNowPrice;
        }
        public float getNowPrice() {
                return NowPrice;
        }

        public void setQuantity(String newQuantity) {
                this.Quantity = newQuantity;
        }
        public String getQuantity() {
                return Quantity;
        }
        public void setMemo(String newMemo) {
                this.Memo = newMemo;
        }
        public String getMemo() {
                return Memo;
        }
       ////////////////////////////////////////////
       
        public int compareTo(Object o){
      	Product n = (Product)o;
      	int lastCmp = ProName.compareTo(n.ProName);
      	return(lastCmp);
      	}
      	
};
