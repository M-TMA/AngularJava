'use strict';

App.controller('ArticleController', ['$scope', 'ArticleService', function($scope, ArticleService) {
          var self = this;
          self.Article={id:null,Articlename:'',address:'',email:''};
          self.Articles=[];
          debugger;
          self.fetchAllArticles = function(){
              ArticleService.fetchAllArticles()
                  .then(
      					       function(d) {
      						        self.Articles = d;
      					       },
            					function(errResponse){
            						console.error('Error while fetching Currencies');
            					}
      			       );
          };
           
          self.createArticle = function(Article){
              ArticleService.createArticle(Article)
		              .then(
                      self.fetchAllArticles, 
				              function(errResponse){
					               console.error('Error while creating Article.');
				              }	
                  );
          };

         self.updateArticle = function(Article, id){
              ArticleService.updateArticle(Article, id)
		              .then(
				              self.fetchAllArticles, 
				              function(errResponse){
					               console.error('Error while updating Article.');
				              }	
                  );
          };

         self.deleteArticle = function(id){
              ArticleService.deleteArticle(id)
		              .then(
				              self.fetchAllArticles, 
				              function(errResponse){
					               console.error('Error while deleting Article.');
				              }	
                  );
          };

          self.fetchAllArticles();

          self.submit = function() {
              if(self.Article.id==null){
                  console.log('Saving New Article', self.Article);    
                  self.createArticle(self.Article);
              }else{
                  self.updateArticle(self.Article, self.Article.id);
                  console.log('Article updated with id ', self.Article.id);
              }
              self.reset();
          };
              
          self.edit = function(id){
              console.log('id to be edited', id);
              for(var i = 0; i < self.Articles.length; i++){
                  if(self.Articles[i].id == id) {
                     self.Article = angular.copy(self.Articles[i]);
                     break;
                  }
              }
          };
              
          self.remove = function(id){
              console.log('id to be deleted', id);
              if(self.Article.id === id) {//clean form if the Article to be deleted is shown there.
                 self.reset();
              }
              self.deleteArticle(id);
          };

          
          self.reset = function(){
              self.Article={id:null,Articlename:'',address:'',email:''};
              $scope.myForm.$setPristine(); //reset Form
          };

      }]);
