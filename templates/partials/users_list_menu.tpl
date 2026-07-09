<div component="user/list/menu" class="text-sm d-flex flex-wrap align-items-center gap-2">
	<a class="btn btn-ghost btn-sm ff-secondary fw-semibold" href="{config.relative_path}/users?section=online">{{tx("global:online")}}</a>

	<a class="btn btn-ghost btn-sm ff-secondary fw-semibold" href="{config.relative_path}/users?section=sort-posts">{{tx("users:top-posters")}}</a>

	{{{ if !reputation:disabled }}}
	<a class="btn btn-ghost btn-sm ff-secondary fw-semibold" href="{config.relative_path}/users?section=sort-reputation">{{tx("users:most-reputation")}}</a>
	{{{ end }}}
</div>