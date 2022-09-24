<ul component="category" class="topic-list list-unstyled mt-3" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}" data-set="{set}">
	{{{each topics}}}
	<li component="category/topic" class="row mb-2 category-item {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
		<div class="col-12">
			<div class="card card-body shadow-sm h-100 rounded-0" {{{ if showSelect }}}component="topic/select"{{{ end }}}>
				<link itemprop="url" content="{config.relative_path}/topic/{../slug}" />
				<meta itemprop="name" content="{function.stripTags, ../title}" />
				<meta itemprop="itemListOrder" content="descending" />
				<meta itemprop="position" content="{../index}" />
				<a id="{../index}" data-index="{../index}" component="topic/anchor"></a>

				<div class="d-flex pt-1">
					<!-- profile pic-->
					<div class="" style="min-width:100px; max-width: 100px;">
						<div class="text-center mx-2">
							<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
								<div class="rounded">
									{buildAvatar(./user, "64px")}
								</div>
							</a>
						</div>
					</div>
					<div class="border-start ms-2 ps-4 text-wrap text-truncate">
						<div class="row" component="post/header">
							<div class="col-12">
								<h4 component="topic/header" class="title text-truncate" title="{./title}">
									{{{ if !topics.noAnchor }}}
									<a href="{config.relative_path}/topic/{./slug}{{{ if topics.bookmark }}}/{./bookmark}{{{ end }}}">{./title}</a>
									{{{ else }}}
									<span>{./title}</span>
									{{{ end }}}
								</h4>

								<div class="d-flex opacity-75 gap-1">
									<div class="d-inline-block">
										<a href="{config.relative_path}/category/{./category.slug}">
											<span class="badge rounded-1" style="color:{./category.color}; background-color: {./category.bgColor};"><i class="fa {./category.icon}"></i>&nbsp;{./category.name}</span>
										</a>
									</div>
									<div class="tags tag-list d-inline-block hidden-xs">
										{{{ each ./tags }}}
										<!-- IMPORT partials/topic/tag.tpl -->
										{{{ end }}}
									</div>

									<div class="d-inline-block">
										<span class="timeago badge rounded-1 text-body px-0" title="{./timestampISO}"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</li>
	{{{end}}}
</ul>
