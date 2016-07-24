<style>
.col-md-6 {
	width: 632px;
	background-color: white;
	border-radius: 10px;
	border: solid 1px #E8DCDC;
	padding-top: 14px;
	border-bottom: solid 1px whitesmoke;
	position: absolute;
	top: 63px;
}

.title.ng-binding {
	font-size: 22px;
	border-bottom: solid 1px whitesmoke;
}

p.detail_content.ng-binding {
	width: 617px;
	margin-top: 12px;
	margin-left: -7px;
	text-align: justify;
}

.detail img.thumbnal {
	width: 600px;
	height: 550px;
}
</style>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-push-3 col-md-pull-3">
			<div class="detail">
				<img class="thumbnal" ng-src="{{detailArticleCtrl.article.img}}" />
				<span class="time"></span>
				<div class="title">{{detailArticleCtrl.article.title}}</div>
				<p class="detail_content">{{detailArticleCtrl.article.content}}"</p>
			</div>
		</div>
	</div>
</div>

