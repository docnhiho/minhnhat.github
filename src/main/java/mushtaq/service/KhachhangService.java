package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.KhachhangDAO;
import mushtaq.entities.Khachhang;

@Service
@Transactional
public class KhachhangService {

	@Autowired
	private KhachhangDAO khachhangDAO;

	public List<Khachhang> findAll() {
		return khachhangDAO.findAll();
	}

	public Khachhang findById(int id) {
		return khachhangDAO.findById(id);
	}

	public void save(Khachhang khachhang) {
		khachhangDAO.save(khachhang);
	}

	public void update(Khachhang khachhang) {
		khachhangDAO.update(khachhang);
	}

	public void delete(int id) {
		khachhangDAO.delete(id);
	}
}
