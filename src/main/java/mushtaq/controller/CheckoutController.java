package mushtaq.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import mushtaq.entities.Item;
import mushtaq.entities.Receipt;
import mushtaq.entities.ReceiptItem;
import mushtaq.service.ReceiptItemService;
import mushtaq.service.ReceiptService;

@Controller
public class CheckoutController {
	
	@Autowired
	private ReceiptService rS;
	
	@Autowired
	private ReceiptItemService rItemS;
	
	@RequestMapping(value = "checkout.htm")
	public String checkout(HttpSession session) {
		@SuppressWarnings("unchecked")
		HashMap<Integer, Item> cartItems = (HashMap<Integer, Item>) session.getAttribute("myCartItems");
		if (cartItems == null) {
			cartItems = new HashMap<Integer, Item>();
		}
		session.setAttribute("myCartItems", cartItems);
		session.setAttribute("myCartTotal", totalPrice(cartItems));
		session.setAttribute("myCartNum", cartItems.size());
		return "user/checkout";
	}
	
	@RequestMapping(value = "checkout/save.htm", method = RequestMethod.POST)
	public String saveOrder(HttpSession session, @RequestParam String oName, @RequestParam String oEmail,
			@RequestParam String oPhone, @RequestParam String oAddress) {
		@SuppressWarnings("unchecked")
		HashMap<Integer, Item> cartItems = (HashMap<Integer, Item>) session.getAttribute("myCartItems");
		if(cartItems == null) {
			cartItems = new HashMap<Integer, Item>();
		}
		
		// Lưu thông tin hóa đơn
		Receipt hd = new Receipt();
		hd.setReceiptName(oName);
		hd.setReceiptMail(oEmail);
		hd.setReceiptAddress(oAddress);
		hd.setReceiptPhone(oPhone);
		rS.saveol(hd);
		
		// Lưu thông tin hóa đơn chi tiết
		int idLastReceipt = rS.getIdLastReceipt();
		for(Map.Entry<Integer, Item> e : cartItems.entrySet()) {
			ReceiptItem hdct = new ReceiptItem();
			hdct.setReceiptid(idLastReceipt);
			hdct.setSanphamid(e.getKey());
			hdct.setReceiptItemQuantity(e.getValue().getQuantity());
			hdct.setReceiptItemPrice(e.getValue().getSanpham().getGia() * e.getValue().getQuantity());
			rItemS.save(hdct);
		}
        cartItems = new HashMap<Integer, Item>();
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartTotal", 0);
        session.setAttribute("myCartNum", 0);
		return "redirect:/done";		
	}
	
	@RequestMapping(value = "done")
	public String done() {
		return "user/done";
	}

	private double totalPrice(HashMap<Integer, Item> cartItems) {
		double count = 0;
		for (Entry<Integer, Item> list : cartItems.entrySet()) {
			count += list.getValue().getSanpham().getGia() * list.getValue().getQuantity();
		}
		return count;
	}	

}
