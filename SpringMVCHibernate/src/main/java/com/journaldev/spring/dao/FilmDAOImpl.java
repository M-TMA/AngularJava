package com.journaldev.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.journaldev.spring.model.Film;

@Repository
public class FilmDAOImpl implements FilmDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(FilmDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	public void addFilm(Film p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Person saved successfully, Person Details="+p);
	}

	@Override
	public void updateFilm(Film p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Person updated successfully, Person Details="+p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Film> listFilm() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Film> personsList = session.createQuery("from Film").list();
		for(Film p : personsList){
			logger.info("Person List::"+p);
		}
		return personsList;
	}

	@Override
	public Film getFilmById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Film p = (Film) session.load(Film.class, new Integer(id));
		logger.info("Person loaded successfully, Person details="+p);
		return p;
	}

	@Override
	public void removeFilm(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Film p = (Film) session.load(Film.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		logger.info("Person deleted successfully, person details="+p);
	}

}
