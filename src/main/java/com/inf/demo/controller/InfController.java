package com.inf.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.inf.demo.dao.AnimeRepository;
import com.inf.demo.dao.VideogameRepository;
import com.inf.demo.model.Anime;
import com.inf.demo.model.Videogame;

@Controller
public class InfController {
	
	@Autowired
	private AnimeRepository animeRepository;
	@Autowired
	private VideogameRepository videogameRepository;
	
	
	
	@GetMapping("/home")
	public String getHome(Model modelAnime, Model modelVideogames) {
		ModelAndView mvanime = new ModelAndView();
		ModelAndView mvvideogames = new ModelAndView();
		List<Anime> anime = animeRepository.findAll();
		List<Videogame> videogames = videogameRepository.findAll();
		modelAnime.addAttribute("anime", anime);
		modelVideogames.addAttribute("videogames", videogames);
		mvanime.addObject(anime);
		mvvideogames.addObject(videogames);
		return "index";
	}
	
	@PostMapping("add-anime")
	public String addAnime(Anime anime) {
		animeRepository.save(anime);
		return "redirect:/home";
	}
	
	@PostMapping("add-videogame")
	public String addAnime(Videogame videogame) {
		videogameRepository.save(videogame);
		return "redirect:/home";
	}
	
	@GetMapping("delete-anime/{id}")
	public String deleteAnime(@PathVariable int id) {
		Anime anime = animeRepository.getReferenceById(id);
		animeRepository.delete(anime);
		return "redirect:/home";
	}
	
	@GetMapping("delete-videogame/{id}")
	public String deleteVideogame(@PathVariable int id) {
		Videogame videogame = videogameRepository.getReferenceById(id);
		videogameRepository.delete(videogame);
		return "redirect:/home";
	}

}
