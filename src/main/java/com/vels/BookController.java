package com.vels;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.BooksDao;
import model.Books;


@Controller
@RequestMapping("/book")
public class BookController {
	
	@GetMapping("/insert")
	public String insert(@RequestParam("id") int id, @RequestParam("name") String name, @RequestParam("price") int price, @RequestParam("status") String status){
		System.out.println("Calling DAO ");
		BooksDao book=new BooksDao();
		Books b=new Books();
		b.setId(id);
		b.setName(name);
		b.setPrice(price);
		b.setStatus(status);
		book.insert(b);
		return "../success1.jsp";
	}
	
	@GetMapping("/findbyName")
	public String search(@RequestParam("name") String name, ModelMap modelmap)
	{
		System.out.println("Calling Book DAO");
		BooksDao book=new BooksDao();
		Books b=new Books();
		b.setName(name);
		List <Books> booklist =book.FindbyName(name);
		modelmap.addAttribute("book_list", booklist);
		return "../success.jsp";
	}
	
	@GetMapping("/deletebyId")
	public String delete(@RequestParam("id") int id)
	{
		System.out.println("Calling Book DAO for delete");
		BooksDao book = new BooksDao();
		Books b=new Books();
		b.setId(id);
		book.delete(b);
		return "../success2.jsp";
	
	}
	
	@GetMapping("/UpdatebyId")
	public String update(@RequestParam("id") int id,@RequestParam("price") int price)
	{
		System.out.println("Calling Book DAO for Update");
		BooksDao book = new BooksDao();
		Books b = new Books();
		b.setId(id);
		b.setPrice(price);
		book.update(b);
		return"../success3.jsp";
	}
	


}
