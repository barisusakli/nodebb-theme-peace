<!-- logged in menu -->
{{{ if config.loggedIn }}}
<li class="">
	<h6 class="text-uppercase pointer fw-bold d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
	[[global:header.account]]
	</h6>
	<div class="collapse show" id="account-collapse">
		<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			<li><a href="{config.relative_path}/user/{user.userslug}" class="d-inline-flex text-decoration-none">[[user:profile]]</a></li>

			<li class="d-flex justify-content-between align-items-center"><a href="{config.relative_path}/notifications" class="d-inline-flex text-decoration-none">[[user:notifications]]</a> <span component="notification/badge" class="badge bg-info {{{ if !unreadCount.notification }}}hidden{{{ end }}}">{unreadCount.notification}</span></li>

			<li class="d-flex justify-content-between align-items-center"><a href="{config.relative_path}/user/{user.userslug}/chats{{{ if user.lastRoomId }}}/{user.lastRoomId}{{{ end }}}" class="d-inline-flex text-decoration-none">[[pages:chats]]</a> <span component="chat/badge" class="badge bg-info {{{ if !unreadCount.chat }}}hidden{{{ end }}}">{unreadCount.chat}</span></li>

			<li component="user/logout"><a href="#" class="d-inline-flex text-decoration-none">[[global:logout]]</a></li>
		</ul>
	</div>
</li>
{{{ end }}}