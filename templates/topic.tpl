<div class="topic row">
	<div class="col-lg-10">
		<div class="row mb-3" component="post/header">
			<div class="col-2 text-muted text-end" component="topic/labels">
				<i component="topic/pinned" class="fa fa-fw fa-thumb-tack {{{ if !pinned }}}hidden{{{ end }}}"></i>
				<i component="topic/locked" class="fa fa-fw fa-lock {{{ if !locked }}}hidden{{{ end }}}"></i>
			</div>
			<div class="col-10">
				<h4 class="topic-title mb-0" component="topic/title">{title}</h4>
				<div class="d-flex">
					<div class="me-2">
						{category.name}
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
