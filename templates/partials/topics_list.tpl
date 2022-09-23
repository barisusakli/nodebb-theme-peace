<ul component="category" class="topic-list list-unstyled mt-3" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}" data-set="{set}">
	{{{each topics}}}
	<li component="category/topic" class="row mb-2 category-item {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
		<div class="col-12">
			<!-- persona topic-list item -->
			<div class="card card-body shadow-sm hidden">
				<link itemprop="url" content="{config.relative_path}/topic/{../slug}" />
				<meta itemprop="name" content="{function.stripTags, ../title}" />
				<meta itemprop="itemListOrder" content="descending" />
				<meta itemprop="position" content="{../index}" />
				<a id="{../index}" data-index="{../index}" component="topic/anchor"></a>

				<div class="col-sm-9 col-10 content">
					<div class="avatar float-start me-2">
						<!-- IF showSelect -->
						<div class="select" component="topic/select">
							{{{ if ./thumbs.length }}}
							<img src="{./thumbs.0.url}" class="user-img not-responsive" />
							{{{ else }}}
							{buildAvatar(../user, "48px", true, "not-responsive")}
							{{{ end }}}
							<i class="fa fa-check"></i>
						</div>
						<!-- ENDIF showSelect -->

						<!-- IF !showSelect -->
						<a href="<!-- IF topics.user.userslug -->{config.relative_path}/user/{topics.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->" class="float-start">
							{{{ if ./thumbs.length }}}
							<img src="{./thumbs.0.url}" class="user-img not-responsive" />
							{{{ else }}}
							{buildAvatar(../user, "48px", true, "not-responsive")}
							{{{ end }}}
						</a>
						<!-- ENDIF !showSelect -->
					</div>

					<h4 component="topic/header" class="title mb-1">
						<i component="topic/scheduled" class="fa fa-clock-o <!-- IF !topics.scheduled -->hide<!-- ENDIF !topics.scheduled -->" title="[[topic:scheduled]]"></i>
						<i component="topic/pinned" class="fa fa-thumb-tack <!-- IF (topics.scheduled || !topics.pinned) -->hide<!-- ENDIF (topics.scheduled || !topics.pinned) -->" title="{{{ if !../pinExpiry }}}[[topic:pinned]]{{{ else }}}[[topic:pinned-with-expiry, {../pinExpiryISO}]]{{{ end }}}"></i>
						<i component="topic/locked" class="fa fa-lock <!-- IF !topics.locked -->hide<!-- ENDIF !topics.locked -->" title="[[topic:locked]]"></i>
						<i component="topic/moved" class="fa fa-arrow-circle-right <!-- IF !topics.oldCid -->hide<!-- ENDIF !topics.oldCid -->" title="[[topic:moved]]"></i>
						{{{each topics.icons}}}{@value}{{{end}}}

						<!-- IF !topics.noAnchor -->
						<a href="{config.relative_path}/topic/{topics.slug}<!-- IF topics.bookmark -->/{topics.bookmark}<!-- ENDIF topics.bookmark -->">{topics.title}</a>
						<!-- ELSE -->
						<span>{topics.title}</span>
						<!-- ENDIF !topics.noAnchor -->
					</h4>
					<div class="info">
						<!-- IF !template.category -->
						<div class="category-item mb-1 d-inline-block">
							<div class="icon d-inline-block rounded-1 p-1 text-center" style="{function.generateCategoryBackground, topics.category}; width: 32px; height: 32px;">
								{{{ if topics.category.icon }}}
								<i class="fa fa-fw {topics.category.icon}"></i>
								{{{ end }}}
							</div>
							<a href="{config.relative_path}/category/{topics.category.slug}">{topics.category.name}</a>
						</div>
						&bull;
						<!-- ENDIF !template.category -->

						{{{ if topics.tags.length }}}
						<span class="tag-list hidden-xs">
							{{{each topics.tags}}}
							<!-- IMPORT partials/topic/tag.tpl -->
							{{{end}}}
							&bull;
						</span>
						{{{ end }}}

						<span class="hidden-xs"><span class="timeago text-muted" title="{topics.timestampISO}"></span></span>
						<span class="visible-xs-inline">
							<!-- IF topics.teaser.timestamp -->
							<span class="timeago" title="{topics.teaser.timestampISO}"></span>
							<!-- ELSE -->
							<span class="timeago" title="{topics.timestampISO}"></span>
							<!-- ENDIF topics.teaser.timestamp -->
						</span>
					</div>
				</div>

				<div class="mobile-stat col-2 visible-xs text-end">
					<span class="human-readable-number">{topics.postcount}</span> <a href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}"><i class="fa fa-arrow-circle-right"></i></a>
				</div>

				<div class="col-md-3 col-sm-3 teaser hidden-xs" component="topic/teaser">
					<div class="lastpost background-link-container" style="border-color: {topics.category.bgColor}">
						<a class="background-link" href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}"></a>
						<!-- IF topics.unreplied -->
						<p>
							[[category:no_replies]]
						</p>
						<!-- ELSE -->
						<!-- IF topics.teaser.pid -->
						<p>
							<a href="{config.relative_path}/user/{topics.teaser.user.userslug}">{buildAvatar(topics.teaser.user, "24px", true, "not-responsive")}</a>
							<a class="permalink" href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}">
								<span class="timeago" title="{topics.teaser.timestampISO}"></span>
							</a>
						</p>
						<!-- ENDIF topics.teaser.pid -->
						<!-- ENDIF topics.unreplied -->
					</div>
				</div>
			</div>

			<div class="card card-body shadow-sm h-100 rounded-0">
				<link itemprop="url" content="{config.relative_path}/topic/{../slug}" />
				<meta itemprop="name" content="{function.stripTags, ../title}" />
				<meta itemprop="itemListOrder" content="descending" />
				<meta itemprop="position" content="{../index}" />
				<a id="{../index}" data-index="{../index}" component="topic/anchor"></a>

				<div class="d-flex pt-1">
					<!-- profile pic-->
					<div class="">
						<div class="text-center" style="width: 100px;">
							<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
								<div class="rounded">
									{buildAvatar(./user, "64px")}
								</div>
							</a>
						</div>
					</div>
					<div class="border-start ms-2 ps-3 text-wrap text-truncate">
						<div class="row" component="post/header">
							<div class="col-12">
								<h4 component="topic/header" class="title">
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
