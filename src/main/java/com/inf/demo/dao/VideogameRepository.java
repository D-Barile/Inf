package com.inf.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.inf.demo.model.Videogame;

public interface VideogameRepository extends JpaRepository<Videogame, Integer> {

}
