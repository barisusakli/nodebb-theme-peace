<div class="row">
	<div class="col-12">
		<div class="card card-body pb-2 shadow-sm h-100 rounded-0">
			<!-- timestamp -->
			{{{ if posts.index }}}
			<div class="mb-2">
				<div class="text-end badge p-2 position-absolute rounded-0" style="top: -1px; right: -1px;">
					<a class="permalink" href="{config.relative_path}/post/{posts.pid}"><span class="timeago text-muted opacity-75 text-decoration-underline" title="{posts.timestampISO}"></span></a>
				</div>
			</div>
			{{{ end }}}


			<div class="d-flex mb-2">
				<!-- profile pic-->
				<div class="d-none d-lg-block border-end me-3" style="min-width:100px; max-width: 100px;">
					<div class="mx-2">
						<div class="text-center">
							<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
								<div class="rounded">
									{buildAvatar(posts.user, "64px")}
								</div>
							</a>
						</div>
					</div>

					<div class="text-muted text-center text-wrap">
						<a class="fs-6" href="{{{ if posts.user.userslug }}}{config.relative_path}/user/{posts.user.userslug}{{{ else }}}#{{{ end }}}" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}" title="{posts.user.displayname}">{posts.user.displayname}</a>
					</div>
				</div>
				<div class="d-inline-block d-lg-none me-2">
					<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
						{buildAvatar(./user, "24px", true)}
					</a>
				</div>

				<div class="text-wrap text-truncate">
					<!-- main post topic info -->
					{{{ if !posts.index }}}
					<div class="row mb-3" component="post/header">
						<div class="col-12">
							<h4 class="topic-title" component="topic/title">{title}</h4>
							<div class="d-flex gap-1">
								<div class="d-inline-block">
									<a href="{config.relative_path}/category/{category.slug}">
										<span class="badge rounded-1" style="color:{category.color}; background-color: {category.bgColor};"><i class="fa {category.icon}"></i>&nbsp;{category.name}</span>
									</a>
								</div>

								<div class="tags tag-list d-inline-block hidden-xs">
									{{{ each tags }}}
									<!-- IMPORT partials/topic/tag.tpl -->
									{{{ end }}}
								</div>

								<div class="d-inline-block">
									<a class="permalink" href="{config.relative_path}/post/{posts.pid}"><span class="timeago badge rounded-1 text-muted opacity-75 text-decoration-underline" title="{posts.timestampISO}"></span></a>
								</div>
							</div>
						</div>
					</div>
					{{{ end }}}
					<!-- content -->
					<div class="content flex-grow-1" component="post/content" itemprop="text">
						{posts.content}
					</div>
				</div>
			</div>

			<!-- footer -->
			<div class="post-footer d-flex justify-content-end align-items-end h-100">

				<small class="post-tools text-muted d-flex gap-3">
					<span class="">
						<span class="me-1" component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>
						<a component="post/upvote" href="#" class="text-muted {{{ if posts.upvoted }}}upvoted{{{ end }}}">
							<i class="fa fa-heart"></i><i class="fa fa-heart-o"></i>
						</a>
					</span>

					<a component="post/reply" href="#" class="user-select-none opacity-75 {{{ if !privileges.topics:reply }}}hidden{{{ end }}}">[[topic:reply]]</a>
					<a component="post/quote" href="#" class="user-select-none opacity-75 {{{ if !privileges.topics:reply }}}hidden{{{ end }}}">[[topic:quote]]</a>
					<span component="post/tools" class="dropdown moderator-tools bottom-sheet <!-- IF !posts.display_post_menu -->hidden<!-- ENDIF !posts.display_post_menu -->">
						<a class="dropdown-toggle opacity-75" href="#" data-bs-toggle="dropdown"><i class="fa fa-fw fa-gear opacity-75"></i></a>
						<ul class="dropdown-menu dropdown-menu-end" role="menu"></ul>
					</span>
				</small>
			</div>
		</div>
	</div>
</div>