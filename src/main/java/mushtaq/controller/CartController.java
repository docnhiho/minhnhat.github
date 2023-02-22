package mushtaq.controller;

import mushtaq.service.SanphamService;
import mushtaq.entities.Item;
import mushtaq.entities.Sanpham;

import java.util.HashMap;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "cart")
public class CartController {

	@Autowired
	private SanphamService spService;
	
	@RequestMapping()
	public String viewCart() {
		return "user/cart";
	}
	
	@RequestMapping(value = "add/{productId}.htm", method = RequestMethod.GET)
	public String viewAdd(ModelMap model, HttpServletRequest request, HttpSession session, @PathVariable("productId") int id) {
		@SuppressWarnings("unchecked")
		HashMap<Integer, Item> cartItems = (HashMap<Integer, Item>) session.getAttribute("myCartItems");
		if(cartItems == null) {
			cartItems = new HashMap<Integer, Item>();
		}
		Sanpham product = spService.findById(id);
		if (product != null) {
			if (cartItems.containsKey(id)) {
				Item item = cartItems.get(id);
				item.setSanpham(product);
				item.setQuantity(item.getQuantity() + 1);
				cartItems.put(id, item);
			} else {
				Item item = new Item();
				item.setSanpham(product);
				item.setQuantity(1);
				cartItems.put(id, item);
			}
		}
		session.setAttribute("myCartItems", cartItems);
		session.setAttribute("myCartTotal", totalPrice(cartItems));
		session.setAttribute("myCartNum", cartItems.size());
		return "redirect:/";
	}
	
	@RequestMapping(value = "remove/{productId}.htm", method = RequestMethod.GET)
	public String viewRemove(ModelMap model, HttpSession session, @PathVariable("productId") int productId, @RequestParam int path) {
		@SuppressWarnings("unchecked")
		HashMap<Integer, Item> cartItems = (HashMap<Integer, Item>) session.getAttribute("myCartItems");
		if (cartItems == null) {
			cartItems = new HashMap<Integer, Item>();
		}
		if (cartItems.containsKey(productId)) {
			cartItems.remove(productId);
		}
		session.setAttribute("myCartItems", cartItems);
		session.setAttribute("myCartTotal", totalPrice(cartItems));
		session.setAttribute("myCartNum", cartItems.size());
		
		/* Trả về đường dẫn đúng trang đang hiển thị cho người dùng
		 * Nếu path = 0 là trang chủ
		 * Nếu path = 1 là trang chi tiết sản phẩm
		 * Nếu path = 2 là trang giỏ hàng
		 * Nếu path = 3 là trang thanh toán
		 * Nếu path = 4 là trang phân loại
		 */
		Sanpham product = spService.findById(productId);
		int categoryId = product.getLoaisanpham();
		String result;
		if(path == 0) {
			result = "/";
		}else if(path == 1) {
			result = "/product.htm?id=" + productId;
		}else if(path == 2) {
			result = "/cart";
		}else if(path == 3) {
			result = "/checkout.htm";
		}else {
			result = "/productCate.htm?categories=" + categoryId + "&search=&x=18&y=25";
		}
			
		return "redirect:" + result;
	}
	
	@RequestMapping("update")
	public String updateProduct(HttpSession session, @RequestParam String id, @RequestParam String qty, @RequestParam String link) {
		
		int pId = Integer.parseInt(id);
		int quantity = Integer.parseInt(qty);
		int path = Integer.parseInt(link);
		
		@SuppressWarnings("unchecked")
		HashMap<Integer, Item> cartItems = (HashMap<Integer, Item>) session.getAttribute("myCartItems");
		if(cartItems == null) {
			cartItems = new HashMap<Integer, Item>();
		}
		
		Sanpham product = spService.findById(pId);
		if (product != null) {
			if (cartItems.containsKey(pId)) {
				Item item = cartItems.get(pId);
				item.setSanpham(product);
				item.setQuantity(quantity);
				cartItems.put(pId, item);
			} else {
				Item item = new Item();
				item.setSanpham(product);
				item.setQuantity(quantity);
				cartItems.put(pId, item);
			}
		}
		
		session.setAttribute("myCartItems", cartItems);
		session.setAttribute("myCartTotal", totalPrice(cartItems));
		session.setAttribute("myCartNum", cartItems.size());
		
		/* Trả về đường dẫn đúng trang đang hiển thị cho người dùng
		 * Nếu path = 0 là trang chủ
		 * Nếu path = 1 là trang chi tiết sản phẩm
		 * Nếu path = 2 là trang giỏ hàng
		 * Nếu path = 3 là trang thanh toán
		 * Nếu path = 4 là trang phân loại
		 */
		
		int categoryId = product.getLoaisanpham();
		String result;
		if(path == 0) {
			result = "/";
		}else if(path == 1) {
			result = "/product.htm?id=" + id;
		}else if(path == 2) {
			result = "/cart";
		}else if(path == 3) {
			result = "/checkout.htm";
		}else {
			result = "/productCate.htm?categories=" + categoryId + "&search=&x=18&y=25";
		}
			
		return "redirect:" + result;
	};

	private double totalPrice(HashMap<Integer, Item> cartItems) {
		double count = 0;
		for (Entry<Integer, Item> list : cartItems.entrySet()) {
			count += list.getValue().getSanpham().getGia() * list.getValue().getQuantity();
		}
		return count;
	}	

}
