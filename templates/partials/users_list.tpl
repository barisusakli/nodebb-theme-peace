<div id="users-container" class="row row-cols-2 row-cols-md-3 row-cols-xl-4 g-3 users-container mb-4">
	{{{ each users }}}
	<div>
		<a href="{config.relative_path}/user/{./userslug}" class="btn btn-ghost card card-body flex-row shadow-sm border-0 d-flex ff-secondary gap-2 text-start justify-content-start p-2 ff-base">
			{buildAvatar(@value, "48px", true, "flex-shrink-0")}
			<div class="d-flex flex-column gap-1 text-truncate">
				<div class="fw-semibold text-truncate" title="{./displayname}">{./displayname}</div>
				<div class="text-xs text-muted text-truncate">@{./username}</div>

				{{{ if section_online }}}
				<div class="text-xs text-muted text-truncate">
					<span class="timeago" title="{./lastonlineISO}"></span>
				</div>
				{{{ end }}}

				{{{ if section_joindate }}}
				<div class="text-xs text-muted text-truncate">
					<span class="timeago" title="{./joindateISO}"></span>
				</div>
				{{{ end }}}

				{{{ if section_sort-reputation }}}
				<div class="text-xs text-muted text-truncate">
					<span>{formattedNumber(./reputation)}</span>
				</div>
				{{{ end }}}

				{{{ if section_sort-posts }}}
				<div class="text-xs text-muted text-truncate">
					<span>{formattedNumber(./postcount)}</span>
				</div>
				{{{ end }}}

				{{{ if section_flagged }}}
				<div class="text-xs text-muted text-truncate">
					<span>{formattedNumber(./flags)}</span>
				</div>
				{{{ end }}}
			</div>
		</a>
	</div>
	{{{end}}}
</div>