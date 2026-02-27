<li component="categories/category" data-cid="{./cid}" class="category-{./cid} mb-3
{{{ if !./isSection }}}card card-body shadow-sm rounded-3 border-0{{{ end }}}">
	<meta itemprop="name" content="{./name}">

	{{{ if ./isSection }}}
	<div class="content">
		<div class="d-flex">
			<div class="d-flex align-items-center flex-1">
				<div class="w-100">
					<h4 class="fs-3 d-flex justify-content-between align-items-start title mb-0 pb-2">
						{../name}
					</h4>

					<!-- description -->
					{{{ if ./descriptionParsed }}}
					<div class="description text-muted flex-grow-1">{./descriptionParsed}</div>
					{{{ end }}}

					<!-- children -->
					{{{ if (!config.hideSubCategories && ./children.length ) }}}
					<ul class="list-unstyled category-children my-1 w-100">
						{{{ each ./children }}}
						{{{ if !./isSection }}}
						<li component="categories/category" data-cid="{./cid}" class="category-children-item category-{./cid} mb-3 card card-body shadow-sm rounded-3 border-0">
							<div class="content">
								<div class="d-flex gap-3">
									<div class="fs-3">
										{buildCategoryIcon(@value, "64px", "rounded-1")}
									</div>

									<div class="d-flex align-items-center flex-1">
										<div class="w-100">
											<h4 class="d-flex justify-content-between align-items-start title mb-0">
												{{{ if ./link }}}
												<a href="{./link}" itemprop="url">{./name}</a>
												{{{ else }}}
												<a href="{config.relative_path}/category/{./slug}" itemprop="url">{./name}</a>
												{{{ end }}}

												<!-- topic count -->
												<span class="text-xs badge border border-gray-300 fw-semibold text-muted d-none d-lg-inline-block" style="vertical-align: middle;"><i class="fa fa-comment-o"></i> {formattedNumber(./totalTopicCount)}</span>
											</h4>

											<!-- description -->
											{{{ if ./descriptionParsed }}}
											<div class="description text-muted flex-grow-1">{./descriptionParsed}</div>
											{{{ end }}}
										</div>
									</div>
								</div>
							</div>
						</li>
						{{{ end }}}
						{{{ end }}}
					</ul>
					{{{ end }}}
					<hr/>
				</div>
			</div>
		</div>
	</div>
	{{{ else }}}
	<div class="content">
		<div class="d-flex gap-3">
			<div class="fs-3">
				{buildCategoryIcon(@value, "64px", "rounded-1")}
			</div>

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


					<!-- description -->
					{{{ if ./descriptionParsed }}}
					<div class="description text-muted flex-grow-1">{./descriptionParsed}</div>
					{{{ end }}}


					<!-- children -->
					{{{ if (!config.hideSubCategories && ./children.length ) }}}
					<ul class="list-unstyled category-children row row-cols-1 row-cols-md-2 row-cols-xl-3 g-2 my-1 w-100">
						{{{ each ./children }}}
						{{{ if !./isSection }}}
						<li class="category-children-item">
							{buildCategoryIcon(@value, "24px", "rounded-1")}
							{{{ if ./link }}}
							<a href="{./link}">{./name}</a></span>
							{{{ else }}}
							<a href="{config.relative_path}/category/{./slug}">{./name}</a>
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
	{{{ end }}}
</li>
