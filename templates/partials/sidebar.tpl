
<!-- logo & title -->
<div class="p-3 mb-3 card card-body shadow-sm border-0 rounded-0 justify-content-center" style="aspect-ratio: 1 / 1;">
	<div class="d-flex justify-content-center">
		{{{ if brand:logo }}}
		<a href="{{{ if brand:logo:url }}}{brand:logo:url}{{{ else }}}{relative_path}/{{{ end }}}">
			<img alt="{brand:logo:alt}" class="{brand:logo:display} forum-logo d-inline-block align-text-top" src="{brand:logo}?{config.cache-buster}" style="width: 70px; height: 70px;"/>
		</a>
		{{{ end }}}
	</div>

	<div class="text-center d-none d-lg-block">
	{{{ if config.showSiteTitle }}}
		<a class="fs-6 fw-semibold text-decoration-none" href="{{{ if title:url }}}{title:url}{{{ else }}}{relative_path}/{{{ end }}}">
			<span class="forum-title">{config.siteTitle}</span>
		</a>
	{{{ end }}}
	</div>
</div>

<!-- IMPORT partials/search.tpl -->

<ul class="list-unstyled ps-0">
	<!-- IMPORT partials/navigation.tpl -->
	<li class="border-top my-2"></li>
	<!-- IMPORT partials/loggedin-menu.tpl -->
	<!-- IMPORT partials/loggedout-menu.tpl -->
	<li class="border-top my-2"></li>
	<!-- IMPORT partials/manage-menu.tpl -->
	<!-- IMPORT partials/skin-switcher.tpl -->
</ul>
