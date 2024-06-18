<div class="card card-body px-0 shadow-sm h-100 rounded-3 border-0">

	{{{ if !posts.index }}}
	<!-- main post topic info -->
	<div class="px-3" component="post/header">
		<div class="">
			<h1 class="topic-title fs-4">
				<span component="topic/title">{title}</span>
			</h1>
			<div class="d-flex gap-1 overflow-auto align-items-start">
				<div component="topic/labels" class="d-flex gap-2 flex-wrap {{{ if (!scheduled && (!pinned && (!locked && (!oldCid && !icons.length)))) }}}hidden{{{ end }}}">
					<span component="topic/scheduled" class="badge badge border border-gray-300 text-body {{{ if !scheduled }}}hidden{{{ end }}}">
						<i class="fa fa-clock-o"></i>
						[[topic:scheduled]]
					</span>
					<span component="topic/pinned" class="badge badge border border-gray-300 text-body {{{ if (scheduled || !pinned) }}}hidden{{{ end }}}">
						<i class="fa fa-thumb-tack"></i>
						{{{ if !pinExpiry }}}[[topic:pinned]]{{{ else }}}[[topic:pinned-with-expiry, {isoTimeToLocaleString(./pinExpiryISO, config.userLang)}]]{{{ end }}}
					</span>
					<span component="topic/locked" class="badge badge border border-gray-300 text-body {{{ if !locked }}}hidden{{{ end }}}">
						<i class="fa fa-lock"></i>
						[[topic:locked]]
					</span>
					<a href="{config.relative_path}/category/{oldCid}" class="badge badge border border-gray-300 text-body text-decoration-none {{{ if !oldCid }}}hidden{{{ end }}}">
						<i class="fa fa-arrow-circle-right"></i>
						{{{ if privileges.isAdminOrMod }}}[[topic:moved-from, {oldCategory.name}]]{{{ else }}}[[topic:moved]]{{{ end }}}
					</a>
					{{{each icons}}}<span class="lh-1">{@value}</span>{{{end}}}
				</div>

				{function.buildCategoryLabel, category, "a", "border"}

				<div data-tid="{./tid}" component="topic/tags" class="lh-1 tags tag-list d-flex flex-wrap hidden-xs hidden-empty gap-2"><!-- IMPORT partials/topic/tags.tpl --></div>

				<span class="badge border text-muted rounded-1 d-none d-lg-inline-block"><i class="fa fa-fw fa-user"></i> <span title="{postercount}">{humanReadableNumber(postercount)}</span></span>
				<span class="badge border text-muted rounded-1"><i class="fa fa-fw fa-pencil"></i> <span title="{postcount}">{humanReadableNumber(postcount)}</span></span>
				<span class="badge border text-muted rounded-1"><i class="fa fa-fw fa-eye"></i> <span title="{viewcount}">{humanReadableNumber(viewcount)}</span></span>
			</div>
		</div>
	</div>
	<hr class="mx-3"/>
	{{{ end }}}

	<div class="d-flex mb-2 ps-3 ps-md-0">
		<!-- profile pic-->
		<div class="d-none d-lg-block">
			<div class="sticky-top px-3" style="top: 1rem; z-index: 1;">
				<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
					{buildAvatar(posts.user, "64px", false, "rounded")}
				</a>
			</div>
		</div>

		<div class="text-wrap text-truncate flex-grow-1 me-3">
			<!-- username & timestamp-->
			<div class="small text-muted d-flex flex-nowrap align-items-center gap-1 mb-2">
				<!-- profile pic-->
				<div class="d-inline-block d-lg-none">
					<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
						{buildAvatar(./user, "24px", false, "rounded")}
					</a>
				</div>
				<!-- username -->
				<div class="text-truncate">
					<a class="text-muted fw-bold" href="{{{ if posts.user.userslug }}}{config.elative_path}/user/{posts.user.userslug}{{{ else }}}#{{{ end }}}" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}" title="{posts.user.displayname}">{posts.user.displayname}</a>
				</div>

				<!-- timestamp -->
				<div class="d-flex">
					<a class="permalink text-nowrap" href="{config.relative_path}/post/{posts.pid}"><span class="timeago text-xs text-muted opacity-75 text-decoration-underline" title="{posts.timestampISO}"></span></a>
				</div>
			</div>

			<!-- content -->
			<div class="post-content flex-grow-1" component="post/content" itemprop="text">
				{posts.content}
			</div>
		</div>
	</div>

	<!-- footer -->
	<div class="post-footer d-flex justify-content-end align-items-end h-100 me-3">
		<small class="post-tools text-muted d-flex gap-2">
			<span class="votes">
				<span class="me-1" component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>
				<a component="post/upvote" href="#" class="pe-2 text-muted {{{ if posts.upvoted }}}upvoted{{{ end }}}">
					<i class="fa fa-heart"></i><i class="fa fa-fw fa-heart-o"></i>
				</a>
			</span>

			<a component="post/reply" href="#" class="px-2 user-select-none opacity-75 {{{ if !privileges.topics:reply }}}hidden{{{ end }}}"><i class="fa fa-fw fa-reply"></i></a>
			<a component="post/quote" href="#" class="px-2 user-select-none opacity-75 {{{ if !privileges.topics:reply }}}hidden{{{ end }}}"><i class="fa fa-fw fa-quote-right"></i></a>
			<span component="post/tools" class="ps-2 dropdown bottom-sheet {{{ if !posts.display_post_menu }}}hidden{{{ end }}}">
				<a class="dropdown-toggle opacity-75" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-fw fa-gear opacity-75"></i></a>
				<ul class="dropdown-menu dropdown-menu-end" role="menu"></ul>
			</span>
		</small>
	</div>
</div>
