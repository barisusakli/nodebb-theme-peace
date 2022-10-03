<ul class="nav nav-pills">
	<li class="nav-item">
		<a class="nav-link" href="{config.relative_path}/users?section=online">[[global:online]]</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="{config.relative_path}/users?section=sort-posts">[[users:top_posters]]</a>
	</li>
	{{{ if !reputation:disabled }}}
	<li class="nav-item">
		<a class="nav-link" href="{config.relative_path}/users?section=sort-reputation">[[users:most_reputation]]</a>
	</li>
	{{{ end }}}
</ul>