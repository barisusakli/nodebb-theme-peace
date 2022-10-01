<div class="chats-full row pb-5">
	<div class="d-flex flex-column col-lg-3 h-100" component="chat/nav-wrapper" data-loaded="{{{ if roomId }}}1{{{ else }}}0{{{ end }}}">
		<div class="chat-search dropdown mb-2">
			<input class="form-control" type="text" component="chat/search" placeholder="[[users:search-user-for-chat]]" data-bs-toggle="dropdown" />
			<ul component="chat/search/list" class="dropdown-menu list-unstyled">
				<li><a href="#" class="dropdown-item">[[admin/menu:search.start-typing]]</a></li>
			</ul>
		</div>
		<ul component="chat/recent" class="chats-list list-unstyled overflow-auto pe-2 mb-0 d-flex flex-column gap-2 flex-grow-1 flex-shrink-1" style="overflow-x:hidden!important;" data-nextstart="{nextStart}">
			{{{each rooms}}}
			<!-- IMPORT partials/chats/recent_room.tpl -->
			{{{end}}}
		</ul>
	</div>
	<div component="chat/main-wrapper" class="col-lg-9 h-100">
		<!-- IMPORT partials/chats/message-window.tpl -->
	</div>
	<div class="imagedrop"><div>[[topic:composer.drag_and_drop_images]]</div></div>
</div>