<div class="row">
	<div class="col-2 pt-3">
		<div class="text-center">
			<div class="d-inline-block p-1 card card-body rounded-0">
				<div class="rounded">
					{buildAvatar(posts.user, "70px")}
				</div>
			</div>
		</div>

		<div class="text-muted text-center">
			<a class="" href="{{{ if posts.user.userslug }}}{config.relative_path}/user/{posts.user.userslug}{{{ else }}}#{{{ end }}}" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}" title="{posts.user.displayname}">{posts.user.displayname}</a>
		</div>
	</div>
	<div class="col-10 mb-3">
		<div class="card card-body pb-2 shadow-sm h-100">
			<div class="text-end card card-body p-1 position-absolute" style="top: -15px; right: 20px;">
				<a class="permalink opacity-75" href="{config.relative_path}/post/{posts.pid}"><small><span class="timeago" title="{posts.timestampISO}"></span></small></a>
			</div>
			<div class="content pt-2" component="post/content" itemprop="text">
				{posts.content}
			</div>
			<div class="post-footer d-flex justify-content-end align-items-end h-100">
				<small class="post-tools text-muted opacity-75 d-flex gap-3">
					<a component="post/reply" href="#" class="user-select-none <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]</a>
					<a component="post/quote" href="#" class="user-select-none <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:quote]]</a>
				</small>
			</div>
		</div>
	</div>
</div>