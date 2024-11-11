<!-- manage-menu -->
{{{ if showModMenu }}}
<li class="border-top my-2"></li>
<li class="mb-2">
	<h6 class="mb-0 text-uppercase pointer fw-bold rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#manage-collapse" aria-expanded="true">
	[[global:header.manage]]
	</h6>
	<div class="collapse show" id="manage-collapse">
		<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			{{{ if showModMenu }}}
			<li>
				<a class="btn btn-sm btn-ghost" href="{relative_path}/flags">
					[[pages:flagged-content]]
				</a>
			</li>
			<li>
				<a class="btn btn-sm btn-ghost" href="{relative_path}/post-queue">
					[[pages:post-queue]]
				</a>
			</li>
			{{{ if registrationQueueEnabled }}}
			<li>
				<a class="btn btn-sm btn-ghost" href="{relative_path}/registration-queue">
					[[pages:registration-queue]]
				</a>
			</li>
			{{{ end }}}
			<li>
				<a class="btn btn-sm btn-ghost" href="{relative_path}/ip-blacklist">
					[[pages:ip-blacklist]]
				</a>
			</li>
			{{{ else }}}
			{{{ if postQueueEnabled }}}
			<li>
				<a class="btn btn-sm btn-ghost" href="{relative_path}/post-queue">
					[[pages:post-queue]]
				</a>
			</li>
			{{{ end }}}
			{{{ end }}}
		</ul>
	</div>
</li>
{{{ end }}}