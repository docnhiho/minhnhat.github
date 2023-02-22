package mushtaq.entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ReceiptItemMapper implements RowMapper<ReceiptItem> {

	public ReceiptItem mapRow(ResultSet rs, int rowNum) throws SQLException {		
		ReceiptItem receiptitem = new ReceiptItem();
		receiptitem.setReceiptid(rs.getInt("receiptid"));
		receiptitem.setReceiptItemQuantity(rs.getInt("receiptItemQuantity"));		
		receiptitem.setSanphamid(rs.getInt("sanphamid"));
		//get name theo id
		receiptitem.setTensp(rs.getString("tensanpham"));
		receiptitem.setReceiptItemPrice(rs.getDouble("receiptItemPrice"));
        receiptitem.setReceiptItemTongtien(rs.getDouble("receiptItemTongtien"));
		
		
		return receiptitem;
	}
}