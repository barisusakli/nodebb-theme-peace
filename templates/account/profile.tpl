<div class="account">
	<!-- IMPORT partials/account/header.tpl -->
	<div class="row mb-5">
		<div class="col-md-3">
			<div class="avatar-wrapper text-center mb-4">
				{{{ if picture}}}
				<img src="{picture}" class="avatar avatar-rounded rounded" style="--avatar-size: 128px;" />
				{{{ else }}}
				<div class="avatar avatar-rounded rounded" style="background-color: {icon:bgColor}; --avatar-size: 128px;" title="{username}">{icon:text}</div>
				{{{ end }}}
			</div>
			<div class="text-center profile-meta d-flex flex-column gap-4">
				<div class="small">
					<div class="text-muted">[[user:lastonline]]</div>
					<strong class="timeago" title="{lastonlineISO}"></strong>
				</div>
				<div class="small">
					<div class="text-muted">[[user:joined]]</div>
					<strong class="timeago" title="{joindateISO}"></strong>
				</div>
				{{{ if email }}}
				<div class="small">
					<div class="text-muted">[[user:email]]</div>
					<strong><i class="fa fa-eye-slash {emailClass}" title="[[user:email-hidden]]"></i> {email}</strong>
				</div>
				{{{ end }}}
				{{{ if websiteName }}}
				<div class="small">
					<div class="text-muted">[[user:website]]</div>
					<strong><a href="{websiteLink}" rel="nofollow noopener noreferrer">{websiteName}</a></strong>
				</div>
				{{{ end }}}
				{{{ if location }}}
				<div class="small">
					<div class="text-muted">[[user:location]]</div>
					<strong>{location}</strong>
				</div>
				{{{ end }}}
			</div>
		</div>
		<div class="col-md-9">
			<div class="card card-body shadow-sm border-0 rounded-3 flex-row mb-4 px-5">
				<div class="d-flex flex-column w-100">
					<h4 class="text-center">{displayname}</h4>
					<h5 class="text-center">(@{username})</h5>
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
							<div class="fs-2" title="{reputation}">{humanReadableNumber(reputation)}</div>
							<span class="text-muted">[[global:reputation]]</span>
						</div>
						{{{ end }}}

						<div class="stat text-center">
							<div class="fs-2" title="{profileviews}">{humanReadableNumber(profileviews)}</div>
							<span class="text-muted">[[user:profile-views]]</span>
						</div>

						<div class="stat text-center">
							<div><a class="fs-2" title="{counts.posts}" href="{config.relative_path}/user/{userslug}/posts">{humanReadableNumber(counts.posts)}</a></div>
							<span class="text-muted">[[global:posts]]</span>
						</div>

						<div class="stat text-center">
							<div><a class="fs-2" title="{counts.followers}" href="{config.relative_path}/user/{userslug}/followers">{humanReadableNumber(counts.followers)}</a></div>
							<span class="text-muted">[[user:followers]]</span>
						</div>

						<div class="stat text-center">
							<div><a class="fs-2" title="{counts.following}" href="{config.relative_path}/user/{userslug}/following">{humanReadableNumber(counts.following)}</a></div>
							<span class="text-muted">[[user:following]]</span>
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