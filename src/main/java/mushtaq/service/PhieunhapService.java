package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.PhieunhapDAO;
import mushtaq.entities.Phieunhap;

@Service
@Transactional
public class PhieunhapService {
	@Autowired
	private PhieunhapDAO phieunhapDAO;
	
	public List<Phieunhap> findAll() {
		return phieunhapDAO.findAll();
	}

	public Phieunhap findById(int id) {
		return phieunhapDAO.findById(id);
	}
	
	public void save(Phieunhap phieunhap){
		// validate business
		phieunhapDAO.save(phieunhap);
	}

	public void update(Phieunhap phieunhap){
		// validate business
		phieunhapDAO.update(phieunhap);
	}
	
	public void delete(int id){
		// validate business
		phieunhapDAO.delete(id);
	}
}
