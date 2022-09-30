<div class="account">
	<!-- IMPORT partials/account/header.tpl -->
	<div class="row mb-4">
		<div class="col-md-3">
			<div class="avatar-wrapper text-center mb-1">
				{{{ if picture}}}
				<img src="{picture}" class="avatar avatar-rounded rounded" style="--avatar-size: 128px;" />
				{{{ else }}}
				<div class="avatar avatar-rounded rounded" style="background-color: {icon:bgColor}; --avatar-size: 128px;" title="{username}">{icon:text}</div>
				{{{ end }}}
			</div>
			<div class="text-center profile-meta">
				<div class="small mb-1">
					<div class="text-muted">[[user:joined]]</div>
					<strong class="timeago" title="{joindateISO}"></strong>
				</div>
				<div class="small mb-1">
					<div class="text-muted">[[user:lastonline]]</div>
					<strong class="timeago" title="{lastonlineISO}"></strong><br />
				</div>
				{{{ if email }}}
				<div class="small mb-1">
					<div class="text-muted">[[user:email]]</div>
					<strong><i class="fa fa-eye-slash {emailClass}" title="[[user:email_hidden]]"></i> {email}</strong>
				</div>
				{{{ end }}}
				{{{ if websiteName }}}
				<div class="small mb-1">
					<div class="text-muted">[[user:website]]</div>
					<strong><a href="{websiteLink}" rel="nofollow noopener noreferrer">{websiteName}</a></strong>
				</div>
				{{{ end }}}
				{{{ if location }}}
				<div class="small mb-1">
					<div class="text-muted">[[user:location]]</div>
					<strong>{location}</strong>
				</div>
				{{{ end }}}
			</div>
		</div>
		<div class="col-md-9">
			<div class="card card-body flex-row mb-4">
				<div class="d-flex flex-column w-100">
					<h4 class="text-center">
						{displayname} <span class="fw-bold">(@{username})</span>
					</h4>
					{{{ if selectedGroup.length }}}
					<div class="mb-3 text-center">
						<div class="small">
							{{{each selectedGroup}}}
							{{{ if selectedGroup.slug }}}
							<!-- IMPORT partials/groups/badge.tpl -->
							{{{ end }}}
							{{{ end }}}
						</div>
					</div>
					{{{ end }}}

					<div class="account-stats d-flex gap-2 w-100 justify-content-between">
						{{{ if !reputation:disabled }}}
						<div class="stat text-center">
							<div class="human-readable-number fs-2" title="{reputation}">{reputation}</div>
							<span class="stat-label">[[global:reputation]]</span>
						</div>
						{{{ end }}}

						<div class="stat text-center">
							<div class="human-readable-number fs-2" title="{profileviews}">{profileviews}</div>
							<span class="stat-label">[[user:profile_views]]</span>
						</div>

						<div class="stat text-center">
							<div><a class="human-readable-number fs-2" title="{counts.posts}" href="{config.relative_path}/user/{userslug}/posts">{counts.posts}</a></div>
							<span class="stat-label">[[global:posts]]</span>
						</div>

						<div class="stat text-center">
							<div><a class="human-readable-number fs-2" title="{counts.followers}" href="{config.relative_path}/user/{userslug}/followers">{counts.followers}</a></div>
							<span class="stat-label">[[user:followers]]</span>
						</div>

						<div class="stat text-center">
							<div><a class="human-readable-number fs-2" title="{counts.following}" href="{config.relative_path}/user/{userslug}/following">{counts.following}</a></div>
							<span class="stat-label">[[user:following]]</span>
						</div>
					</div>

					{{{ if aboutme }}}
					<hr/>
					<div>
						<span component="aboutme" class="aboutme">{aboutmeParsed}</span>
					</div>
					{{{ end }}}
				</div>
			</div>
		</div>
	</div>
</div>