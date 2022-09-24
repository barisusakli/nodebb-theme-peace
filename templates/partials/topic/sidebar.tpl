
<div id="topic-sidebar" class="sticky-top" style="top: 1.5rem;">
	<div class="">
		<div class="hidden">
			<div class="stats">
				<span component="topic/post-count" class="human-readable-number" title="{postcount}">{postcount}</span><br />
				<small>[[global:posts]]</small>
			</div>
			<div class="stats">
				<span class="human-readable-number" title="{viewcount}">{viewcount}</span><br />
				<small>[[global:views]]</small>
			</div>
		</div>

		<div class="topic-main-buttons mb-2">
			<!-- IMPORT partials/topic/reply-button.tpl -->
		</div>

		{{{ if config.loggedIn }}}
		<div class="topic-main-buttons mb-2">
			<button component="topic/mark-unread" class="btn btn-sm btn-outline-secondary" title="[[topic:mark_unread]]">
				<i class="fa fa-fw fa-inbox"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"></span>
			</button>
		</div>
		{{{ end }}}

		<div class="topic-main-buttons mb-2">
			<!-- IMPORT partials/topic/watch.tpl -->
		</div>
		<div class="topic-main-buttons mb-2">
			<!-- IMPORT partials/topic/sort.tpl -->
		</div>
		<div class="topic-main-buttons mb-2">
			<!-- IMPORT partials/thread_tools.tpl -->
		</div>

		<div>
			<span class="browsing-users hidden hidden-xs hidden-sm">
				<div><strong>[[category:browsing]]</strong></div>
				<div component="topic/browsing/list" class="thread_active_users active-users inline-block"></div>
				<small class="hidden">
					<i class="fa fa-users"></i> <span component="topic/browsing/count" class="user-count"></span>
				</small>
			</span>
		</div>
	</div>
</div>