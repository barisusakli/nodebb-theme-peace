<!-- logged out menu -->
{{{ if !config.loggedIn }}}
<li class="">
	<h6 class="text-uppercase pointer fw-bold d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
	[[global:header.account]]
	</h6>
	<div class="collapse show" id="account-collapse">
		<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			<li><a href="{config.relative_path}/register" class="btn btn-sm btn-ghost">[[global:register]]</a></li>
			<li><a href="{config.relative_path}/login" class="btn btn-sm btn-ghost">[[global:login]]</a></li>
		</ul>
	</div>
</li>
{{{ end }}}
