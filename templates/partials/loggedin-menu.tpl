<!-- logged in menu -->
{{{ if config.loggedIn }}}
<li class="">
	<div class="d-flex gap-3 flex-nowrap align-items-center justify-content-between">
		<h6 class="mb-0 text-uppercase pointer fw-bold rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
			[[global:header.account]]
		</h6>
		{{{ if !config.disableCustomUserSkins }}}
		<!-- IMPORT partials/skin-switcher.tpl -->
		{{{ end }}}
	</div>

	<div class="collapse show" id="account-collapse">
		<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			<li>
				<a href="{config.relative_path}/user/{user.userslug}" class="btn btn-sm btn-ghost">[[user:profile]]</a>
			</li>

			<li class="d-flex justify-content-between align-items-center">
				<a href="{config.relative_path}/notifications" class="btn btn-sm btn-ghost">[[user:notifications]]</a> <span component="notification/badge" class="badge bg-info {{{ if !unreadCount.notification }}}hidden{{{ end }}}">{unreadCount.notification}</span>
			</li>

			<li class="d-flex justify-content-between align-items-center">
				<a href="{config.relative_path}/user/{user.userslug}/chats{{{ if user.lastRoomId }}}/{user.lastRoomId}{{{ end }}}" class="btn btn-sm btn-ghost">[[pages:chats]]</a> <span component="chat/badge" class="badge bg-info {{{ if !unreadCount.chat }}}hidden{{{ end }}}">{unreadCount.chat}</span>
			</li>

			<li component="user/logout">
				<a href="#" class="btn btn-sm btn-ghost">[[global:logout]]</a>
			</li>
		</ul>
	</div>
</li>
{{{ end }}}