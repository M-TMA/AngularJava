package com.journaldev.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.journaldev.spring.dao.ArticleDAO;
import com.journaldev.spring.model.Article;

@Service
public class ArticleServiceImpl implements ArticleService {
	
	private ArticleDAO ArticleDAO;

	public void setArticleDAO(ArticleDAO fd) {
		this.ArticleDAO = fd;
	}

	@Override
	@Transactional
	public void addArticle(Article f) {
		this.ArticleDAO.addArticle(f);
	}

	@Override
	@Transactional
	public void updateArticle(Article f) {
		this.ArticleDAO.updateArticle(f);
	}

	@Override
	@Transactional
	public List<Article> listArticle() {
		return this.ArticleDAO.listArticle();
	}

	@Override
	@Transactional
	public Article getArticleById(int id) {
		return this.ArticleDAO.getArticleById(id);
	}

	@Override
	@Transactional
	public void removeArticle(int id) {
		this.ArticleDAO.removeArticle(id);
	}

}
