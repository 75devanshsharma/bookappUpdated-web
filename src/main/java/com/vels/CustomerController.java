package com.vels;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.CustomerDAO;
import model.Customer;


@Controller
@RequestMapping("/customer")

public class CustomerController {

	@PostMapping("/save")
	public String save(@RequestParam("name") String name,@RequestParam("city") String city,@RequestParam("mobile") Long mobile, @RequestParam("username") String username,@RequestParam("password")String pass)
	{
		System.out.println("Calling CustomerDAO");
		CustomerDAO cust=new CustomerDAO();
		Customer c=new Customer();
		c.setName(name);
		c.setCity(city);
		c.setMobileNo(mobile);
		c.setUserId(username);
		c.setPassword(pass);
		cust.save(c);
		return "../success4.jsp";
	}
	

	@PostMapping("/adminLogin")
	public String adminlogin(@RequestParam("email") String user,@RequestParam("pass") String pass, HttpSession session,ModelMap modelmap)
	{
		System.out.println("Calling CustomerDAO");
		CustomerDAO cust=new CustomerDAO();
		Customer c=cust.findByUsernameAndPassword(user, pass);
			
		if(c!=null)
		{
			session.setAttribute("LOGGED_IN_USER", user);
			modelmap.addAttribute("name", user);
			return "../index.jsp";
		}
		else
		{
			
			System.out.println("Wrong username/password");
			return "redirect:../index2.jsp";
		
	}
	}
		@GetMapping("/logout")
		public String logout(HttpSession session) {
			session.invalidate();
			return "redirect:../index2.jsp";
		}
	
	
	
}

	

