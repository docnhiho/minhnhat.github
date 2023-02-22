package mushtaq.entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class DoanhthuMapper implements RowMapper<Doanhthu> {
	public Doanhthu mapRow(ResultSet rs, int rowNum) throws SQLException {
		Doanhthu doanhthu = new Doanhthu();

		doanhthu.setDate(rs.getDate("date"));
		doanhthu.setMonth(rs.getInt("month"));
		doanhthu.setYear(rs.getInt("year"));
		doanhthu.setTotalmoney(rs.getFloat("totalmoney"));

		return doanhthu;

	}
}
