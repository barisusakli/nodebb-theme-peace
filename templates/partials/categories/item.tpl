<li component="categories/category" data-cid="{../cid}" class="row category-{../cid} mb-4">
	<meta itemprop="name" content="{../name}">

	<div class="content col-12">
		<div class="d-flex">
			<div class="fs-3">
				{buildCategoryIcon(@value, "64px", "rounded-1")}
			</div>

			<div class="ms-3">
				<h3 class="title">
					<!-- IMPORT partials/categories/link.tpl -->
				</h3>
				<!-- description -->
				<div class="mb-2">
					{{{ if ../descriptionParsed }}}
					<div class="description text-muted">{../descriptionParsed}</div>
					{{{ end }}}
				</div>

				<!-- children -->
				{{{ if !config.hideSubCategories }}}
				<div class="category-children">
					{{{ each ../children }}}
					{{{ if !../isSection }}}
					<div class="category-children-item mb-1">
						{buildCategoryIcon(@value, "32px", "rounded-1")}
						{{{ if ../link }}}
						<a href="{../link}">{../name}</a></span>
						{{{ else }}}
						<a href="{config.relative_path}/category/{../slug}">{../name}</a>
						{{{ end }}}
					</div>
					{{{ end }}}
					{{{ end }}}
				</div>
				{{{ end }}}
			</div>
		</div>
	</div>
</li>
