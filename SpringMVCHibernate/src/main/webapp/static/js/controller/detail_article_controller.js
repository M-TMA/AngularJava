App.controller('DetailArticleController', [ 'async', '$scope',
		'ArticleService', '$routeParams', '$sce',
		function(async, $scope, ArticleService, $routeParams, $sce) {
			"use strict"
			debugger;
			var myController = this;
			myController.article = async;
			myController.arContent = async.content;
			myController.trustedContent = $sce.trustAsHtml(myController.arContent);
		} ]);