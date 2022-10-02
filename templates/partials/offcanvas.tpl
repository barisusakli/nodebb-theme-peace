<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvas" aria-labelledby="offcanvasLabel" style="width: 275px;">
	<div class="offcanvas-header">
		<h5 class="offcanvas-title" id="offcanvasLabel">{config.siteTitle}</h5>
		<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	</div>
	<div class="offcanvas-body flex-shrink-1 py-0 overflow-visible">
	<!-- IMPORT partials/search.tpl -->
	</div>
	<div class="offcanvas-body py-0 h-100">
		<ul class="list-unstyled">
			<!-- IMPORT partials/navigation.tpl -->
			<li class="border-top my-2"></li>
			<!-- IMPORT partials/loggedin-menu.tpl -->
			<!-- IMPORT partials/loggedout-menu.tpl -->
			<li class="border-top my-2"></li>
			<!-- IMPORT partials/manage-menu.tpl -->
		</ul>
	</div>
	<div class="offcanvas-body py-0 overflow-visible">
		<!-- IMPORT partials/skin-switcher.tpl -->
	</div>
</div>