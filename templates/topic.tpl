<div class="topic row">
	<div class="col-lg-10">
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

				{{{ if (config.topicPostSort != "most_votes") }}}
				{{{ each ./events}}}
				<!-- IMPORT partials/topic/event.tpl -->
				{{{ end }}}
				{{{ end }}}

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
