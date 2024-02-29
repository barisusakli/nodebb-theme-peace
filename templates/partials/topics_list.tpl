<ul component="category" class="topic-list list-unstyled" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}" data-set="{set}">
	{{{ each topics }}}
	<li component="category/topic" class="mb-3 category-item {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
		<div class="d-flex align-items-stretch">
			<div class="position-relative">
				<div class="unread-bar position-absolute h-100"></div>
			</div>
			<div class="card card-body shadow-sm h-100 rounded-3 border-0 ps-0" {{{ if showSelect }}}component="topic/select"{{{ end }}}>
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

					<!-- mobile profile picture -->
					<div class="d-inline-block d-lg-none mx-2">
						<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
							{buildAvatar(./user, "24px", false, "rounded")}
						</a>
					</div>

					<div class="text-wrap text-truncate flex-grow-1 d-flex align-items-center">
						<div class="w-100" component="post/header">
							<div class="d-flex flex-column w-100">
								<h5 component="topic/header" class="title">
									{{{ if !topics.noAnchor }}}
									<a href="{config.relative_path}/topic/{./slug}{{{ if topics.bookmark }}}/{./bookmark}{{{ end }}}">{./title}</a>
									{{{ else }}}
									<span>{./title}</span>
									{{{ end }}}
								</h5>

								<div class="d-flex gap-1 opacity-75 align-items-start">
									<div component="topic/labels" class="d-flex gap-1 text-truncate align-items-center flex-wrap w-100">
										<span component="topic/scheduled" class="badge border border-gray-300 text-body {{{ if !./scheduled }}}hidden{{{ end }}}">
											<i class="fa fa-clock-o"></i>
											<span>[[topic:scheduled]]</span>
										</span>
										<span component="topic/pinned" class="badge border border-gray-300 text-body {{{ if (./scheduled || !./pinned) }}}hidden{{{ end }}}">
											<i class="fa fa-thumb-tack"></i>
											<span>{{{ if !./pinExpiry }}}[[topic:pinned]]{{{ else }}}[[topic:pinned-with-expiry, {isoTimeToLocaleString(./pinExpiryISO, config.userLang)}]]{{{ end }}}</span>
										</span>
										<span component="topic/locked" class="badge border border-gray-300 text-body {{{ if !./locked }}}hidden{{{ end }}}">
											<i class="fa fa-lock"></i>
											<span>[[topic:locked]]</span>
										</span>
										<span class="badge border border-gray-300 text-body {{{ if !./oldCid }}}hidden{{{ end }}}">
											<i class="fa fa-arrow-circle-right"></i>
											<span>[[topic:moved]]</span>
										</span>
										{{{each ./icons}}}<span class="lh-1">{@value}</span>{{{end}}}


										{{{ if !template.category }}}
										{function.buildCategoryLabel, ./category, "a", "border"}
										{{{ end }}}

										<div data-tid="{./tid}" component="topic/tags" class="tags tag-list d-none d-md-inline-flex gap-1 lh-1 {{{ if !./tags.length}}}hidden{{{ end }}}">
											{{{ each ./tags }}}
											<!-- IMPORT partials/topic/tag.tpl -->
											{{{ end }}}
										</div>

										<a href="{config.relative_path}/topic/{./slug}" class="timeago badge border border-gray-300 text-body fw-normal" title="{./timestampISO}"></a>
									</div>
									<div class="d-flex flex-grow-1 justify-content-end gap-2">
										<span class="badge border border-gray-300 text-body d-none d-lg-inline-block"><i class="fa fa-heart"></i> {./votes}</span>
										<span class="badge border border-gray-300 text-body"><i class="fa fa-pencil"></i> {./postcount}</span>
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
