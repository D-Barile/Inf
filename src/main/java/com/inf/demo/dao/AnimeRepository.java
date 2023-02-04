package com.inf.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.inf.demo.model.Anime;

public interface AnimeRepository extends JpaRepository<Anime, Integer> {
	
	List<Anime> findByNameContaining(String name);

}
