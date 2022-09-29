<ul component="category" class="topic-list list-unstyled" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}" data-set="{set}">
	{{{each topics}}}
	<li component="category/topic" class="mb-2 category-item {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
		<div class="d-flex align-items-stretch">
			<div class="unread-bar"></div>
			<div class="card card-body shadow-sm h-100 rounded-0" {{{ if showSelect }}}component="topic/select"{{{ end }}}>
				<link itemprop="url" content="{config.relative_path}/topic/{../slug}" />
				<meta itemprop="name" content="{function.stripTags, ../title}" />
				<meta itemprop="itemListOrder" content="descending" />
				<meta itemprop="position" content="{../index}" />
				<a id="{../index}" data-index="{../index}" component="topic/anchor"></a>

				<div class="d-flex">
					<!-- profile pic-->
					<div class="d-none d-lg-block border-end me-3" style="min-width:100px; max-width: 100px;">
						<div class="text-center mx-2">
							<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
								<div class="rounded">
									{buildAvatar(./user, "64px")}
								</div>
							</a>
						</div>
					</div>
					<div class="d-inline-block d-lg-none me-2">
						<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
							{buildAvatar(./user, "24px", true)}
						</a>
					</div>

					<div class="text-wrap text-truncate w-100">
						<div class="row" component="post/header">
							<div class="col-12">
								<h5 component="topic/header" class="title" title="{./title}" style="line-height: normal;">
									{{{ if !topics.noAnchor }}}
									<a href="{config.relative_path}/topic/{./slug}{{{ if topics.bookmark }}}/{./bookmark}{{{ end }}}">{./title}</a>
									{{{ else }}}
									<span>{./title}</span>
									{{{ end }}}
								</h5>

								<div class="d-flex opacity-75">
									<div class="d-flex gap-2 text-truncate">
										<div class="d-inline-block">
											<a class="lh-1" href="{config.relative_path}/category/{./category.slug}">
												<span class="badge rounded-1" style="color:{./category.color}; background-color: {./category.bgColor};"><i class="fa {./category.icon}"></i>&nbsp;{./category.name}</span>
											</a>
										</div>

										<div class="tags tag-list d-none d-lg-inline-block {{{ if !tags.length}}}hidden{{{ end }}}">
											{{{ each ./tags }}}
											<!-- IMPORT partials/topic/tag.tpl -->
											{{{ end }}}
										</div>

										<div class="d-inline-block">
											<span class="timeago badge rounded-1 text-body px-0" title="{./timestampISO}"></span>
										</div>
									</div>
									<div class="d-flex flex-grow-1 justify-content-end gap-2">
										<span class="badge border text-muted rounded-1 d-none d-lg-inline-block">{./votes} <i class="fa fa-heart"></i></span>
										<span class="badge border text-muted rounded-1">{./postcount} <i class="fa fa-pencil"></i></span>
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
