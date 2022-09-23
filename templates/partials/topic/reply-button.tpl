<div component="topic/reply/container" class="btn-group action-bar bottom-sheet <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">
	<a href="#" class="btn btn-sm btn-outline-primary" component="topic/reply" title="[[topic:reply]]" data-bs-placement="top" role="button"><span class=""><i class="fa fa-fw fa-reply"></i></span></a>
</div>

<!-- IF loggedIn -->
<!-- IF !privileges.topics:reply -->
<!-- IF locked -->
<a component="topic/reply/locked" title="[[topic:locked]]" class="btn btn-sm btn-outline-primary" disabled><i class="fa fa-fw fa-lock"></i></a>
<!-- ENDIF locked -->
<!-- ENDIF !privileges.topics:reply -->

<!-- IF !locked -->
<a component="topic/reply/locked" title="[[topic:locked]]" class="btn btn-sm btn-outline-primary hidden" disabled><i class="fa fa-fw fa-lock"></i></a>
<!-- ENDIF !locked -->

<!-- ELSE -->

<!-- IF !privileges.topics:reply -->
<a component="topic/reply/guest" title="[[topic:guest-login-reply]]" href="{config.relative_path}/login" class="btn btn-sm btn-outline-primary"><i class="fa fa-fw fa-reply"></i></a>
<!-- ENDIF !privileges.topics:reply -->
<!-- ENDIF loggedIn -->