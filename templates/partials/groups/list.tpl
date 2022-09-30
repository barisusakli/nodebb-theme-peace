{{{each groups}}}
<div class="col-lg-4 col-md-6 col-sm-12 mb-3" component="groups/summary" data-slug="{groups.slug}">
	<div class="card h-100">
		<div class="card-header">
			<div class="d-flex justify-content-between align-items-center">
				<h6 class="card-title text-truncate text-capitalize  mb-0"><a href="{config.relative_path}/groups/{groups.slug}">{groups.displayName}</a></h6>
				<small class="badge bg-info ms-2">{groups.memberCount}</small>
			</div>
		</div>
		<div class="card-body">
			<ul class="members d-flex gap-3 list-unstyled flex-wrap">
				{{{each groups.members}}}
				<li>
					<a href="{config.relative_path}/user/{groups.members.userslug}">{buildAvatar(groups.members, "24px", true)}</a>
				</li>
				{{{end}}}
				<!-- IF groups.truncated -->
				<li class="truncated"><i class="fa fa-ellipsis-h"></i></li>
				<!-- ENDIF groups.truncated -->
			</ul>
		</div>
	</div>
</div>
{{{end}}}