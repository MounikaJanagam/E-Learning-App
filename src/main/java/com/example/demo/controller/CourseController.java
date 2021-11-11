package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.CourseRepo;
import com.example.demo.model.Course;
import com.example.demo.model.User;

@Controller
public class CourseController {
	
	@Autowired
	CourseRepo repo;
	
	@GetMapping("/getAllCourses")
	public ModelAndView getAllCourses()
	{
		ModelAndView mv=new ModelAndView();
		List<Course> list=repo.findAll();
		
		mv.addObject("list",list);
		mv.setViewName("Fcourses.jsp");
		return  mv;
		
	}
	/*@RequestMapping("/getAllCourses")
	@ResponseBody
	public ModelAndView getAllCourses()
	{
		ModelAndView mv=new ModelAndView();
		List<Course> list=repo.findAll();
		
		mv.addObject("list",list);
		mv.setViewName("Fcourses.jsp");
		return  mv;
		
	}*/
	
	/*@RequestMapping("/getAllCourses/{c_tech}")
	@ResponseBody
	public List<Course> getAllCourses(@PathVariable("c_tech") String c_tech)
	{
		
		List<Course> list=repo.findAll();
		
		return repo.findByC_tech(c_tech);
		
	}*/
	//deleteCourse/cid=
	@RequestMapping("/findByCtech")
	@ResponseBody
	public List<Course> findByCtech(@RequestParam("ctech")String ctech)
	{
		return repo.findByCtech(ctech);
	}
	
	@PostMapping("/addCourse")
	public String addCourse(Course course)
	{
		
		repo.save(course);
	
		return "redirect:/getAllCourses";
		
	}
	
	@RequestMapping("/deleteCourse/{cid}")
	public String deleteCourse(@PathVariable("cid")int cid )
	{
		 Course course=repo.getOne(cid);
		repo.delete(course);
		return "redirect:/getAllCourses";
		
	}
	
	@RequestMapping("/updateCourse")
	@ResponseBody
	public ModelAndView updateCourse(@RequestParam("cid")int cid)
	{
		 ModelAndView mv=new ModelAndView();
		 Course course=repo.getById(cid);
		 mv.addObject("course",course);
		
		//HttpSession session=req.getSession();
		 //session.setAttribute("course", course);
		 
		 mv.setViewName("Updatecourse.jsp");
		 return  mv;
		 
		
	}
	
	

}
