package com.inf.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.inf.demo.model.Videogame;

public interface VideogameRepository extends JpaRepository<Videogame, Integer> {
	
	List<Videogame> findByNameContaining(String name);

}
