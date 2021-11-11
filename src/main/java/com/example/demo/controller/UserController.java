package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.UserRepo;
import com.example.demo.model.User;

@Controller
public class UserController {

	@Autowired
	UserRepo repo;
	@RequestMapping("/")
	public String home()
	{
		return "index.jsp";
	}
	/*
	@RequestMapping("/findByUid")
	@ResponseBody
	public User findByUid(@RequestParam("uid")int uid)
	{
		return repo.findByUid(uid);
	}
	*/
	
	
	@PostMapping("/addUser")
	public ModelAndView addUser(User user)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("user",user);
		
		if(user.getPasw().equals(user.getCnfpasw()))
			{
			repo.save(user);
		    mv.setViewName("index.jsp");
		    }
		else
			{
			mv.addObject("msg","password and confirm password does not match");
			mv.setViewName("Error.jsp");
			}
		return mv;
	}
	
	@PostMapping("/getUser")
	public ModelAndView getUser(@RequestParam("email")String email,@RequestParam("pasw")String password)
	{
	     User user=repo.getById(email); 
	     ModelAndView mv=new ModelAndView();
	    if(user.getPasw().equals(password))
	     {
	    	mv.setViewName("index.jsp");
	    	 
	     }else
	    	 {
	    	 
	    	 mv.setViewName("Error.jsp");
	    	 mv.addObject("msg","Username and password does not match");

	    	 }
	    return mv;
	    // return  user.getPasw().equals(password) ? "Home.jsp":"Error.jsp";
		
	}
}
