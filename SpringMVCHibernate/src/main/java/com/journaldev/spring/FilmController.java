package com.journaldev.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.journaldev.spring.model.Film;
import com.journaldev.spring.service.FilmService;

@Controller
public class FilmController {

	private FilmService filmService;

	@Autowired(required = true)
	@Qualifier(value = "filmService")
	public void setFilmService(FilmService fs) {
		this.filmService = fs;
	}

	@RequestMapping(value = "/films", method = RequestMethod.GET)
	public String listFilm(Model model) {
		model.addAttribute("film", new Film());
		model.addAttribute("listFilm", this.filmService.listFilm());
		return "film"; // name of jsp file
	}

	// For add and update person both
	@RequestMapping(value = "/films/add", method = RequestMethod.POST)
	public String addFilm(@ModelAttribute("film") Film p) {

		if (p.getId() == 0) {
			// new film, add it
			this.filmService.addFilm(p);
		} else {
			// existing person, call update
			this.filmService.updateFilm(p);
		}

		return "redirect:/films"; // redirect to @RequestMapping(value =
									// "/films", method = RequestMethod.GET)

	}

	@RequestMapping("/remove/{id}")
	public String removeFilm(@PathVariable("id") int id) {

		this.filmService.removeFilm(id);
		return "redirect:/films";
	}

	@RequestMapping("/edit/{id}")
	public String editPerson(@PathVariable("id") int id, Model model) {
		model.addAttribute("film", this.filmService.getFilmById(id));
		model.addAttribute("listFilm", this.filmService.listFilm());
		return "film"; // name of jsp file
	}

}
