<div class="card card-body px-0 shadow-sm h-100 rounded-3 border-0">

	{{{ if !posts.index }}}
	<!-- main post topic info -->
	<div class="px-3" component="post/header">
		<div class="">
			<h4 class="topic-title">
				<span component="topic/labels">
					<i component="topic/scheduled" class="text-muted fa fa-clock-o {{{ if !scheduled }}}hidden{{{ end }}}" title="[[topic:scheduled]]"></i>
					<i component="topic/pinned" class="text-muted fa fa-thumb-tack {{{ if (scheduled || !pinned) }}}hidden{{{ end }}}" title="{{{ if !pinExpiry }}}[[topic:pinned]]{{{ else }}}[[topic:pinned-with-expiry, {pinExpiryISO}]]{{{ end }}}"></i>
					<i component="topic/locked" class="text-muted fa fa-lock {{{ if !locked }}}hidden{{{ end }}}" title="[[topic:locked]]"></i>
					<i class="text-muted fa fa-arrow-circle-right {{{ if !oldCid }}}hidden{{{ end }}}" title="{{{ if privileges.isAdminOrMod }}}[[topic:moved-from, {oldCategory.name}]]{{{ else }}}[[topic:moved]]{{{ end }}}"></i>
					{{{each icons}}}{@value}{{{end}}}
				</span>
				<span component="topic/title">{title}</span>
			</h4>
			<div class="d-flex gap-1 overflow-auto align-items-start">
				<div class="d-flex gap-1 align-items-center flex-wrap">
					<div class="lh-1">
						<a class="badge rounded-1 h-100" style="color:{category.color}; background-color: {category.bgColor};" href="{config.relative_path}/category/{category.slug}">
							<i class="fa {category.icon}"></i>&nbsp;{category.name}
						</a>
					</div>

					<div data-tid="{./tid}" component="topic/tags" class="lh-1 tags tag-list d-flex flex-wrap hidden-xs hidden-empty gap-2"><!-- IMPORT partials/topic/tags.tpl --></div>
				</div>
				<div class="d-flex flex-grow-1 justify-content-end gap-2">
					<span class="badge border border-muted text-muted rounded-1 d-none d-lg-inline-block"><span title="{postercount}">{humanReadableNumber(postercount)}</span> <i class="fa fa-fw fa-user"></i></span>
					<span class="badge border border-muted text-muted rounded-1"><span title="{postcount}">{humanReadableNumber(postcount)}</span> <i class="fa fa-fw fa-pencil"></i></span>
					<span class="badge border border-muted text-muted rounded-1"><span title="{viewcount}">{humanReadableNumber(viewcount)}</span> <i class="fa fa-fw fa-eye"></i></span>
				</div>
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

		<div class="vr d-none d-lg-block text-muted me-3" style="min-width: 2px;"></div>

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
				<div class="d-flex flex-grow-1 justify-content-end">
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
			<span component="post/tools" class="ps-2 dropdown moderator-tools bottom-sheet {{{ if !posts.display_post_menu }}}hidden{{{ end }}}">
				<a class="dropdown-toggle opacity-75" href="#" data-bs-toggle="dropdown"><i class="fa fa-fw fa-gear opacity-75"></i></a>
				<ul class="dropdown-menu dropdown-menu-end" role="menu"></ul>
			</span>
		</small>
	</div>
</div>
