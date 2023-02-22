package mushtaq.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.entities.ReceiptItem;
import mushtaq.entities.ReceiptItemMapper;

@Repository
@Transactional
public class ReceiptItemDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void save(ReceiptItem receiptitem) {
//		String sql = "SET FOREIGN_KEY_CHECKS = 0;";
		String sql = "INSERT INTO receiptitem (receiptid, sanphamid, receiptItemQuantity, receiptItemPrice) values (?,?,?,?);";
//		String sql2 = "SET FOREIGN_KEY_CHECKS = 1;";
		jdbcTemplate.update(sql,receiptitem.getReceiptid(), receiptitem.getSanphamid(),
				receiptitem.getReceiptItemQuantity(), receiptitem.getReceiptItemPrice());
	}

	public void delete(int receiptitemid) {
		String sql = " DELETE FROM receiptitem WHERE receiptitemid = " + receiptitemid;
		jdbcTemplate.update(sql);
	}

	public void update(ReceiptItem receiptitem) {
		String sql = " UPDATE sanphamid =? receiptid =? receiptItemPrice= ? receiptItemQuantity = ?";
		jdbcTemplate.update(sql, receiptitem.getSanphamid(), receiptitem.getReceiptid(),
				receiptitem.getReceiptItemPrice(), receiptitem.getReceiptItemQuantity());
	}

	public ReceiptItem findById(int receiptitemid) {
		String sql = "SELECT * FROM receiptitem WHERE receiptid = ?";
		return jdbcTemplate.queryForObject(sql, new ReceiptItemMapper(), receiptitemid);
	}
	

//	public List<ReceiptItem> findAll() {
//		String sql = "select  A.receiptitemid, A.sanphamid, C.tensp, C.gia, A.receiptItemQuantity, A.receiptItemPrice, (A.receiptItemQuantity * A.receiptItemPrice) as receiptItemTongtien, B.receiptid, B.receiptName,\r\n"
//				+ "B.receiptAddress, B.receiptDate, B.receiptPhone, B.receiptMail from receiptitem A \r\n"
//				+ "inner join receipt B on B.receiptid = A.receiptid \r\n"
//				+ "inner join sanpham C on C.id = A.sanphamid\r\n" + "group by A.receiptitemid order by A.receiptitemid asc; ";
//		return jdbcTemplate.query(sql, new ReceiptItemMapper());
//	}
	
//	public List<ReceiptItem> findAll() {
//		String sql = "select  A.receiptid, A.sanphamid, C.tensanpham, C.gia, A.receiptItemQuantity, A.receiptItemPrice, (A.receiptItemQuantity * A.receiptItemPrice) as receiptItemTongtien, B.id, B.receiptName,\r\n" + 
//				"				B.receiptAddress, B.receiptDate, B.receiptPhone, B.receiptMail from receiptitem A \r\n" + 
//				"				inner join receipt B on B.id = A.receiptid \r\n" + 
//				"				inner join sanpham C on C.id = A.sanphamid; ";
//		return jdbcTemplate.query(sql, new ReceiptItemMapper());
//	}
	
	public List<ReceiptItem> findAll() {
		String sql = "select * from receiptitem; ";
		return jdbcTemplate.query(sql, new ReceiptItemMapper());
	}
		
	public List<ReceiptItem> findReceiptid(int id) {
		String sql = "          select  A.receiptid, B.id, A.sanphamid, C.tensanpham,C.gia, A.receiptItemPrice, A.receiptItemQuantity, (A.receiptItemQuantity * A.receiptItemPrice) as receiptItemTongtien, B.receiptName,\r\n" + 
				"				B.receiptAddress, B.receiptDate, B.receiptPhone, B.receiptMail from receiptitem A \r\n" + 
				"				inner join receipt B on B.id = A.receiptid \r\n" + 
				"				inner join sanpham C on C.id = A.sanphamid  where A.receiptid = ? order by A.receiptid asc;";
		return jdbcTemplate.query(sql, new ReceiptItemMapper(), id);
	}

}
