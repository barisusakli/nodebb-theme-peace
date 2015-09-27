<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="topic row">
	<div class="col-lg-8">
		<h1 component="post/header" itemprop="name">

			<i class="fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"></i> <i class="fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->"></i> <span class="topic-title" component="topic/title">{title}</span>


		</h1>

		<div component="topic/deleted/message" class="alert alert-warning<!-- IF !deleted --> hidden<!-- ENDIF !deleted -->">[[topic:deleted_message]]</div>

		<ul component="topic" class="posts" data-tid="{tid}">
			<!-- BEGIN posts -->
				<li component="post" class="clearfix <!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
					<a component="post/anchor" name="{posts.index}"></a>

					<meta itemprop="datePublished" content="{posts.relativeTime}">
					<meta itemprop="dateModified" content="{posts.relativeEditTime}">

					<!-- IMPORT partials/topic/post.tpl -->
				</li>

			<!-- END posts -->
		</ul>

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->

	</div>
	<div class="col-lg-4">
		<!-- IMPORT partials/topic_sidebar.tpl -->
	</div>

</div>

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
