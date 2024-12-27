<div class="card card-body p-1 shadow-sm border-0 rounded-3 mb-4">
	<div class="d-flex flex-column flex-fill gap-3">
		<div class="cover rounded-1 w-100" component="account/cover" style="background-image: url({cover:url}); background-position: {cover:position};">
			<div class="container">
				{{{ if (allowCoverPicture && canEdit) }}}
				<div class="controls text-center">
					<a href="#" class="upload p-2 m-2 rounded-1 text-bg-light opacity-75"><i class="fa fa-fw fa-upload"></i></a>
					<a href="#" class="resize p-2 m-2 rounded-1 text-bg-light opacity-75"><i class="fa fa-fw fa-arrows"></i></a>
					<a href="#" class="remove p-2 m-2 rounded-1 text-bg-light opacity-75"><i class="fa fa-fw fa-times"></i></a>
				</div>
				<a href="#" class="save text-bg-primary">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></a>
				<div class="indicator text-bg-primary">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
				{{{ end }}}
			</div>
		</div>

		<div class="d-flex ps-3 pb-3 gap-3">
			<!-- avatar -->
			<div class="avatar-wrapper text-center flex-shrink-1">
				<a href="{config.relative_path}/user/{userslug}">
					{{{ if picture}}}
					<img src="{picture}" class="avatar avatar-rounded rounded" style="--avatar-size: 128px;" />
					{{{ else }}}
					<div class="avatar avatar-rounded rounded" style="background-color: {icon:bgColor}; --avatar-size: 128px;" title="{username}">{icon:text}</div>
					{{{ end }}}
				</a>
			</div>

			<!-- name & groups -->
			<div class="d-flex flex-column gap-2 flex-fill">
				<div class="d-flex justify-content-between align-items-center bottom-sheet">
					<h4 class="mb-0">{displayname} <span class="text-muted">(@{username})</span></h4>

					<button class="btn btn-ghost" data-bs-toggle="dropdown"><i class="fa fa-gear text-muted"></i></button>
					<ul class="dropdown-menu dropdown-menu-end p-1" role="menu">
						<li>
							<a class="dropdown-item rounded-1" aria-current="page" href="{config.relative_path}/user/{userslug}">[[user:profile]]</a>
						</li>
						{{{ if canEdit }}}
						<li>
							<a class="dropdown-item rounded-1" href="{config.relative_path}/user/{userslug}/edit">[[user:edit]]</a>
						</li>
						<li>
							<a class="dropdown-item rounded-1" href="{config.relative_path}/user/{userslug}/settings">[[user:settings]]</a>
						</li>
						{{{ end }}}
						<li role="separator" class="dropdown-divider"></li>
						<!-- IF loggedIn -->
						<!-- IF !isSelf -->
						<!-- IF !banned -->
						<!-- IF canChat -->
						<li class="<!-- IF !hasPrivateChat -->hidden<!-- ENDIF !hasPrivateChat -->">
							<a class="dropdown-item rounded-1" component="account/chat" href="#" role="menuitem">[[user:chat-with, {username}]]</a>
						</li>
						<li>
							<a class="dropdown-item rounded-1" component="account/new-chat" href="#" role="menuitem">[[user:new-chat-with, {username}]]</a>
						</li>
						<!-- ENDIF canChat -->
						<li>
							<a class="dropdown-item rounded-1" component="account/flag" href="#" role="menuitem">[[user:flag-profile]]</a>
						</li>
						<li>
							<a class="dropdown-item rounded-1 {{{ if ./isBlocked }}}hidden{{{ end }}}" component="account/block" href="#" role="menuitem">[[user:block-user]]</a>
						</li>
						<li>
							<a class="dropdown-item rounded-1 {{{ if !./isBlocked }}}hidden{{{ end }}}" component="account/unblock" href="#" role="menuitem">[[user:unblock-user]]</a>
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
							<a class="dropdown-item rounded-1" component="account/ban" href="#" role="menuitem">[[user:ban-account]]</a>
						</li>
						<li class="<!-- IF !banned -->hide<!-- ENDIF !banned -->">
							<a class="dropdown-item rounded-1" component="account/unban" href="#" role="menuitem">[[user:unban-account]]</a>
						</li>
						{{{ end }}}
						{{{ if canMute }}}
						<li class="<!-- IF muted -->hide<!-- ENDIF muted -->">
							<a class="dropdown-item rounded-1" component="account/mute" href="#" role="menuitem">[[user:mute-account]]</a>
						</li>
						<li class="<!-- IF !muted -->hide<!-- ENDIF !muted -->">
							<a class="dropdown-item rounded-1" component="account/unmute" href="#" role="menuitem">[[user:unmute-account]]</a>
						</li>
						{{{ end }}}
						<!-- IF isAdmin -->
						<li>
							<a component="account/delete-account" href="#" class="dropdown-item rounded-1" role="menuitem">[[user:delete-account-as-admin]]</a>
						</li>
						<li>
							<a component="account/delete-content" href="#" class="dropdown-item rounded-1" role="menuitem">[[user:delete-content]]</a>
						</li>
						<li>
							<a component="account/delete-all" href="#" class="dropdown-item rounded-1" role="menuitem">[[user:delete-all]]</a>
						</li>
						<li role="separator" class="dropdown-divider"></li>
						<!-- ENDIF isAdmin -->
						<!-- ENDIF !isSelf -->

						<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/following" role="menuitem">[[user:following]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.following}">{formattedNumber(counts.following)}</span></a></li>
						<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/followers" role="menuitem">[[user:followers]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.followers}">{formattedNumber(counts.followers)}</span></a></li>
						<!-- IF canEdit -->
						<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/blocks" role="menuitem">[[user:blocks]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.blocks}">{formattedNumber(counts.blocks)}</span></a></li>
						<!-- ENDIF canEdit -->
						<li role="separator" class="dropdown-divider"></li>
						<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/topics" role="menuitem">[[global:topics]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.topics}">{formattedNumber(counts.topics)}</span></a></li>
						<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/posts" role="menuitem">[[global:posts]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.posts}">{formattedNumber(counts.posts)}</span></a></li>

						<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/groups" role="menuitem">[[global:header.groups]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.groups}">{formattedNumber(counts.groups)}</span></a></li>

						<!-- IF canEdit -->
						<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/categories" role="menuitem">[[user:watched-categories]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.categoriesWatched}">{formattedNumber(counts.categoriesWatched)}</span></a></li>
						{{{ if isSelf }}}
						<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/tags" role="menuitem">[[user:watched-tags]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.tagsWatched}">{formattedNumber(counts.tagsWatched)}</span></a></li>
						{{{ end }}}

						<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/uploads" role="menuitem">[[global:uploads]] <span class="badge bg-secondary rounded-pill ms-2" title="{counts.uploaded}">{formattedNumber(counts.uploaded)}</span></a></li>
						<!-- ENDIF canEdit -->

						{{{each profile_links}}}
						<!-- IF @first -->
						<li role="separator" class="dropdown-divider"></li>
						<!-- ENDIF @first -->
						<li id="{profile_links.id}" class="plugin-link <!-- IF profile_links.public -->public<!-- ELSE -->private<!-- ENDIF profile_links.public -->"><a class="dropdown-item rounded-1" href="{config.relative_path}/user/{userslug}/{profile_links.route}" role="menuitem"><!-- IF ../icon --><i class="fa fa-fw {profile_links.icon}"></i> <!-- END -->{profile_links.name}</a></li>
						{{{end}}}
					</ul>
				</div>

				{{{ if selectedGroup.length }}}
				<div class="text-sm">
					{{{ each selectedGroup }}}
					{{{ if ./slug }}}
					<!-- IMPORT partials/groups/badge.tpl -->
					{{{ end }}}
					{{{ end }}}
				</div>
				{{{ end }}}

				{{{ if aboutme }}}
				<div component="aboutme" class="aboutme text-muted text-sm">
					{aboutmeParsed}
				</div>
				{{{ end }}}
			</div>
		</div>
	</div>
</div>