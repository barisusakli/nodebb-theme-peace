<div class="d-flex flex-column h-100">
	{{{ if !roomId }}}
	<div class="d-flex flex-column align-items-center gap-3 p-5">
		<i class="fa-solid fa-wind fs-2 text-muted"></i>
		<span class="text-muted text-sm">[[modules:chat.no_active]]</span>
	</div>
	{{{ else }}}
	<div component="chat/header" class="d-flex align-items-center px-md-3 gap-3">
		<a href="#" data-action="close" role="button" class="flex-shrink-0 d-flex d-md-none btn btn-outline align-text-top"><i class="fa fa-chevron-left"></i></a>
		<h5 component="chat/header/title" class="members flex-grow-1 fw-semibold tracking-tight mb-0 text-truncate text-nowrap">
			{{{ if ./roomName }}}<i class="fa {icon} text-muted"></i> {roomName}{{{ else }}}{./chatWithMessage}{{{ end}}}
		</h5>

		<!-- IMPORT partials/chats/options.tpl -->
	</div>
	<hr class="my-1"/>
	<div class="d-flex flex-grow-1 gap-1 overflow-auto" style="min-width: 0px;">
		<div component="chat/messages" class="expanded-chat d-flex flex-column flex-grow-1" data-roomid="{roomId}" style="min-width: 0px;">
			<!-- IMPORT partials/chats/scroll-up-alert.tpl -->
			<ul component="chat/message/content" class="chat-content p-0 m-0 list-unstyled overflow-auto flex-grow-1">
				<!-- IMPORT partials/chats/messages.tpl -->
			</ul>
			<ul component="chat/message/search/results" class="chat-content p-0 m-0 list-unstyled overflow-auto flex-grow-1 hidden">
				<div component="chat/message/search/no-results" class="text-center p-4 d-flex flex-column">
					<div class="p-4"><i class="fa-solid fa-wind fs-2 text-muted"></i></div>
					<div class="text-xs fw-semibold text-muted">[[search:no-matches]]</div>
				</div>
			</ul>
			<!-- IMPORT partials/chats/composer.tpl -->
		</div>

		<!-- IMPORT partials/chats/user-list.tpl -->
	</div>
	{{{ end }}}
</div>