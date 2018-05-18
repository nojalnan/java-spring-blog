package com.nows.blog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nows.blog.entity.Item;

public interface ItemRepository extends JpaRepository<Item, Integer>{

}
