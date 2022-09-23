<div class="sticky-top pt-4" style="">

	<!-- IMPORT partials/search.tpl -->

	<div class="p-3 card card-body border-0 rounded-0">
		<div class="d-flex justify-content-center">
			{{{ if brand:logo }}}
			<a href="{{{ if brand:logo:url }}}{brand:logo:url}{{{ else }}}{relative_path}/{{{ end }}}">
				<img alt="{brand:logo:alt}" class="{brand:logo:display} forum-logo d-inline-block align-text-top" src="{brand:logo}?{config.cache-buster}" style="width: 70px; height: 70px;"/>
			</a>
			{{{ end }}}
		</div>

		<div class="text-center pb-3 mb-3 border-bottom">
		{{{ if config.showSiteTitle }}}
			<a class="fs-6 fw-semibold text-decoration-none" href="{{{ if title:url }}}{title:url}{{{ else }}}{relative_path}/{{{ end }}}">
				<span class="forum-title">{config.siteTitle}</span>
			</a>
		{{{ end }}}
		</div>

		<ul class="list-unstyled ps-0">

		<li class="mb-1">
			<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#navigation-collapse" aria-expanded="true">
			[[global:header.navigation]]
			</button>
			<div class="collapse show" id="navigation-collapse">
			<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
				<!-- IMPORT partials/navigation.tpl -->
			</ul>
			</div>
		</li>

		<li class="border-top my-3"></li>
		<li class="mb-1">
			<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
			Account
			</button>
			<div class="collapse" id="account-collapse">
			<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
				<li><a href="{config.relative_path}/user/{user.userslug}" class="d-inline-flex text-decoration-none rounded">Profile</a></li>
				<li><a href="{config.relative_path}/user/{user.userslug}/edit" class="d-inline-flex text-decoration-none rounded">Edit</a></li>
				<li><a href="{config.relative_path}/user/{user.userslug}/settings" class="d-inline-flex text-decoration-none rounded">Settings</a></li>
				<li><a href="#" class="d-inline-flex text-decoration-none rounded">Sign out</a></li>
			</ul>
			</div>
		</li>
		</ul>
	</div>
</div>
