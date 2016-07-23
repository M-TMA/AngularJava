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

	//-------------------Retrieve All Users--------------------------------------------------------
//    @RequestMapping(value = "/load", method = RequestMethod.GET)
//    public List<Article> listAllArticle() {
//        List<Article> articles = articleService.listArticle();
//        return articles;
//    }
	
	 //-------------------Retrieve All Users--------------------------------------------------------
    
    @RequestMapping(value = "/load", method = RequestMethod.GET)
    public ResponseEntity<List<Article>> listAllUsers() {
        List<Article> articles = articleService.listArticle();
        if(articles.isEmpty()){
            return new ResponseEntity<List<Article>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Article>>(articles, HttpStatus.OK);
    }
    
//    @RequestMapping(value = "/load", method = RequestMethod.GET)
//    public @ResponseBody String find() {
//        return articleService.listArticle().toString();
//    }
	
	@RequestMapping(value = "/articles", method = RequestMethod.GET)
	public String listArticle(Model model) {
		model.addAttribute("article", new Article());
		model.addAttribute("listArticle", this.articleService.listArticle());
		return "index"; // name of jsp file
	}

	@RequestMapping(value = "/articles/{category}", method = RequestMethod.GET)
	public String listArticleByCategory(
			@PathVariable("category") String category, Model model) {
		model.addAttribute("article", new Article());
		model.addAttribute("listArticle",
				this.articleService.listArticleByCategory(category));
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

	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public String getDetailArticelById(@PathVariable("id") int id, Model model) {
		model.addAttribute("article",  this.articleService.getArticleById(id));
		return "detail_article"; // name of jsp file
	}
}
