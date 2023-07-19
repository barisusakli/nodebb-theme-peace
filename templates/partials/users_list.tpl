<div id="users-container" class="row row-cols-2 row-cols-md-4 row-cols-lg-5 users-container list-unstyled">
	{{{each users}}}
	<div class="mb-3" data-uid="{users.uid}" style="">
		<div class="card card-body h-100 text-center border-0 shadow-sm">
			<div class="mb-2">
				<a href="{config.relative_path}/user/{users.userslug}">{buildAvatar(users, "100px", false, "rounded")}</a>
			</div>
			<div class="user-info">
				<div class="text-truncate">
					<a href="{config.relative_path}/user/{users.userslug}" title="{users.username}">{users.username}</a>
				</div>
				<hr/>
				<div class="profile-meta">
					<div class="small mb-1 text-truncate">
						<div class="text-muted">[[user:lastonline]]</div>
						<strong class="timeago" title="{./lastonlineISO}"></strong>
					</div>
					<div class="small mb-1  text-truncate">
						<div class="text-muted">[[user:joined]]</div>
						<strong class="timeago" title="{users.joindateISO}"></strong>
					</div>
					<div class="small mb-1  text-truncate">
						<div class="text-muted">[[user:reputation]]</div>
						<strong title="{./reputation}">{formattedNumber(./reputation)}</strong>
					</div>
					<div class="small mb-1 text-truncate">
						<div class="text-muted">[[user:postcount]]</div>
						<strong title="{./postcount}">{formattedNumber(./postcount)}</strong>
					</div>
				</div>
			</div>
		</div>
	</div>
	{{{end}}}
</div>