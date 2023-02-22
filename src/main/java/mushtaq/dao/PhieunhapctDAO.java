package mushtaq.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.entities.Phieunhapct;
import mushtaq.entities.PhieunhapctMapper;

@Repository
@Transactional
public class PhieunhapctDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void save(Phieunhapct phieunhapct) {
		String sql = " INSERT INTO phieunhapct (maphieunhap, tensanpham, loaisanpham, soluong, gia) VALUES (?, ?, ?, ?, ?)" 
				;
		jdbcTemplate.update(sql, phieunhapct.getMaphieunhap(), phieunhapct.getTensanpham(),
				phieunhapct.getLoaisanpham(), phieunhapct.getSoluong(), phieunhapct.getGia());
	}

	public void delete(int id) {
		String sql = "DELETE FROM phieunhapct WHERE id = " + id;
		jdbcTemplate.update(sql);
	}

	public void update(Phieunhapct phieunhapct) {
		String sql = "UPDATE phieunhapct SET maphieunhap = ?,  tensanpham = ?, loaisanpham = ?, soluong= ?, gia = ? WHERE id = ? ";
		jdbcTemplate.update(sql, phieunhapct.getMaphieunhap(), phieunhapct.getTensanpham(),
				phieunhapct.getLoaisanpham(), phieunhapct.getSoluong(), phieunhapct.getGia(), phieunhapct.getId());
	}
	
	public void updateSoluong(Phieunhapct phieunhapct) {
		String sql = "	UPDATE phieunhapct\r\n" + 
				"    INNER JOIN\r\n" + 
				"sanpham ON phieunhapct.id = sanpham.id \r\n" + 
				"SET \r\n" + 
				"phieunhapct.soluong = phieunhapct.soluong - sanpham.soluong\r\n" + 
				"WHERE phieunhapct.id = ?;";
		jdbcTemplate.update(sql, phieunhapct.getSoluong(), phieunhapct.getId());
	}

	public Phieunhapct findById(int id) {
		String sql = "SELECT * FROM phieunhapct WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new PhieunhapctMapper(), id);
	}

	public List<Phieunhapct> findAll() {
		String sql = "SELECT * FROM phieunhapct";
		return jdbcTemplate.query(sql, new PhieunhapctMapper());
	}
	
}
