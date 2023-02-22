package mushtaq.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.DoanhthuDAO;
import mushtaq.entities.Doanhthu;

@Service
@Transactional
public class DoanhthuService {
		
	@Autowired
	private DoanhthuDAO doanhthuDAO;
	
	public List<Doanhthu> findAllMonth() {
		return doanhthuDAO.rpMonth();
	}
	
	public List<Doanhthu> findAllYear() {
		return doanhthuDAO.rpYear();
	}
	
	public List<Doanhthu> findAllDate() {
		return doanhthuDAO.rpDate();
	}
	
//	public Doanhthu sreachDate(Date date) {
//		return doanhthuDAO.sreachDate(date);
//	}
}
