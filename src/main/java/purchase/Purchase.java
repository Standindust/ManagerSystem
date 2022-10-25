package purchase;



public class Purchase {
        private String PurId;	
        private String ProId;	//商品编号  
        private String ProName;
        private String SalerId;	
        private String EmpId ;      
        private float Price;
        private String Quantity;		
        private String Data ;		
        private String Address ;
        private String Memo ;		//备注
        
        /**
         * 超市向供应厂家购买商品信息实体
         */
    Purchase (String PurId,String ProId,String ProName,String SalerId,String EmpId,float Price,
       String Quantity,String Data,String Address,String Memo)
       {
       	this.PurId = PurId;
      	this.ProId = ProId;
      	this.ProName = ProName;
      	this.SalerId = SalerId;
      	this.EmpId = EmpId;
      	this.Price= Price;
      	this.Quantity = Quantity ;
      	this.Data= Data;
      	this.Address = Address;
      	this.Memo = Memo;
      	} 
        public void setPurId(String newPurId){
                this.PurId = newPurId;
        }
        public String getPurId(){
                return PurId;
        }
        public void setProId(String newProId){
                this.ProId = newProId;
        }
        public String getProId(){
                return ProId;
        }
        public void setProName(String newProName){
                this.ProName = newProName;
        }
        public String getProName(){
                return ProName;
        }
         public void setSalerId(String newSalerId){
                this.SalerId = newSalerId;
        }
        public String getSalerId(){
                return SalerId;
        }
        public void setEmpId(String newEmpId){
                this.EmpId = newEmpId;
        }
        public String getEmpId(){
                return EmpId;
        }
        ////////////////////////////////////////////////
        public void setPrice(float newPrice) {
                this.Price = newPrice;
        }
        public float getPrice() {
                return Price;
        }
        ///////////////////////////////////////////////////
        public void setQuantity(String newQuantity) {
                this.Quantity = newQuantity;
        }
        public String getQuantity() {
                return Quantity;
        }
        ////////////////////////////////////////////////////////////
        public void setData(String newData) {
                this.Data = newData;
        }
        public String getData() {
                return Data;
        }
        ///////////////////////////////////////////////////////
        public void setAddress(String newAddress) {
                this.Address = newAddress;
        }
        public String getAddress() {
                return Address;
        }
        ///////////////////////////////////////////////////////////////////////////////////
        public void setMemo(String newMemo) {
                this.Memo = newMemo;
        }
        public String getMemo() {
                return Memo;
        }
       

}
