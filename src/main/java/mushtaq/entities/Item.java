package mushtaq.entities;

public class Item {

	private Sanpham sanpham = new Sanpham();
	private int quantity;

	public Item() {
		super();
	}

	public Item(Sanpham sanpham, int quantity) {
		super();
		this.sanpham = sanpham;
		this.quantity = quantity;
	}

	public Sanpham getSanpham() {
		return sanpham;
	}

	public void setSanpham(Sanpham sanpham) {
		this.sanpham = sanpham;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}