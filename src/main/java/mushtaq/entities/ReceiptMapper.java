package mushtaq.entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ReceiptMapper implements RowMapper<Receipt> {

	public Receipt mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Receipt receipt = new Receipt();
		receipt.setId(rs.getInt("id"));
		receipt.setEmployeeid(rs.getInt("employeeid"));
		receipt.setReceiptName(rs.getString("receiptName"));
		receipt.setReceiptAddress(rs.getString("receiptAddress"));
		receipt.setReceiptMail(rs.getString("receiptMail"));
		receipt.setReceiptPhone(rs.getString("receiptPhone"));
		receipt.setReceiptStatus(rs.getInt("receiptStatus"));
		receipt.setReceiptDate(rs.getDate("receiptDate"));
		receipt.setPaymentStatus(rs.getString("paymentStatus"));

		return receipt;
	}
}
