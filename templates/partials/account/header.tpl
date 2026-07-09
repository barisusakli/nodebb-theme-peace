<div class="card card-body p-1 shadow-sm border-0 rounded-3 mb-4">
	<div class="d-flex flex-column flex-fill gap-3">
		<div class="cover position-static rounded-1 w-100" component="account/cover" style="background-image: url({cover:url}); background-position: {cover:position};">
			<div class="container">
				{{{ if (allowCoverPicture && canEdit) }}}
				<div class="controls text-center">
					<a href="#" class="upload p-2 m-2 rounded-1 text-bg-light opacity-75"><i class="fa fa-fw fa-upload"></i></a>
					<a href="#" class="resize p-2 m-2 rounded-1 text-bg-light opacity-75"><i class="fa fa-fw fa-arrows"></i></a>
					<a href="#" class="remove p-2 m-2 rounded-1 text-bg-light opacity-75"><i class="fa fa-fw fa-times"></i></a>
				</div>
				<a href="#" class="save btn btn-primary">{{tx("groups:cover-save")}} <i class="fa fa-fw fa-floppy-o"></i></a>
				<div class="indicator text-bg-primary">{{tx("groups:cover-saving")}} <i class="fa fa-fw fa-refresh fa-spin"></i></div>
				{{{ end }}}
			</div>
		</div>

		<div class="d-flex ps-3 pb-3 gap-3">
			<!-- avatar -->
			<div class="avatar-wrapper position-relative hover-parent text-center flex-shrink-1">
				<a href="{config.relative_path}/user/{userslug}">
					{{buildAvatar(@value, "128px", false, "rounded")}}
				</a>
				{{{ if (allowProfilePicture && isSelfOrAdminOrGlobalModerator)}}}
				<a href="#" component="profile/change/picture" class="d-none d-md-block pointer p-2 rounded-1 text-bg-light position-absolute top-50 start-50 translate-middle hover-opacity-75">
					<span><i class="fa fa-fw fa-upload"></i></span>
				</a>
				{{{ end }}}
			</div>

			<!-- name & groups -->
			<div class="d-flex flex-column gap-2 flex-fill">
				<div class="d-flex justify-content-between align-items-center bottom-sheet">
					<h4 class="mb-0">{displayname} <span class="text-muted">(@{username})</span></h4>

					<div class="d-flex gap-2">
						{{{ if (loggedIn && !isSelf)}}}
						<a component="account/unfollow" href="#" class="btn btn-outline-warning flex-fill{{{ if (!isFollowing && !isFollowPending) }}} hide{{{ end }}}">
							{{{ if isFollowPending }}}{{tx("user:cancel-follow")}}{{{ else }}}{{tx("user:unfollow")}}{{{ end }}}
						</a>
						<a component="account/follow" href="#" class="btn btn-primary flex-fill{{{ if (isFollowing || isFollowPending) }}} hide{{{ end }}}">{{tx("user:follow")}}</a>
						{{{ end }}}

						<div>
							<button class="btn btn-ghost" data-bs-toggle="dropdown"><i class="fa fa-gear text-muted"></i></button>
							<ul class="dropdown-menu dropdown-menu-end p-1" role="menu">
								<li>
									<a class="dropdown-item rounded-1" aria-current="page" href="{config.relative_path}/user/{userslug}">{{tx("user:profile")}}</a>
								</li>
								{{{ if canEdit }}}
								<li>
									<a class="dropdown-item rounded-1" href="{config.relative_path}/user/{userslug}/edit">{{tx("user:edit")}}</a>
								</li>
								<li>
									<a class="dropdown-item rounded-1" href="{config.relative_path}/user/{userslug}/settings">{{tx("user:settings")}}</a>
								</li>
								{{{ end }}}
								<li role="separator" class="dropdown-divider"></li>
								<!-- IF loggedIn -->
								<!-- IF !isSelf -->
								<!-- IF !banned -->
								<!-- IF canChat -->
								<li class="<!-- IF !hasPrivateChat -->hidden<!-- ENDIF !hasPrivateChat -->">
									<a class="dropdown-item rounded-1" component="account/chat" href="#" role="menuitem">{{tx("user:chat-with", txEscape(username))}}</a>
								</li>
								<li>
									<a class="dropdown-item rounded-1" component="account/new-chat" href="#" role="menuitem">{{tx("user:new-chat-with", txEscape(username))}}</a>
								</li>
								<!-- ENDIF canChat -->
								<li>
									<a class="dropdown-item rounded-1" component="account/flag" href="#" role="menuitem">{{tx("user:flag-profile")}}</a>
								</li>
								<li>
									<a class="dropdown-item rounded-1 {{{ if ./isBlocked }}}hidden{{{ end }}}" component="account/block" href="#" role="menuitem">{{tx("user:block-user")}}</a>
								</li>
								<li>
									<a class="dropdown-item rounded-1 {{{ if !./isBlocked }}}hidden{{{ end }}}" component="account/unblock" href="#" role="menuitem">{{tx("user:unblock-user")}}</a>
								</li>
								<li role="separator" class="dropdown-divider"></li>
								<!-- ENDIF !banned -->
								<!-- ENDIF !isSelf -->
								<!-- ENDIF loggedIn -->

								<!-- IF !isSelf -->
								{{{ if (canBan || canMute) }}}
								<li class="dropdown-header">{{tx("user:admin-actions-label")}}</li>
								{{{ end }}}
								{{{ if canBan }}}
								<li class="<!-- IF banned -->hide<!-- ENDIF banned -->">
									<a class="dropdown-item rounded-1" component="account/ban" href="#" role="menuitem">{{tx("user:ban-account")}}</a>
								</li>
								<li class="<!-- IF !banned -->hide<!-- ENDIF !banned -->">
									<a class="dropdown-item rounded-1" component="account/unban" href="#" role="menuitem">{{tx("user:unban-account")}}</a>
								</li>
								{{{ end }}}
								{{{ if canMute }}}
								<li class="<!-- IF muted -->hide<!-- ENDIF muted -->">
									<a class="dropdown-item rounded-1" component="account/mute" href="#" role="menuitem">{{tx("user:mute-account")}}</a>
								</li>
								<li class="<!-- IF !muted -->hide<!-- ENDIF !muted -->">
									<a class="dropdown-item rounded-1" component="account/unmute" href="#" role="menuitem">{{tx("user:unmute-account")}}</a>
								</li>
								{{{ end }}}
								<!-- IF isAdmin -->
								<li>
									<a component="account/delete-account" href="#" class="dropdown-item rounded-1" role="menuitem">{{tx("user:delete-account-as-admin")}}</a>
								</li>
								<li>
									<a component="account/delete-content" href="#" class="dropdown-item rounded-1" role="menuitem">{{tx("user:delete-content")}}</a>
								</li>
								<li>
									<a component="account/delete-all" href="#" class="dropdown-item rounded-1" role="menuitem">{{tx("user:delete-all")}}</a>
								</li>
								<li role="separator" class="dropdown-divider"></li>
								<!-- ENDIF isAdmin -->
								<!-- ENDIF !isSelf -->

								<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/following" role="menuitem">{{tx("user:following")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.following}">{formattedNumber(counts.following)}</span></a></li>
								<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/followers" role="menuitem">{{tx("user:followers")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.followers}">{formattedNumber(counts.followers)}</span></a></li>
								<!-- IF canEdit -->
								<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/blocks" role="menuitem">{{tx("user:blocks")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.blocks}">{formattedNumber(counts.blocks)}</span></a></li>
								<!-- ENDIF canEdit -->
								<li role="separator" class="dropdown-divider"></li>
								<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/topics" role="menuitem">{{tx("global:topics")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.topics}">{formattedNumber(counts.topics)}</span></a></li>
								<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/posts" role="menuitem">{{tx("global:posts")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.posts}">{formattedNumber(counts.posts)}</span></a></li>

								<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/groups" role="menuitem">{{tx("global:header.groups")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.groups}">{formattedNumber(counts.groups)}</span></a></li>

								<!-- IF canEdit -->
								<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/categories" role="menuitem">{{tx("user:watched-categories")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.categoriesWatched}">{formattedNumber(counts.categoriesWatched)}</span></a></li>
								{{{ if isSelf }}}
								<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/tags" role="menuitem">{{tx("user:watched-tags")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.tagsWatched}">{formattedNumber(counts.tagsWatched)}</span></a></li>
								{{{ end }}}

								<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/uploads" role="menuitem">{{tx("global:uploads")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.uploaded}">{formattedNumber(counts.uploaded)}</span></a></li>
								<!-- ENDIF canEdit -->

								{{{each profile_links}}}
								<!-- IF @first -->
								<li role="separator" class="dropdown-divider"></li>
								<!-- ENDIF @first -->
								<li id="{./id}" class="plugin-link {{{ if ./public }}}public{{{ else }}}private{{{ end }}}"><a class="dropdown-item rounded-1" href="{config.relative_path}/user/{userslug}/{profile_links.route}" role="menuitem">{{{ if ./icon }}}<i class="fa fa-fw {profile_links.icon}"></i> {{{ end }}}{tx(profile_links.name)}</a></li>
								{{{end}}}
							</ul>
						</div>
					</div>
				</div>

				{{{ if selectedGroup.length }}}
				<div class="text-sm d-flex gap-1 flex-wrap">
					{{{ each selectedGroup }}}
					{{{ if ./slug }}}
					<!-- IMPORT partials/groups/badge.tpl -->
					{{{ end }}}
					{{{ end }}}
				</div>
				{{{ end }}}

				{{{ if aboutme }}}
				<div component="aboutme" class="aboutme text-muted text-sm">
					{{txEscape(aboutmeParsed)}}
				</div>
				{{{ end }}}
			</div>
		</div>
	</div>
</div>