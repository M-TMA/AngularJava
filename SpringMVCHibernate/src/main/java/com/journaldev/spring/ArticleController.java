package com.journaldev.spring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.journaldev.spring.model.Article;
import com.journaldev.spring.service.ArticleService;

@Controller
public class ArticleController {

	private ArticleService articleService;

	// Using autowired to set ArticleService here
	@Autowired(required = true)
	@Qualifier(value = "articleService")
	public void setArticleService(ArticleService ar) {
		this.articleService = ar;
	}

	//Using ResponseEntity
    @RequestMapping(value = "/load", method = RequestMethod.GET)
    public ResponseEntity<List<Article>> listAllUsers() {
        List<Article> articles = articleService.listArticle();
        if(articles.isEmpty()){
            return new ResponseEntity<List<Article>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Article>>(articles, HttpStatus.OK);
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
										// "/articles", method =
										// RequestMethod.GET)

	}

	@RequestMapping("/remove/{id}")
	public String removeArticle(@PathVariable("id") int id) {
		this.articleService.removeArticle(id);
		return "redirect:/articles";
	}

	@RequestMapping("/edit/{id}")
	public String editArticle(@PathVariable("id") int id, Model model) {
		model.addAttribute("article", this.articleService.getArticleById(id));
		model.addAttribute("listArticle", this.articleService.listArticle());
		return "index"; // name of jsp file
	}

	//Using ResponseEntity
    @RequestMapping(value = "/articleBy/{category}", method = RequestMethod.GET)
    public ResponseEntity<List<Article>> listArticleByCategory(@PathVariable("category") String category) {
        List<Article> articles = articleService.listArticleByCategory(category);
        if(articles.isEmpty()){
            return new ResponseEntity<List<Article>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Article>>(articles, HttpStatus.OK);
    }
    
    //Using ResponseEntity
    @RequestMapping(value = "/detailBy/{id}", method = RequestMethod.GET)
    public ResponseEntity<Article> getDetailArticleById(@PathVariable("id") int id) {
        Article article = articleService.getArticleById(id);
        if(article.getId()<0){
            return new ResponseEntity<Article>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<Article>(article, HttpStatus.OK);
    }
}
