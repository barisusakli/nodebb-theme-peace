<!-- logged in menu -->
{{{ if config.loggedIn }}}
<li class="mb-1">
	<h6 class="pointer fw-bold d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
	Account
	</h6>
	<div class="collapse show" id="account-collapse">
		<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			<li><a href="{config.relative_path}/user/{user.userslug}" class="d-inline-flex text-decoration-none rounded">[[user:profile]]</a></li>
			<li><a href="{config.relative_path}/user/{user.userslug}/edit" class="d-inline-flex text-decoration-none rounded">[[user:edit-profile]]</a></li>
			<li><a href="{config.relative_path}/user/{user.userslug}/settings" class="d-inline-flex text-decoration-none rounded">[[user:settings]]</a></li>
			<li component="user/logout"><a href="#" class="d-inline-flex text-decoration-none rounded">[[global:logout]]</a></li>
		</ul>
	</div>
</li>
{{{ end }}}