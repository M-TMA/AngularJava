'use strict';
App.controller('ArticleController', [ '$scope', 'ArticleService',
		function($scope, ArticleService) {
			debugger;
			var self = this;
			self.Articles = [];

			self.listAllImgArticles = function() {
				ArticleService.fetchAllArticles().then(function(response) {
					self.Articles = response;
					self.activeImg = response[1].img;
				}, function(error) {
					console.log(error);
				})
			}
			//self.listAllImgArticles();
		}]);
