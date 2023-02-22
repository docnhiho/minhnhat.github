package mushtaq.entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class LoaisanphamMapper implements RowMapper<Loaisanpham> {
	
	public Loaisanpham mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Loaisanpham loaisanpham = new Loaisanpham();
		loaisanpham.setId(rs.getInt("id"));
		loaisanpham.setTenloaisp(rs.getString("tenloaisp"));
		return loaisanpham;
	}

}
