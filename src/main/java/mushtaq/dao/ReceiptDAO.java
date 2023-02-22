package mushtaq.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.entities.Receipt;
import mushtaq.entities.ReceiptMapper;

@Repository
@Transactional
public class ReceiptDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void save(Receipt receipt) {
		String sql = "INSERT INTO receipt (employeeid,receiptName, receiptMail, receiptAddress, receiptPhone, receiptStatus, paymentStatus) values (?,?,?,?,?,1,'Chưa Thanh Toán')";
		jdbcTemplate.update(sql, receipt.getEmployeeid(), receipt.getReceiptName(), receipt.getReceiptMail(), receipt.getReceiptAddress(), 
				receipt.getReceiptPhone());
	}
	
	public void saveol(Receipt receipt) {
		String sql = "INSERT INTO receipt (receiptName, receiptMail, receiptAddress, receiptPhone, receiptStatus, paymentStatus) values (?,?,?,?,1,'Chưa Thanh Toán')";
		jdbcTemplate.update(sql, receipt.getReceiptName(), receipt.getReceiptMail(), receipt.getReceiptAddress(), 
				receipt.getReceiptPhone());
	}

	public void delete(int id) {
		String sql = " UPDATE receipt  set receiptStatus = 0 where id = " + id;
		jdbcTemplate.update(sql);
	}

	public void restore(int id) {
		String sql = " UPDATE receipt  set receiptStatus = 1 where id = " + id;
		jdbcTemplate.update(sql);
	}

	public void update(Receipt receipt) {
		String sql = " UPDATE receipt set receiptName = ?, receiptMail = ?, receiptAddress = ?,  receiptPhone = ?,  paymentStatus = ? where id = ?";
		jdbcTemplate.update(sql, receipt.getReceiptName(), receipt.getReceiptMail(),  receipt.getReceiptAddress(), 
				receipt.getReceiptPhone(), receipt.getPaymentStatus(), receipt.getId());
	}

	public Receipt findById(int id) {
		String sql = "SELECT * FROM receipt WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new ReceiptMapper(), id);
	}
	
//	public List<Receipt> findLastId() {
//		String sql = "SELECT *\r\n" + 
//				"FROM receipt\r\n" + 
//				"WHERE id = ( SELECT MAX(id) FROM receipt );";
//		return jdbcTemplate.query(sql, new ReceiptMapper());
//	}
	

	public List<Receipt> findAll() {
		String sql = "SELECT * From receipt WHERE receiptStatus = 1";

		return jdbcTemplate.query(sql, new ReceiptMapper());
	}

	public List<Receipt> findAllBin() {
		String sql = "SELECT * from receipt WHERE receiptStatus = 0";

		return jdbcTemplate.query(sql, new ReceiptMapper());
	}

	public List<Receipt> findAllreceipt(int id) {
		String sql = "select  A.receiptid, B.id, A.sanphamid, B.employeeid, C.tensanpham,C.gia, A.receiptItemPrice, A.receiptItemQuantity, (A.receiptItemQuantity * A.receiptItemPrice) as receiptItemTongtien, B.receiptName,\r\n"
				+ "								B.receiptAddress, B.receiptDate, B.receiptPhone, B.receiptMail, B.receiptStatus, B.paymentStatus from receipt B \r\n"
				+ "								inner join receiptitem A on B.id = A.receiptid\r\n"
				+ "								inner join sanpham C on C.id = A.sanphamid  where B.id = ? order by A.receiptid asc;";
		return jdbcTemplate.query(sql, new ReceiptMapper(), id);
	}
	
	public Receipt findLastReceipt(int id) {
		String sql = " select * from receipt where id = ?";
		return jdbcTemplate.queryForObject(sql, new ReceiptMapper(), id);
	}	
	
	public int getId() {
		try {
			String sql = "SELECT id FROM receipt where id = ( SELECT MAX(id) FROM receipt )";
			int id = jdbcTemplate.queryForObject(sql, int.class);
			return id;
		} catch (Exception ex) {
			return getId();
		}
	}
	
	public int getEl() {
		try {
			String sql = "SELECT employeeid FROM employee where  username like "+'?'+" and password like "+'?'+";";

			int employeeid = jdbcTemplate.queryForObject(sql,
					int.class);

			return employeeid;
		} catch (Exception ex) {
			return getEl();
		}
	}

}
