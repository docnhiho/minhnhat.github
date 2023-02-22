package mushtaq.dao;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



import mushtaq.entities.Doanhthu;
import mushtaq.entities.DoanhthuMapper;

@Repository
@Transactional
public class DoanhthuDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	public List<Doanhthu> rpMonth() {
		String sql = "SELECT date(rci.created) as DATE ,YEAR(rci.created) AS YEAR, MONTH(rci.created) as month, SUM(rci.receiptItemPrice * rci.receiptItemQuantity) as totalMoney\r\n" + 
				"								FROM receiptitem as rci \r\n" + 
				"								inner join receipt rc  on rci.receiptid = rc.id\r\n" + 
				"								where rc.paymentStatus like 'Đã Thanh Toán' and rc.receiptStatus like 1 \r\n" + 
				"								GROUP BY MONTH(rci.created);"; 
				
		return jdbcTemplate.query(sql, new DoanhthuMapper());
	}
	
	public List<Doanhthu> rpYear() {
		String sql = "SELECT date(rci.created) as DATE ,YEAR(rci.created) AS YEAR, MONTH(rci.created) as month, SUM(rci.receiptItemPrice * rci.receiptItemQuantity) as totalMoney\r\n" + 
				"								FROM receiptitem as rci \r\n" + 
				"								inner join receipt rc  on rci.receiptid = rc.id\r\n" + 
				"								where rc.paymentStatus like 'Đã Thanh Toán' and rc.receiptStatus like 1 \r\n" + 
				"								GROUP BY YEAR(rci.created);"; 
				
		return jdbcTemplate.query(sql, new DoanhthuMapper());
	}
	
	public List<Doanhthu> rpDate() {
		String sql = "SELECT date(rci.created) as date,YEAR(rci.created) AS YEAR, MONTH(rci.created) as month, SUM(rci.receiptItemPrice * rci.receiptItemQuantity) as totalMoney\r\n" + 
				"								FROM receiptitem as rci \r\n" + 
				"								inner join receipt rc  on rci.receiptid = rc.id\r\n" + 
				"								where rc.paymentstatus like 'Đã Thanh Toán' and rc.receiptStatus like 1 \r\n" + 
				"                                group by date(rci.created) \r\n" + 
				"								order by date(rci.created) desc"; 
				
		return jdbcTemplate.query(sql, new DoanhthuMapper());
	}
	
}
