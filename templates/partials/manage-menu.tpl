<!-- manage-menu -->
{{{ if config.loggedIn }}}
<li class="mb-2">
	<h6 class="text-uppercase pointer fw-bold d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#manage-collapse" aria-expanded="false">
	[[global:header.manage]]
	</h6>
	<div class="collapse" id="manage-collapse">
		<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			{{{ if showModMenu }}}
			<li>
				<a class="d-inline-flex text-decoration-none" href="{relative_path}/flags">
					[[pages:flagged-content]]
				</a>
			</li>
			<li>
				<a class="d-inline-flex text-decoration-none" href="{relative_path}/post-queue">
					[[pages:post-queue]]
				</a>
			</li>
			{{{ if registrationQueueEnabled }}}
			<li>
				<a class="d-inline-flex text-decoration-none" href="{relative_path}/registration-queue">
					[[pages:registration-queue]]
				</a>
			</li>
			{{{ end }}}
			<li>
				<a class="d-inline-flex text-decoration-none" href="{relative_path}/ip-blacklist">
					[[pages:ip-blacklist]]
				</a>
			</li>
			{{{ else }}}
			{{{ if postQueueEnabled }}}
			<li>
				<a class="d-inline-flex text-decoration-none" href="{relative_path}/post-queue">
					[[pages:post-queue]]
				</a>
			</li>
			{{{ end }}}
			{{{ end }}}
		</ul>
	</div>
</li>
{{{ end }}}