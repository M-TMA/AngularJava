package com.journaldev.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.journaldev.spring.dao.FilmDAO;
import com.journaldev.spring.model.Film;

@Service
public class FilmServiceImpl implements FilmService {
	
	private FilmDAO filmDAO;

	public void setFilmDAO(FilmDAO fd) {
		this.filmDAO = fd;
	}

	@Override
	@Transactional
	public void addFilm(Film f) {
		this.filmDAO.addFilm(f);
	}

	@Override
	@Transactional
	public void updateFilm(Film f) {
		this.filmDAO.updateFilm(f);
	}

	@Override
	@Transactional
	public List<Film> listFilm() {
		return this.filmDAO.listFilm();
	}

	@Override
	@Transactional
	public Film getFilmById(int id) {
		return this.filmDAO.getFilmById(id);
	}

	@Override
	@Transactional
	public void removeFilm(int id) {
		this.filmDAO.removeFilm(id);
	}

}
