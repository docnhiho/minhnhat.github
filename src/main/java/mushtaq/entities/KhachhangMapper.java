package mushtaq.entities;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class KhachhangMapper implements RowMapper<Khachhang> {

	public Khachhang mapRow(ResultSet rs, int rowNum) throws SQLException {
		Khachhang khachhang = new Khachhang();
		khachhang.setId(rs.getInt("id"));
		khachhang.setTenkhachhang(rs.getString("tenkhachhang"));
		khachhang.setSdt(rs.getString("sdt"));
		khachhang.setDiachi(rs.getString("diachi"));
		return khachhang;
	}

}
