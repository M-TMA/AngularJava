<div class="content">
	<div class="container">
		<div id="main-row" class="row">
			<div id="col-left" class="col-md-3">
				<div class="content-left-title">Hot New</div>
				<ul class="title-group" ng-repeat="article in ctCtrl.Articles">
					<li><a href="#/detail/{{article.id}}">{{$index}}/{{"
							"+article.title}} </a></li>
				</ul>
			</div>
			<div id="col-right" class="col-md-9">
				<div id="row-header" class="row">
					<div class="col-md-9">
						<img class="thumbnail" ng-src="{{ctCtrl.firstArticle.img}}" />
						<div class="title">
							<a href="#/detail/{{article.id}}">{{ctCtrl.firstArticle.title}}</a>
						</div>
						<div class="sub-content">{{ctCtrl.firstArticle.subContent}}</div>
					</div>
					<div class="col-md-3">
						<div class="row" ng-repeat="article in ctCtrl.arsHeaderRight">
							<img id="image-header-right" class="thumbnail" ng-src="{{article.img}}" />
							<div id="title-header-right">
								<a href="#/detail/{{article.id}}">{{article.title}}</a>
							</div>
						</div>
					</div>
				</div>
				<div id="row-content" class="row">
					<div class="col-md-12">
						<div class="row" ng-repeat="article in ctCtrl.Articles"
							ng-if="$index % 4 == 0">
							<div class="col-md-3"
								ng-repeat="article in ctCtrl.Articles.slice($index, ($index+4 > ctCtrl.Articles.length ? ctCtrl.Articles.length : $index+4))">
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
			</div>
		</div>
	</div>