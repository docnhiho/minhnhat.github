package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.NhacungcapDAO;
import mushtaq.entities.Nhacungcap;

@Service
@Transactional
public class NhacungcapService {

	@Autowired
	private NhacungcapDAO nhacungcapDAO;

	public List<Nhacungcap> findAll() {
		return nhacungcapDAO.findAll();
	}

	public Nhacungcap findById(int id) {
		return nhacungcapDAO.findById(id);
	}

	public void save(Nhacungcap nhacungcap) {
		nhacungcapDAO.save(nhacungcap);
	}

	public void update(Nhacungcap nhacungcap) {
		nhacungcapDAO.update(nhacungcap);
	}

	public void delete(int id) {
		nhacungcapDAO.delete(id);
	}
}
