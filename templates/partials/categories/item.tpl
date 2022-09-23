<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row category-{../cid} mb-4">
	<meta itemprop="name" content="{../name}">

	<div class="content col-12">
		<div class="d-flex">
			<div>
				<div class="icon rounded-1 d-flex justify-content-center align-items-center" style="{function.generateCategoryBackground} width: 64px!important; height: 64px!important;">
					<i class="fs-3 fa fa-fw {../icon}"></i>
				</div>
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
						<div class="icon rounded-1 d-inline-flex justify-content-center align-items-center" style="{function.generateCategoryBackground}; width: 32px; height: 32px;">
							{{{ if ../icon }}}
							<i class="fa fa-fw {../icon}"></i>
							{{{ end }}}
						</div>
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
