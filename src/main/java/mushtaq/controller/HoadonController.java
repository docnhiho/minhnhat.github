package mushtaq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mushtaq.dao.ReceiptDAO;
import mushtaq.entities.Receipt;
import mushtaq.entities.ReceiptItem;
import mushtaq.service.ReceiptItemService;
import mushtaq.service.ReceiptService;
import mushtaq.service.SanphamService;


@Controller
@RequestMapping(value = "")
public class HoadonController {
		
	@Autowired
	private ReceiptService receiptService;
	@Autowired
	private ReceiptItemService receiptItemService;
	@Autowired
	private SanphamService sanphamService;
	@Autowired 
	ReceiptDAO dao;
	
	@RequestMapping(value = { "/cartad-list" }, method = RequestMethod.GET)
	public String listReceipt(Model model) {
		model.addAttribute("listReceipt", receiptService.findAll());
		return "cart-ad/cartad-list";
	}
	
	@RequestMapping("/cartad-update/{id}")
	public String updateReceipt(@PathVariable int id, Model model) {
		Receipt receipt = receiptService.findById(id);
		model.addAttribute("receipt", receipt);
		return "cart-ad/cartad-update";
	}

	@RequestMapping("/updateReceipt")
	public String doUpdateReceipt(@ModelAttribute("Receipt") Receipt receipt, Model model) {
		receiptService.update(receipt);
		model.addAttribute("listReceipt", receiptService.findAll());
		return "cart-ad/cartad-list";
	}

	@RequestMapping("/receiptDelete/{id}")
	public String doDeleteReceipt(@PathVariable int id, Model model) {
		receiptService.delete(id);
		model.addAttribute("listReceipt", receiptService.findAll());
		return "cart-ad/cartad-list";

	}
	
	@RequestMapping(value = { "/cartad-details/{id}" }, method = RequestMethod.GET)
	public String doFindAllcartad(Model model, @PathVariable int id,@ModelAttribute("ReceiptItem") ReceiptItem receiptitem) {
		model.addAttribute("listReceipt", receiptService.findAllreceipt(id));
		model.addAttribute("listSanpham", sanphamService.findReceiptid(id));
		model.addAttribute("listReceiptItem", receiptItemService.findReceiptid(id));
		return "cart-ad/cartad-details";
	}
	
	// thungrac
	@RequestMapping(value = { "/recyclebin" }, method = RequestMethod.GET)
	public String recyclebin(Model model) {
		model.addAttribute("listReceipt", receiptService.findAllBin());
		return "cart-ad/recyclebin";
	}
	
	@RequestMapping("/receiptRestore/{id}")
	public String doRestoreReceipt(@PathVariable int id, Model model) {
		receiptService.restore(id);
		model.addAttribute("listReceipt", receiptService.findAll());
		return "cart-ad/cartad-list";

	}
	
	
	
	
	@RequestMapping(value = { "/user" })
	public String user(Model model) {
		model.addAttribute("listSanpham", sanphamService.findAll());
		return "cart-us/user";
	}

	@RequestMapping(value = { "/cartus-list" }, method = RequestMethod.GET)
	public String listCartus(Model model) {
		model.addAttribute("listReceipt", receiptService.findAll());
		return "cart-us/cartus-list";
	}
	
	@RequestMapping("/cartus-update/{receiptid}")
	public String updateReceiptus(@PathVariable int receiptid, Model model) {
		Receipt receipt = receiptService.findById(receiptid);
		model.addAttribute("receipt", receipt);
		return "cart-us/cartus-update";
	}
	
	@RequestMapping("/updateCartus")
	public String doUpdateReceiptus(@ModelAttribute("Receipt") Receipt receipt, Model model) {
		receiptService.update(receipt);
		model.addAttribute("listReceipt", receiptService.findAll());
		return "cart-us/cartus-list";
	}
	
	@RequestMapping(value = { "/cartus-details/{receiptid}" }, method = RequestMethod.GET)
	public String doFindAllcartus(Model model, @PathVariable int receiptid,@ModelAttribute("ReceiptItem") ReceiptItem receiptitem) {
		model.addAttribute("listReceipt", receiptService.findAllreceipt(receiptid));
		model.addAttribute("listSanpham", sanphamService.findReceiptid(receiptid));
		model.addAttribute("listReceiptItem", receiptItemService.findReceiptid(receiptid));
		return "cart-us/cartus-details";
	}
}
