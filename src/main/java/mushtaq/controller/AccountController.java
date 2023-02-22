package mushtaq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mushtaq.dao.AccountDao;
import mushtaq.entities.Account;
import mushtaq.service.AccountService;

@Controller
@RequestMapping("")
public class AccountController {

	@Autowired
	AccountDao dao;
	@Autowired
	private AccountService service;

	@RequestMapping(value = "list-account", method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("list", service.findAll());
		return "account/list-account";
	}

	@RequestMapping("/save-account")
	public String insertaccount(Model model) {
		model.addAttribute("account", new Account());
		model.addAttribute("listEmployee", service.listEmployee());
		model.addAttribute("listRole", service.listRole());
		return "account/save-account";
	}

	@RequestMapping(value = "/saveaccount", method = RequestMethod.POST)
	public ModelAndView doSaveaccount(ModelMap model, @RequestParam("username") String username,
			@ModelAttribute("account") Account account) {

		ModelAndView mv = new ModelAndView();
		account.setUsername(username);
		String user = dao.ckeck(account);
		
		if (user.equals("0")) {
			service.save(account);
			model.addAttribute("list", service.findAll());
			mv.setViewName("account/list-account");
		}

		else {

			mv.setViewName("account/save-account");
			mv.addObject("msg", "The account has subscribers");
			mv.addObject("listEmployee", service.listEmployee());
			mv.addObject("listRole", service.listRole());
		}

		return mv;

	}

	@RequestMapping("/update-account/{accountid}")
	public String updateaccount(@PathVariable int accountid, Model model) {
		Account account = service.findByIdhd(accountid);
		model.addAttribute("listEmployee", service.listEmployee());
		model.addAttribute("listRole", service.listRole());
		model.addAttribute("account", account);
		return "account/update-account";
	}

	@RequestMapping("/updateaccount")
	public String doUpdaterole(Model model, @ModelAttribute("account") Account account) {
		service.update(account);
		model.addAttribute("list", service.findAll());
		return "account/list-account";

	}

	@SuppressWarnings("finally")
	@RequestMapping("/accountDelete/{accountid}")
	public ModelAndView doDeleterole(@PathVariable int accountid) {
		ModelAndView nv = new ModelAndView();

		try {
			service.delete(accountid);
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			nv.setViewName("account/list-account");
			nv.addObject("list", service.findAll());
			return nv;
		}

	}

}
