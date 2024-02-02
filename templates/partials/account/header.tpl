<div class="d-flex mb-3">
	<ul class="nav">
		<li class="nav-item me-3">
			<a class="nav-link active" aria-current="page" href="{config.relative_path}/user/{userslug}">[[user:profile]]</a>
		</li>
		{{{ if canEdit }}}
		<li class="nav-item me-3">
			<a class="nav-link" href="{config.relative_path}/user/{userslug}/edit">[[user:edit]]</a>
		</li>
		<li class="nav-item me-3">
			<a class="nav-link" href="{config.relative_path}/user/{userslug}/settings">[[user:settings]]</a>
		</li>
		{{{ end }}}
		<li class="nav-item dropdown me-0">
			<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-ellipsis-h"></i></a>
			<ul class="dropdown-menu" role="menu">
				<!-- IF loggedIn -->
				<!-- IF !isSelf -->
				<!-- IF !banned -->
				<!-- IF canChat -->
				<li class="<!-- IF !hasPrivateChat -->hidden<!-- ENDIF !hasPrivateChat -->">
					<a class="dropdown-item" component="account/chat" href="#" role="menuitem">[[user:chat-with, {username}]]</a>
				</li>
				<li>
					<a class="dropdown-item" component="account/new-chat" href="#" role="menuitem">[[user:new-chat-with, {username}]]</a>
				</li>
				<!-- ENDIF canChat -->
				<li>
					<a class="dropdown-item" component="account/flag" href="#" role="menuitem">[[user:flag-profile]]</a>
				</li>
				<li>
					<a class="dropdown-item {{{ if ./isBlocked }}}hidden{{{ end }}}" component="account/block" href="#" role="menuitem">[[user:block-user]]</a>
				</li>
				<li>
					<a class="dropdown-item {{{ if !./isBlocked }}}hidden{{{ end }}}" component="account/unblock" href="#" role="menuitem">[[user:unblock-user]]</a>
				</li>
				<li role="separator" class="dropdown-divider"></li>
				<!-- ENDIF !banned -->
				<!-- ENDIF !isSelf -->
				<!-- ENDIF loggedIn -->

				<!-- IF !isSelf -->
				{{{ if (canBan || canMute) }}}
				<li class="dropdown-header">[[user:admin-actions-label]]</li>
				{{{ end }}}
				{{{ if canBan }}}
				<li class="<!-- IF banned -->hide<!-- ENDIF banned -->">
					<a class="dropdown-item" component="account/ban" href="#" role="menuitem">[[user:ban-account]]</a>
				</li>
				<li class="<!-- IF !banned -->hide<!-- ENDIF !banned -->">
					<a class="dropdown-item" component="account/unban" href="#" role="menuitem">[[user:unban-account]]</a>
				</li>
				{{{ end }}}
				{{{ if canMute }}}
				<li class="<!-- IF muted -->hide<!-- ENDIF muted -->">
					<a class="dropdown-item" component="account/mute" href="#" role="menuitem">[[user:mute-account]]</a>
				</li>
				<li class="<!-- IF !muted -->hide<!-- ENDIF !muted -->">
					<a class="dropdown-item" component="account/unmute" href="#" role="menuitem">[[user:unmute-account]]</a>
				</li>
				{{{ end }}}
				<!-- IF isAdmin -->
				<li>
					<a component="account/delete-account" href="#" class="dropdown-item" role="menuitem">[[user:delete-account-as-admin]]</a>
					<a component="account/delete-content" href="#" class="dropdown-item" role="menuitem">[[user:delete-content]]</a>
					<a component="account/delete-all" href="#" class="dropdown-item" role="menuitem">[[user:delete-all]]</a>
				</li>
				<li role="separator" class="dropdown-divider"></li>
				<!-- ENDIF isAdmin -->
				<!-- ENDIF !isSelf -->

				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/following" role="menuitem">[[user:following]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.following}">{formattedNumber(counts.following)}</span></a></li>
				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/followers" role="menuitem">[[user:followers]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.followers}">{formattedNumber(counts.followers)}</span></a></li>
				<!-- IF canEdit -->
				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/blocks" role="menuitem">[[user:blocks]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.blocks}">{formattedNumber(counts.blocks)}</span></a></li>
				<!-- ENDIF canEdit -->
				<li role="separator" class="dropdown-divider"></li>
				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/topics" role="menuitem">[[global:topics]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.topics}">{formattedNumber(counts.topics)}</span></a></li>
				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/posts" role="menuitem">[[global:posts]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.posts}">{formattedNumber(counts.posts)}</span></a></li>
				<!-- IF !reputation:disabled -->
				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/best" role="menuitem">[[global:best]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.best}">{formattedNumber(counts.best)}</span></a></li>
				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/controversial" role="menuitem">[[global:controversial]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.controversial}">{formattedNumber(counts.controversial)}</span></a></li>
				<!-- ENDIF !reputation:disabled -->
				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/groups" role="menuitem">[[global:header.groups]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.groups}">{formattedNumber(counts.groups)}</span></a></li>

				<!-- IF canEdit -->
				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/categories" role="menuitem">[[user:watched-categories]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.categoriesWatched}">{formattedNumber(counts.categoriesWatched)}</span></a></li>
				{{{ if isSelf }}}
				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/tags" role="menuitem">[[user:watched-tags]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.tagsWatched}">{formattedNumber(counts.tagsWatched)}</span></a></li>
				{{{ end }}}
				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/bookmarks" role="menuitem">[[user:bookmarks]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.bookmarks}">{formattedNumber(counts.bookmarks)}</span></a></li>
				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/watched" role="menuitem">[[user:watched]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.watched}">{formattedNumber(counts.watched)}</span></a></li>
				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/ignored" role="menuitem">[[user:ignored]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.ignored}">{formattedNumber(counts.ignored)}</span></a></li>
				<!-- IF !reputation:disabled -->
				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/upvoted" role="menuitem">[[global:upvoted]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.upvoted}">{formattedNumber(counts.upvoted)}</span></a></li>
				<!-- IF !downvote:disabled -->
				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/downvoted" role="menuitem">[[global:downvoted]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.downvoted}">{formattedNumber(counts.downvoted)}</span></a></li>
				<!-- ENDIF !downvote:disabled -->
				<!-- ENDIF !reputation:disabled -->
				<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/uploads" role="menuitem">[[global:uploads]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.uploaded}">{formattedNumber(counts.uploaded)}</span></a></li>
				<!-- ENDIF canEdit -->

				{{{each profile_links}}}
				<!-- IF @first -->
				<li role="separator" class="dropdown-divider"></li>
				<!-- ENDIF @first -->
				<li id="{profile_links.id}" class="plugin-link <!-- IF profile_links.public -->public<!-- ELSE -->private<!-- ENDIF profile_links.public -->"><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/{profile_links.route}" role="menuitem"><!-- IF ../icon --><i class="fa fa-fw {profile_links.icon}"></i> <!-- END -->{profile_links.name}</a></li>
				{{{end}}}
			</ul>
		</li>
	</ul>
</div>