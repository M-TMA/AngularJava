'use strict';
var App = angular.module('myApp', ['ngRoute']);
debugger;
App.config(['$routeProvider', function($routeProvider) {
	$routeProvider.when('/detail/:id', {
		templateUrl : 'page/detail_article',
		controller : 'DetailArticleController as detailArticleCtrl',
		resolve: {
            async: ['ArticleService','$route', function(ArticleService , $route) {
                return ArticleService.getDetailArticleById($route.current.params.id);
           	}]
        }
	}).when('/', {
		templateUrl : '/',
		controller : 'ArticleController'
	}).otherwise({
		redirectTo : '/'
	});
}]);

