'use strict';
App.controller('ArticleController', [ '$scope', 'ArticleService',
		function($scope, ArticleService) {
			debugger;
			var self = this;
			self.Article = {
				id : null,
				Articlename : '',
				address : '',
				email : ''
			};
			self.Articles = [];
		} ]);
