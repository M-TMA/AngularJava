'use strict';
App.controller('ContentController', [ 'async', '$scope', 'ArticleService',
		function(async, $scope, ArticleService) {
			debugger;
			var self = this;
			self.Articles = async;
			self.firstArticle = async[0];
			self.Articles.splice(0,1);
		} ]);
