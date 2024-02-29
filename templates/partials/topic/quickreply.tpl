<!-- IF privileges.topics:reply -->
<div component="topic/quickreply/container" class="d-flex gap-1 quick-reply">
	<div class="icon hidden-xs px-3">
		<a data-uid="{loggedInUser.uid}" href="{{{ if loggedInUser.userslug }}}{config.relative_path}/user/{loggedInUser.userslug}{{{ else }}}#{{{ end }}}">
			{buildAvatar(loggedInUser, "64px", false, "rounded", "user/picture")}
		</a>
	</div>
	<div class="flex-grow-1">
		<form method="post" action="{config.relative_path}/compose">
			<input type="hidden" name="tid" value="{tid}" />
			<input type="hidden" name="_csrf" value="{config.csrf_token}" />
			<div class="quickreply-message mb-2">
				<textarea name="content" component="topic/quickreply/text" class="form-control mousetrap" rows="5" placeholder="[[modules:composer.textarea.placeholder]]"></textarea>
				<div class="imagedrop"><div>[[topic:composer.drag-and-drop-images]]</div></div>
			</div>
			<div class="d-flex gap-1 justify-content-end">
				<button type="submit" component="topic/quickreply/expand" class="btn btn-outline-primary btn-sm" formmethod="get"><i class="fa fa-expand"></i></button>
				<button type="submit" component="topic/quickreply/button" class="btn btn-primary btn-sm">[[topic:post-quick-reply]]</button>
			</div>
		</form>
		<form component="topic/quickreply/upload" method="post" enctype="multipart/form-data">
			<input type="file" name="files[]" multiple class="hidden"/>
		</form>
</div>
</div>
<!-- ENDIF privileges.topics:reply -->
