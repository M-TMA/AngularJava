package com.journaldev.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.journaldev.spring.model.Article;
import com.journaldev.spring.service.ArticleService;

@Controller
public class ArticleController {

	private ArticleService articleService;

	@Autowired(required = true)
	@Qualifier(value = "articleService")
	public void setArticleService(ArticleService ar) {
		this.articleService = ar;
	}

	@RequestMapping(value = "/articles", method = RequestMethod.GET)
	public String listArticle(Model model) {
		model.addAttribute("article", new Article());
		model.addAttribute("listArticle", this.articleService.listArticle());
		return "index"; // name of jsp file
	}

	// For add and update person both
	@RequestMapping(value = "/articles/add", method = RequestMethod.POST)
	public String addarticle(@ModelAttribute("article") Article p) {

		if (p.getId() == 0) {
			// new article, add it
			this.articleService.addArticle(p);
		} else {
			// existing person, call update
			this.articleService.updateArticle(p);
		}

		return "redirect:/articles"; // redirect to @RequestMapping(value =
									// "/articles", method = RequestMethod.GET)

	}

	@RequestMapping("/remove/{id}")
	public String removearticle(@PathVariable("id") int id) {
		this.articleService.removeArticle(id);
		return "redirect:/articles";
	}

	@RequestMapping("/edit/{id}")
	public String editPerson(@PathVariable("id") int id, Model model) {
		model.addAttribute("article", this.articleService.getArticleById(id));
		model.addAttribute("listArticle", this.articleService.listArticle());
		return "article"; // name of jsp file
	}

}
