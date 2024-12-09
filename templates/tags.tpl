<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="tags">
	{{{ if displayTagSearch }}}
	{{{ if tags.length }}}
	<div class="d-flex justify-content-end mb-3">
		<div class="search">
			<div class="input-group">
				<input type="text" class="form-control form-control-sm" placeholder="[[global:search]]" id="tag-search">
				<button class="btn btn-sm btn-primary" type="button">
					<i class="fa fa-search"></i>
				</button>
			</div>
		</div>
	</div>
	{{{ end }}}
	{{{ end }}}

	<hr/>

	{{{ if !tags.length }}}
	<div class="alert alert-warning">[[tags:no-tags]]</div>
	{{{ end }}}

	<div class="category">
		<div class="tag-list row row-cols-2 row-cols-md-3 row-cols-xl-4 gx-3 gy-2" data-nextstart="{nextStart}">
			<!-- IMPORT partials/tags_list.tpl -->
		</div>
	</div>
</div>
