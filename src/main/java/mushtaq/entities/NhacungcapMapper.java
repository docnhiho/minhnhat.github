package mushtaq.entities;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class NhacungcapMapper implements RowMapper<Nhacungcap> {

	public Nhacungcap mapRow(ResultSet rs, int rowNum) throws SQLException {
		Nhacungcap nhacungcap = new Nhacungcap();
		nhacungcap.setId(rs.getInt("id"));
		nhacungcap.setTennhacungcap(rs.getString("tennhacungcap"));
		nhacungcap.setDiachi(rs.getString("diachi"));
		nhacungcap.setSodienthoai(rs.getString("sodienthoai"));
		nhacungcap.setEmail(rs.getString("email"));
		return nhacungcap;
	}

}
