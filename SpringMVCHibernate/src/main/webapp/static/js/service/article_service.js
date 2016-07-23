'use strict';

App.factory('ArticleService', ['$http', '$q', function($http, $q){
debugger;
	return {
		
			fetchAllArticles: function() {
					return $http.get('http://192.168.1.7:8080/SpringMVCHibernate/load')
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while fetching Articles');
										return $q.reject(errResponse);
									}
							);
			},
		    
		    createArticle: function(Article){
					return $http.post('http://192.168.1.7:8080/SpringMVCHibernate/Article/', Article)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while creating Article');
										return $q.reject(errResponse);
									}
							);
		    },
		    
		    updateArticle: function(Article, id){
					return $http.put('http://192.168.1.7:8080/SpringMVCHibernate/Article/'+id, Article)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while updating Article');
										return $q.reject(errResponse);
									}
							);
			},
		    
			deleteArticle: function(id){
					return $http.delete('http://192.168.1.7:8080/SpringMVCHibernate/Article/'+id)
							.then(
									function(response){
										return response.data;
									}, 
									function(errResponse){
										console.error('Error while deleting Article');
										return $q.reject(errResponse);
									}
							);
			}
		
	};

}]);
