package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Course;
import com.example.demo.model.User;

public interface CourseRepo extends JpaRepository<Course, Integer> {
	
	
	List<Course> findByCtech(String ctech);

}
