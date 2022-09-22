<div class="topic row">
	<div class="col-lg-10">
		<div class="row mb-3" component="post/header">
			<div class="col-12 text-center">
				<h4 class="topic-title" component="topic/title">{title}</h4>
				<div class="d-flex justify-content-center">
					<div class="d-inline-block me-2">
						<a href="{config.relative_path}/category/{category.slug}">
							<span class="badge rounded-1" style="color:{category.color}; background-color: {category.bgColor};"><i class="fa fa-fw {category.icon}"></i> {category.name}</span>
						</a>
					</div>
					<div class="tags tag-list d-inline-block hidden-xs">
						<!-- IMPORT partials/topic/tags.tpl -->
					</div>
				</div>
			</div>
		</div>

		{{{ if !scheduled }}}
		<!-- IMPORT partials/topic/deleted-message.tpl -->
		{{{ end }}}

		<ul component="topic" class="posts list-unstyled" data-tid="{tid}">
			{{{ each posts }}}
				<li component="post" class="mb-3 {{{ if posts.deleted }}}deleted{{{ end }}}" <!-- IMPORT partials/data/topic.tpl -->>
					<a component="post/anchor" data-index="{posts.index}" name="{posts.index}"></a>

					<meta itemprop="datePublished" content="{posts.relativeTime}">
					<meta itemprop="dateModified" content="{posts.relativeEditTime}">

					<!-- IMPORT partials/topic/post.tpl -->
				</li>
			{{{ end }}}
		</ul>

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->

	</div>
	<div class="col-lg-2">
		<!-- IMPORT partials/topic/sidebar.tpl -->
	</div>
</div>

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
