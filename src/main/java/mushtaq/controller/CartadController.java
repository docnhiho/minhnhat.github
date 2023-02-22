package mushtaq.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import mushtaq.dao.ReceiptDAO;
import mushtaq.entities.Account;
import mushtaq.entities.Employee;
import mushtaq.entities.Item;
import mushtaq.entities.Receipt;
import mushtaq.entities.ReceiptItem;
import mushtaq.service.ReceiptItemService;
import mushtaq.service.ReceiptService;
import mushtaq.service.SanphamService;


@Controller
@RequestMapping("/cart")
public class CartadController {

	
	@Autowired
	private ReceiptService receiptService;
	@Autowired
	private ReceiptItemService receiptItemService;
	@Autowired
	private SanphamService sanphamService;
	@Autowired 
	ReceiptDAO dao;

			
	// B1-Mua SP
		@RequestMapping(value = "/orderad/{id}", method = RequestMethod.GET)
		public String ordernow(ModelMap mm, HttpSession session, @PathVariable("id") int id) {

			if (session.getAttribute("cart") == null) {
				List<Item> cart = new ArrayList<Item>();
				cart.add(new Item(this.sanphamService.findById(id), 1));
				session.setAttribute("cart", cart);
			} else {
				List<Item> cart = (List<Item>) session.getAttribute("cart");
				int shop = isExisting(id, session);
				if (shop == -1)
					cart.add(new Item(this.sanphamService.findById(id), 1));
				else {
					int quantity = cart.get(shop).getQuantity() + 1;
					cart.get(shop).setQuantity(quantity);
				}
				session.setAttribute("cart", cart);
			}
			return "cart-ad/cartaditem-user";
		}
		
	    // Delete SP
		@RequestMapping(value = "/deletead/{id}", method = RequestMethod.GET)
		public String delete(HttpSession session, @PathVariable("id") int id) {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			int shop = isExisting(id, session);
			cart.remove(shop);
			session.setAttribute("cart", cart);
			return "cart-ad/cartaditem-user";
		}
	    
		
		//Update SL
		@RequestMapping(value = "/updatead", method = RequestMethod.POST)
		public String update(HttpServletRequest request, HttpSession session) {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			String[] quantity = request.getParameterValues("quantity");
			for (int i = 0; i < cart.size(); i++) {
				cart.get(i).setQuantity(Integer.parseInt(quantity[i]));
			}
			session.setAttribute("cart", cart);
			return "cart-ad/cartaditem-user";
		}
		

		private int isExisting(int id, HttpSession session) {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			for (int i = 0; i < cart.size(); i++)
				if (cart.get(i).getSanpham().getId() == id)
					return i;
			return -1;
		}

		// B2-Info Customer
		@RequestMapping(value = "/customer", method = RequestMethod.GET)
			public String Order(HttpSession session, Model model, HttpServletRequest request,
				@ModelAttribute("receipt") Receipt receipt) {
				List<Item> cart = (List<Item>) session.getAttribute("cart");
				for (int i = 0; i < cart.size(); i++) {

				}
//		    	 
//		    	session.removeAttribute("cart");
				return "cart-ad/cartad-user";
		}

		// B3-Save hoa don
		@RequestMapping(value = "/saveOrder-ad", method = RequestMethod.POST)
		public String saveOrder(HttpSession session, Model model, HttpServletRequest request,
				@ModelAttribute("receipt") Receipt receipt,
				@ModelAttribute("ReceiptItem") ReceiptItem receiptitem) {				
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			receiptService.save(receipt);
			
			for (int i = 0; i < cart.size(); i++) {
				int id = dao.getId();
				receiptitem.setReceiptid(id);
				receiptitem.setSanphamid(cart.get(i).getSanpham().getId());
				receiptitem.setReceiptItemPrice(cart.get(i).getSanpham().getGia());
				receiptitem.setReceiptItemQuantity(cart.get(i).getQuantity());
				receiptItemService.save(receiptitem);
			}			
			 	 
	    	session.removeAttribute("cart");
	    	model.addAttribute("listReceipt", receiptService.findAll());
			return "cart-ad/cartad-list";
		}
		
		@RequestMapping(value = "/cartad", method = RequestMethod.GET)
		public String cart(HttpSession session, Model model) {
			if (session.getAttribute("cart") == null) {
				return "cart-ad/cartaditem-user";
			} else {
				List<Item> cart = (List<Item>) session.getAttribute("cart");
				for (int i = 0; i < cart.size(); i++) {

				}

				return "cart-ad/cartaditem-user";
			}

		}
				
	
}
