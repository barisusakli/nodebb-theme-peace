<div class="topic row mb-5">
	<div class="col-10">
		{{{ if merger }}}
		<!-- IMPORT partials/topic/merged-message.tpl -->
		{{{ end }}}

		{{{ if forker }}}
		<!-- IMPORT partials/topic/forked-message.tpl -->
		{{{ end }}}

		{{{ if !scheduled }}}
		<!-- IMPORT partials/topic/deleted-message.tpl -->
		{{{ end }}}

		<ul component="topic" class="posts list-unstyled mb-5" data-tid="{tid}">
			{{{ each posts }}}
				<li component="post" class="mb-3 {{{ if posts.deleted }}}deleted{{{ end }}}" <!-- IMPORT partials/data/topic.tpl -->>
					<a component="post/anchor" data-index="{./index}" id="{increment(./index, "1")}"></a>

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

		{{{ if config.enableQuickReply }}}
		<!-- IMPORT partials/topic/quickreply.tpl -->
		{{{ end }}}

		{{{ if config.usePagination }}}
		<!-- IMPORT partials/paginator.tpl -->
		{{{ end }}}
	</div>
	<div class="col-2 px-0 px-lg-2">
		<!-- IMPORT partials/topic/sidebar.tpl -->
	</div>
</div>

<div data-widget-area="footer">
	{{{each widgets.footer}}}
	{{widgets.footer.html}}
	{{{end}}}
</div>

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
