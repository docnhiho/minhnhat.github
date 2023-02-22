package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.ReceiptDAO;
import mushtaq.dao.ReceiptItemDAO;
import mushtaq.dao.SanphamDAO;
import mushtaq.entities.Receipt;
import mushtaq.entities.ReceiptItem;
import mushtaq.entities.Sanpham;

@Service
@Transactional
public class ReceiptItemService {
	
	@Autowired
	private ReceiptItemDAO receiptItemDAO;
	
	@Autowired
	private ReceiptDAO receiptDAO;
	@Autowired
	private SanphamDAO sanphamDAO;
	
	public List<ReceiptItem> findAll() {
		return receiptItemDAO.findAll();
	}
	
	public List<ReceiptItem> findReceiptid(int id) {
		return receiptItemDAO.findReceiptid(id);
	}
	
//	public List<ReceiptItem> findAllById(int id) {
//		return receiptItemDAO.findAllById(id);
//	}
	
	public List<Receipt> listReceipt() {
		return receiptDAO.findAll();
	}
	
	public List<Sanpham> listSanpham() {
		return sanphamDAO.findAll();
	}

	public ReceiptItem findById(int receiptitemid) {
		return receiptItemDAO.findById(receiptitemid);
	}
	
	public void save(ReceiptItem receiptitem){
		receiptItemDAO.save(receiptitem);
	}

	public void update(ReceiptItem receiptitem){
		receiptItemDAO.update(receiptitem);
	}
	
	public void delete(int id){
		receiptItemDAO.delete(id);
	}
	
	
}
