package com.nows.blog.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nows.blog.entity.Blog;
import com.nows.blog.entity.User;

public interface BlogRepository extends JpaRepository<Blog, Integer>{
	
	List<Blog> findByUser(User user);
}
