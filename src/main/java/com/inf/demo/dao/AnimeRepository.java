package com.inf.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.inf.demo.model.Anime;

public interface AnimeRepository extends JpaRepository<Anime, Integer> {

}
