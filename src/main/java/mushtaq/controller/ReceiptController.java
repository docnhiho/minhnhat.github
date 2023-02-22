package mushtaq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import mushtaq.entities.Receipt;
import mushtaq.entities.ReceiptItem;
import mushtaq.service.ReceiptItemService;
import mushtaq.service.ReceiptService;
import mushtaq.service.SanphamService;

@Controller
@RequestMapping(value = "")
public class ReceiptController {

	@Autowired
	private ReceiptService receiptService;
	@Autowired
	private SanphamService sanphamService;
	@Autowired
	private ReceiptItemService receiptItemService;

	


	// Buoc 1 Tra ve hoa don
		@RequestMapping(value = { "/receipt/{id}" })
		public String Receipt(@PathVariable int id, Model model) {
			model.addAttribute("receipt", new Receipt());
			model.addAttribute("listSanpham", sanphamService.findAllById(id));
			model.addAttribute("listReceipt", receiptService.findAll());

			return "receipt_user";
		}

		// Buoc 2 Tao hoa don
		@RequestMapping(value = { "/receipt_user/{id}" }) 
		public String Invoice(@PathVariable int id, Model model, @ModelAttribute("receipt") Receipt receipt) {
			receiptService.save(receipt);
			model.addAttribute("listSanpham", sanphamService.findAllById(id));
			model.addAttribute("listReceipt", receiptService.findAll());
			return "receiptitem_user";
		}

		// Buoc 3 Tao hoa don chi tiet
		@RequestMapping(value = { "/receiptitem_user/{id}" }) 
		public String CreatReceiptitem( Model model,@ModelAttribute("ReceiptItem") ReceiptItem receiptitem,@PathVariable int id) {
			receiptItemService.save(receiptitem);
			model.addAttribute("listSanpham", sanphamService.findAllById(id));
			model.addAttribute("listReceiptItem", receiptItemService.findAll());
			model.addAttribute("listReceipt", receiptService.findAll());
			
			return "success";
		}
		
		//moi' them vo
		@RequestMapping(value = { "/success" })
		public String booking_success(Model model) {
			model.addAttribute("listSanpham", sanphamService.findAll());
			model.addAttribute("listReceiptItem", receiptItemService.findAll());
			model.addAttribute("listReceipt", receiptService.findAll());
			return "success";
		}
	

}
