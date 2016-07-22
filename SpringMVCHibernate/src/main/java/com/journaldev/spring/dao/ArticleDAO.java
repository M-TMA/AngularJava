package com.journaldev.spring.dao;

import java.util.List;

import com.journaldev.spring.model.Article;

public interface ArticleDAO {

	public void addArticle(Article p);

	public void updateArticle(Article p);

	public List<Article> listArticle();

	public Article getArticleById(int id);

	public void removeArticle(int id);
}
