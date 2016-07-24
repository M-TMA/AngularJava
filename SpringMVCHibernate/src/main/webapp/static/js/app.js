'use strict';
var App = angular.module('myApp', ['ngRoute','ngSanitize']);

App.config(['$routeProvider', function($routeProvider) {
	debugger;
	$routeProvider.when('/detail/:id', {
		templateUrl : 'page/detail_article',
		controller : 'DetailArticleController as detailArticleCtrl',
		resolve: {
            async: ['ArticleService','$route', function(ArticleService , $route) {
                return ArticleService.getDetailArticleById($route.current.params.id);
           	}]
        }
	}).when('/content', {
		templateUrl : 'page/content',
		controller : 'ContentController as ctCtrl',
		resolve: {
            async: ['ArticleService', function(ArticleService) {
                return ArticleService.fetchAllArticles();
           	}]
        }
	}).when('/content/:category', {
		templateUrl : 'page/content',
		controller : 'ContentController as ctCtrl',
		resolve: {
            async: ['ArticleService','$route', function(ArticleService,$route) {
                return ArticleService.listArticlesByCategory($route.current.params.category);
           	}]
        }
	}).otherwise({
		redirectTo : '/'
	});
}]);

