<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-md-3" ng-repeat="article in ctCtrl.Articles">
				<a href="#/detail/{{article.id}}" class="thumbnail"> <img
					ng-src="{{article.img}}" alt="">
					<div class="mauvang"></div>
				</a> <span class="date">{{article.time}}</span>
				<div class="category">
					<a href="#/content/{{article.category}}">{{article.category}}</a>
				</div>
				<div class="title">
					<a href="#/detail/{{article.id}}" >{{article.title}}</a>
				</div>
				<p class="quick-content">{{article.subContent}}</p>
			</div>
		</div>
	</div>
</div>