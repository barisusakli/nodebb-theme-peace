
<!-- logo & title -->
{{{ if (brand:logo || config.showSiteTitle) }}}
<div class="mb-3 d-flex flex-column gap-2">
	{{{ if brand:logo }}}
	<a class="btn btn-ghost p-1" href="{{{ if brand:logo:url }}}{brand:logo:url}{{{ else }}}{relative_path}/{{{ end }}}">
		<img alt="{brand:logo:alt}" class="{brand:logo:display} forum-logo" src="{brand:logo}?{config.cache-buster}" style="width: 100%; height: auto;"/>
	</a>
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

<div class="d-flex mb-3">
<!-- IMPORT partials/search.tpl -->
</div>

<ul class="list-unstyled ps-0">
	<li class="border-top my-2"></li>
	<!-- IMPORT partials/navigation.tpl -->
	<li class="border-top my-2"></li>
	<!-- IMPORT partials/loggedin-menu.tpl -->
	<!-- IMPORT partials/loggedout-menu.tpl -->
	<!-- IMPORT partials/manage-menu.tpl -->
</ul>
