package mushtaq.entities;

public class ReceiptItemID {
     private int receiptid;
     private int sanphamid;
     
     public ReceiptItemID() {
     }
     
     public ReceiptItemID(int receiptid, int sanphamid) {
    	 super();
    	 this.receiptid = receiptid;
    	 this.sanphamid = sanphamid;	 
     }

	public int getReceiptid() {
		return receiptid;
	}

	public void setReceiptid(int receiptid) {
		this.receiptid = receiptid;
	}

	public int getSanphamid() {
		return sanphamid;
	}

	public void setSanphamid(int sanphamid) {
		this.sanphamid = sanphamid;
	}
     
     
}
