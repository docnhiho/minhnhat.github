package mushtaq.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mushtaq.entities.Item;
import mushtaq.entities.Loaisanpham;
import mushtaq.entities.Sanpham;
import mushtaq.service.LoaisanphamService;
import mushtaq.service.SanphamService;


@Controller
public class HomeController {
	
	@Autowired
	private SanphamService spService;
	
	@Autowired
	private LoaisanphamService loaiService;
	
	@RequestMapping(value = {"/", "/index" })
	public String index(Model model, HttpSession session) {
		
		// Lấy danh sách sản phẩm theo ngày tạo mới nhất, có giới hạn 8 sản phẩm
		List<Sanpham> spMoi = spService.findByDay(8);
		model.addAttribute("spMoi", spMoi);
		
		// Lấy danh sách sản phẩm bán chạy có giới hạn 8 sản phẩm
		List<Sanpham> spBanChay = spService.findByBestSelling(8);
		model.addAttribute("spBanChay", spBanChay);
		
		// Lấy danh sách loại sản phẩm
		List<Loaisanpham> dsLoai = loaiService.findAll();
		session.setAttribute("dsLoai", dsLoai);
		
		@SuppressWarnings("unchecked")
		HashMap<Integer, Item> cartItems = (HashMap<Integer, Item>) session.getAttribute("myCartItems");
		if (cartItems == null) {
			cartItems = new HashMap<Integer, Item>();
		}

		// Thêm giới hạn sản phẩm phân trang
		session.setAttribute("productLimit", 9);
		
		// Thêm giỏ hàng và tổng tiền, số lượng sản phẩm trong giỏ hàng
		session.setAttribute("myCartItems", cartItems);
		session.setAttribute("myCartTotal", totalPrice(cartItems));
		session.setAttribute("myCartNum", cartItems.size());
		return "user/index";
	}

	@RequestMapping(value = { "/aboutme" })
	public String aboutme() {
		return "user/about";
	}

	@RequestMapping(value = { "/admin" })
	public String admin() {
		return "admin";
	}


	@RequestMapping(value = { "/about" })
	public String about() {
		return "about";
	}

	@RequestMapping(value = { "/events" })
	public String events() {
		return "events";
	}

	@RequestMapping(value = { "/contact" })
	public String contact() {
		return "contact";
	}
	
	@RequestMapping(value = { "/about-us" }, method = RequestMethod.GET) 
	public String AboutUs(Model model) {
		return "about-us";
	}
	
	@RequestMapping(value = { "/blog" }, method = RequestMethod.GET) 
	public String Blog(Model model) {
		return "blog";
	}
	
	@RequestMapping(value = { "/checkout" }, method = RequestMethod.GET) 
	public String Checkout(Model model) {
		return "checkout";
	}
	
	@RequestMapping(value = { "/contact-us" }, method = RequestMethod.GET) 
	public String Contact(Model model) {
		return "contact-us";
	}
	
	@RequestMapping(value = { "/wishlist" }, method = RequestMethod.GET) 
	public String Wishlist(Model model) {
		return "wishlist";
	}

	private double totalPrice(HashMap<Integer, Item> cartItems) {
		double count = 0;
		for (Entry<Integer, Item> list : cartItems.entrySet()) {
			count += list.getValue().getSanpham().getGia() * list.getValue().getQuantity();
		}
		return count;
	}	

}
