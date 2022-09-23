<div class="row">
	<div class="col-12 mb-3">
		<div class="card card-body pb-2 shadow-sm h-100 rounded-0">
			<!-- timestamp -->
			{{{ if posts.index }}}
			<div class="text-end badge px-1 py-1 position-absolute rounded-0" style="top: -1px; right: -1px;">
				<a class="permalink opacity-75" href="{config.relative_path}/post/{posts.pid}"><span class="timeago" title="{posts.timestampISO}"></span></a>
			</div>
			{{{ end }}}


			<div class="d-flex pt-1">
				<!-- profile pic-->
				<div class="">
					<div class="text-center">
						<div class="rounded">
							{buildAvatar(posts.user, "64px")}
						</div>
					</div>

					<div class="text-muted text-center text-wrap" style="width: 100px;">
						<a class="" href="{{{ if posts.user.userslug }}}{config.relative_path}/user/{posts.user.userslug}{{{ else }}}#{{{ end }}}" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}" title="{posts.user.displayname}">{posts.user.displayname}</a>
					</div>
				</div>
				<div class="border-start ms-2 ps-3 text-wrap text-truncate">
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
									<a class="permalink" href="{config.relative_path}/post/{posts.pid}"><span class="timeago badge rounded-1 text-body" title="{posts.timestampISO}"></span></a>
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
				<small class="post-tools text-muted opacity-75 d-flex gap-3">
					<a component="post/reply" href="#" class="user-select-none <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]</a>
					<a component="post/quote" href="#" class="user-select-none <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:quote]]</a>
				</small>
			</div>
		</div>
	</div>
</div>