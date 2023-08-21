<li component="chat/recent/room" data-roomid="{rooms.roomId}" class="{{{ if rooms.unread }}}unread{{{ end }}} btn btn-light mb-2 w-100 text-start">
	<ul class="members list-unstyled">
	{{{ each rooms.users}}}
	{{{ if @first }}}
	<div class="main-avatar">
		<a href="{config.relative_path}/user/{rooms.users.userslug}">{buildAvatar(rooms.users, "24px", false, "rounded")}</a>
		<span component="chat/title">{{{ if rooms.roomName }}}{rooms.roomName}{{{ else }}}{rooms.usernames}{{{ end }}}</span>
	</div>
	{{{ end }}}
	{{{ end }}}
	</ul>

	<div class="notification-chat-content">
		<strong class="room-name">
			<!-- IF !rooms.lastUser.uid -->
			<span>[[modules:chat.no-users-in-room]]</span>
			<!-- ENDIF !rooms.lastUser.uid -->
		</strong>
	</div>
</li>