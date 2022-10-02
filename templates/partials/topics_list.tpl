<ul component="category" class="topic-list list-unstyled" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}" data-set="{set}">
	{{{each topics}}}
	<li component="category/topic" class="mb-2 category-item {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
		<div class="d-flex align-items-stretch">
			<div class="unread-bar"></div>
			<div class="card card-body shadow-sm h-100 rounded-0 ps-0" {{{ if showSelect }}}component="topic/select"{{{ end }}}>
				<link itemprop="url" content="{config.relative_path}/topic/{../slug}" />
				<meta itemprop="name" content="{function.stripTags, ../title}" />
				<meta itemprop="itemListOrder" content="descending" />
				<meta itemprop="position" content="{../index}" />
				<a id="{../index}" data-index="{../index}" component="topic/anchor"></a>

				<div class="d-flex">
					<!-- profile pic-->
					<div class="d-none d-lg-block px-3">
						<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
							{buildAvatar(./user, "64px", false, "rounded")}
						</a>
					</div>
					<div class="vr d-none d-lg-block text-muted me-3" style="width: 2px;"></div>
					<div class="d-inline-block d-lg-none mx-2">
						<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
							{buildAvatar(./user, "24px", false, "rounded")}
						</a>
					</div>

					<div class="text-wrap text-truncate w-100">
						<div class="row" component="post/header">
							<div class="col-12">
								<h5 component="topic/header" class="title" title="{./title}" style="line-height: normal;">
									<i component="topic/scheduled" class="text-muted fa fa-clock-o {{{ if !topics.scheduled }}}hide{{{ end }}}" title="[[topic:scheduled]]"></i>
									<i component="topic/pinned" class="text-muted fa fa-thumb-tack {{{ if (topics.scheduled || !topics.pinned) }}}hide{{{ end}}}" title="{{{ if !../pinExpiry }}}[[topic:pinned]]{{{ else }}}[[topic:pinned-with-expiry, {../pinExpiryISO}]]{{{ end }}}"></i>
									<i component="topic/locked" class="text-muted fa fa-lock {{{ if !topics.locked }}}hide{{{ end }}}" title="[[topic:locked]]"></i>
									<i component="topic/moved" class="text-muted fa fa-arrow-circle-right {{{ if !topics.oldCid }}}hide{{{ end }}}" title="[[topic:moved]]"></i>
									{{{each topics.icons}}}{@value}{{{end}}}
									{{{ if !topics.noAnchor }}}
									<a href="{config.relative_path}/topic/{./slug}{{{ if topics.bookmark }}}/{./bookmark}{{{ end }}}">{./title}</a>
									{{{ else }}}
									<span>{./title}</span>
									{{{ end }}}
								</h5>

								<div class="d-flex opacity-75">
									<div class="d-flex gap-2 text-truncate">
										{{{ if !template.category }}}
										<div class="d-inline-block">
											<a class="lh-1" href="{config.relative_path}/category/{./category.slug}">
												<span class="badge rounded-1" style="color:{./category.color}; background-color: {./category.bgColor};"><i class="fa {./category.icon}"></i>&nbsp;{./category.name}</span>
											</a>
										</div>
										{{{ end }}}

										<div class="tags tag-list d-none d-lg-inline-block {{{ if !./tags.length}}}hidden{{{ end }}}">
											{{{ each ./tags }}}
											<!-- IMPORT partials/topic/tag.tpl -->
											{{{ end }}}
										</div>

										<div class="d-inline-block">
											<span class="timeago badge rounded-1 text-body px-0" title="{./timestampISO}"></span>
										</div>
									</div>
									<div class="d-flex flex-grow-1 justify-content-end gap-2">
										<span class="badge border border-muted text-muted rounded-1 d-none d-lg-inline-block">{./votes} <i class="fa fa-heart"></i></span>
										<span class="badge border border-muted text-muted rounded-1">{./postcount} <i class="fa fa-pencil"></i></span>
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
