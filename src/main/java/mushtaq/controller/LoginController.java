package mushtaq.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mushtaq.dao.LoginDao;
import mushtaq.entities.Account;
import mushtaq.entities.Employee;



@Controller
public class LoginController {
	
	@Autowired
	LoginDao dao;

	@RequestMapping(value = {"/login"}, method = RequestMethod.GET) 
	public String Login(Model model) {
		return "login";
	}
	
	@RequestMapping(value = "/xacnhan", method = RequestMethod.POST)
	public ModelAndView loginProcess(@RequestParam("username") String username,
			@RequestParam("password") String password ,  HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Employee em = new Employee();
		em.setUsername(username);
		em.setPassword(password);
		String name = dao.xacnhan(em);
		String id = dao.getId(em);
		if (name != null) {
			if (name.equals("admin")) {				
				session.setAttribute("check", true);
				session.setAttribute("name", username);
				session.setAttribute("id", id);
				mv.setViewName("redirect:doanhthu-list");
			} else if (name.equals("user")) {
				session.setAttribute("check", true);
				session.setAttribute("name", username);
				session.setAttribute("id", id);
				mv.setViewName("redirect:user");
			} else {
				mv.addObject("msg", "Password incorrect, please enter again");
				mv.setViewName("login");
			}

		} else {
			mv.addObject("msg", "Password incorrect, please enter again");
			mv.setViewName("login");
		}

		return mv;

	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("check");

		return "redirect:/login";
	}

}
