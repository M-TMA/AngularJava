package com.journaldev.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.journaldev.spring.model.Article;

@Repository
public class ArticleDAOImpl implements ArticleDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(ArticleDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	public void addArticle(Article p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Article saved successfully, Article Details="+p);
	}

	@Override
	public void updateArticle(Article p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Article updated successfully, Article Details="+p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Article> listArticle() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Article> ArticlesList = session.createQuery("from Article a ORDER BY a.time").list();
		for(Article p : ArticlesList){
			logger.info("Article List::"+p);
		}
		return ArticlesList;
	}

	@Override
	public Article getArticleById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Article p = (Article) session.load(Article.class, new Integer(id));
		logger.info("Article loaded successfully, Article details="+p);
		return p;
	}

	@Override
	public void removeArticle(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Article p = (Article) session.load(Article.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		logger.info("Article deleted successfully, Article details="+p);
	}

	@Override
	public List<Article>  listArticleByCategory(String category) {
		Session session = this.sessionFactory.getCurrentSession();
		List<Article> ArticlesList = session.createQuery("from Article a WHERE a.category ='" + category+"'").list();
		for(Article p : ArticlesList){
			logger.info("Article List::"+p);
		}
		return ArticlesList;
	}

}
