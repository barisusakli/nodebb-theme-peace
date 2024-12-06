{{{ if privileges.topics:reply }}}
<div component="topic/reply/container">
	<a href="{config.relative_path}/compose?tid={tid}" class="d-flex align-items-center btn btn-sm btn-primary fw-semibold d-flex gap-2" component="topic/reply" data-ajaxify="false" role="button">
		<i class="fa fa-fw fa-reply" style="line-height: var(--bs-btn-line-height);"></i>
		<span class="d-none d-xl-inline">[[topic:reply]]</span>
	</a>
</div>
{{{ end }}}

{{{ if loggedIn }}}
	{{{ if !privileges.topics:reply }}}
		{{{ if locked }}}
		<a href="#" component="topic/reply/locked" class="d-flex gap-2 align-items-center fw-semibold btn btn-sm btn-primary disabled" disabled>
			<i class="fa fa-lock" style="line-height: var(--bs-btn-line-height);"></i>
			<span class="d-none d-xl-inline">[[topic:locked]]</span>
		</a>
		{{{ end }}}
	{{{ end }}}

	{{{ if !locked }}}
	<a href="#" component="topic/reply/locked" class="d-flex gap-2 align-items-center fw-semibold btn btn-sm btn-primary disabled hidden" disabled>
		<i class="fa fa-lock" style="line-height: var(--bs-btn-line-height);"></i>
		<span class="d-none d-xl-inline">[[topic:locked]]</span>
	</a>
	{{{ end }}}
{{{ else }}}
	{{{ if !privileges.topics:reply }}}
	<a component="topic/reply/guest" href="{config.relative_path}/login" class="d-flex gap-2 align-items-center fw-semibold btn btn-sm btn-primary">
		<i class="fa fa-sign-in" style="line-height: var(--bs-btn-line-height);"></i>
		<span class="d-none d-xl-inline">[[topic:guest-login-reply]]</span>
	</a>
	{{{ end }}}
{{{ end }}}