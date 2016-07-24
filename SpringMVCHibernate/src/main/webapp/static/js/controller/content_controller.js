'use strict';
App.controller('ContentController', [ 'async', '$scope', 'ArticleService',
		function(async, $scope, ArticleService) {
			debugger;
			var self = this;
			self.Articles = async;
		} ]);
