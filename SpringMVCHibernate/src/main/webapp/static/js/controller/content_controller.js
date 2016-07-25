'use strict';
App.controller('ContentController', [ 'async', '$scope', 'ArticleService',
		function(async, $scope, ArticleService) {
			debugger;
			var self = this;
			self.Articles = async;
			self.firstArticle = async[0];
			self.arsHeaderRight = [];
			self.arsHeaderRight.push(async[1]);
			self.arsHeaderRight.push(async[2]);
			self.arsHeaderRight.push(async[3]);
			self.Articles.splice(1, 3);
			self.Articles.splice(0, 1);
		} ]);
