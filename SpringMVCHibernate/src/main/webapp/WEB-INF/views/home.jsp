<div class="content">
	<div class="container">
		<div class="content-header">
			<div class="content-header-right">
				<img class="thumbnail" ng-src="{{ctCtrl.firstArticle.img}}" />
				<div class="title">
					<a href="#/detail/{{article.id}}">{{ctCtrl.firstArticle.title}}</a>
				</div>
				<div class="sub-content">{{ctCtrl.firstArticle.subContent}}</div>
			</div>
		</div>
		<div class="left">
			<div class="content-left-title">Hot New</div>
			<ul class="title-group" ng-repeat="article in ctCtrl.Articles">
				<li><a href="#/detail/{{article.id}}">{{$index}}/{{" "+
						article.title}} </a></li>
			</ul>
		</div>
		<div class="row center" ng-repeat="article in ctCtrl.Articles"
			ng-if="$index % 3 == 0">
			<div class="col-md-3"
				ng-repeat="article in ctCtrl.Articles.slice($index, ($index+3 > ctCtrl.Articles.length ? ctCtrl.Articles.length : $index+3))">
				<a href="#/detail/{{article.id}}" class="thumbnail"> <img
					ng-src="{{article.img}}" alt="">
					<div class="mauvang"></div>
				</a> <span class="date">{{article.time}}</span>
				<div class="category">
					<a href="#/content/{{article.category}}">{{article.category}}</a>
				</div>
				<div class="title">
					<a href="#/detail/{{article.id}}">{{article.title}}</a>
				</div>
				<p class="quick-content">{{article.subContent}}</p>
			</div>
		</div>
	</div>
</div>