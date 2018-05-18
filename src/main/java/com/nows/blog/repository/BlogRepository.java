package com.nows.blog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nows.blog.entity.Blog;

public interface BlogRepository extends JpaRepository<Blog, Integer>{

}
