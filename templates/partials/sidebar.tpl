
<!-- logo & title -->
{{{ if (brand:logo || config.showSiteTitle) }}}
<div class="p-3 mb-3 card card-body shadow-sm border-0 rounded-0 justify-content-center" style="aspect-ratio: 1 / 1;">
	{{{ if brand:logo }}}
	<div class="d-flex justify-content-center">
		<a href="{{{ if brand:logo:url }}}{brand:logo:url}{{{ else }}}{relative_path}/{{{ end }}}">
			<img alt="{brand:logo:alt}" class="{brand:logo:display} forum-logo d-inline-block align-text-top" src="{brand:logo}?{config.cache-buster}" style="width: 70px; height: 70px;"/>
		</a>
	</div>
	{{{ end }}}
	{{{ if config.showSiteTitle }}}
	<div class="text-center d-none d-lg-block">
		<a class="fs-6 fw-semibold text-decoration-none" href="{{{ if title:url }}}{title:url}{{{ else }}}{relative_path}/{{{ end }}}">
			<span class="forum-title">{config.siteTitle}</span>
		</a>
	</div>
	{{{ end }}}
</div>
{{{ end }}}

<div class="d-flex gap-2 mb-3">
<!-- IMPORT partials/search.tpl -->
<!-- IMPORT partials/skin-switcher.tpl -->
</div>

<ul class="list-unstyled ps-0">
	<li class="border-top my-2"></li>
	<!-- IMPORT partials/navigation.tpl -->
	<li class="border-top my-2"></li>
	<!-- IMPORT partials/loggedin-menu.tpl -->
	<!-- IMPORT partials/loggedout-menu.tpl -->
	<li class="border-top my-2"></li>
	<!-- IMPORT partials/manage-menu.tpl -->
	<li class="border-top my-2"></li>
</ul>
