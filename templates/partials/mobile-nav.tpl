<nav class="d-lg-none navbar sticky-top bg-light border-bottom p-2">
	<div class="container-fluid justify-content-start">
		<button class="navbar-toggler me-2 position-relative" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvas" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			<span class="fs-6">
				<small>
					<span component="unread/badge" class="position-absolute top-0 start-0 translate-middle badge bg-info {{{ if !unreadCount.mobileUnread}}} hidden {{{ end }}}">
						{unreadCount.mobileUnread}
					</span>

					<span component="notification/badge" class="position-absolute top-50 start-0 translate-middle badge bg-info {{{ if !unreadCount.notification}}} hidden {{{ end }}}">
						{unreadCount.notification}
					</span>

					<span component="chat/badge" class="position-absolute top-100 start-0 translate-middle badge bg-info {{{ if !unreadCount.chat}}} hidden {{{ end }}}">
						{unreadCount.chat}
					</span>
				</small>
			</span>
		</button>

		{{{ if brand:logo }}}
		<a class="navbar-brand me-2" href="{{{ if brand:logo:url }}}{brand:logo:url}{{{ else }}}{relative_path}/{{{ end }}}">
			<img alt="{brand:logo:alt}" class="{brand:logo:display} forum-logo d-inline-block align-text-top" src="{brand:logo}?{config.cache-buster}" width="50" height="50"/>
		</a>
		{{{ end }}}
		<div class="text-center">
			{{{ if config.showSiteTitle }}}
				<a class="navbar-brand fs-6 fw-semibold text-decoration-none" href="{{{ if title:url }}}{title:url}{{{ else }}}{relative_path}/{{{ end }}}">
					<span class="forum-title">{config.siteTitle}</span>
				</a>
			{{{ end }}}
		</div>
	</div>
</nav>
