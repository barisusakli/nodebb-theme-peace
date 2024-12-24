<li component="categories/category" data-cid="{./cid}" class="category-{./cid} mb-3
{{{ if !./isSection }}}card card-body shadow-sm rounded-3 border-0{{{ end }}}">
	<meta itemprop="name" content="{./name}">

	<div class="content">
		<div class="d-flex gap-3">
			{{{ if !./isSection }}}
			<div class="fs-3">
				{buildCategoryIcon(@value, "64px", "rounded-1")}
			</div>
			{{{ end }}}

			<div class="d-flex align-items-center flex-1">
				<div class="w-100">
					<h4 class="d-flex justify-content-between align-items-start title mb-0 {{{ if ./isSection}}}border-bottom pb-2{{{ end }}}">
						{{{ if ./isSection }}}
						{../name}
						{{{ else}}}
						{{{ if ./link }}}
						<a href="{./link}" itemprop="url">{./name}</a>
						{{{ else }}}
						<a href="{config.relative_path}/category/{./slug}" itemprop="url">{./name}</a>
						{{{ end }}}

						<!-- topic count -->
						<span class="text-xs badge border border-gray-300 fw-semibold text-muted d-none d-lg-inline-block" style="vertical-align: middle;"><i class="fa fa-comment-o"></i> {formattedNumber(./totalTopicCount)}</span>
						{{{ end }}}
					</h4>

					<div class="d-flex align-items-start gap-3">
						<!-- description -->
						{{{ if ./descriptionParsed }}}
						<div class="description text-muted flex-grow-1">{./descriptionParsed}</div>
						{{{ end }}}
					</div>

					<!-- children -->
					{{{ if (!config.hideSubCategories && ./children.length ) }}}
					<ul class="list-unstyled category-children row row-cols-1 row-cols-md-2 g-2 my-1 w-100">
						{{{ each ./children }}}
						{{{ if !./isSection }}}
						<li class="category-children-item">
							{buildCategoryIcon(@value, "24px", "rounded-1")}
							{{{ if ./link }}}
							<a href="{./link}">{./name}</a></span>
							{{{ else }}}
							<a href="{config.relative_path}/category/{../slug}">{../name}</a>
							{{{ end }}}
						</li>
						{{{ end }}}
						{{{ end }}}
					</ul>
					{{{ end }}}
				</div>
			</div>
		</div>
	</div>
</li>
