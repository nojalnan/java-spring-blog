package com.nows.blog.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.nows.blog.entity.Blog;
import com.nows.blog.entity.Item;

public interface ItemRepository extends JpaRepository<Item, Integer>{

	List<Item> findByBlog(Blog blog, Pageable pageable);
}
