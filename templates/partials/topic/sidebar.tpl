
<div id="topic-sidebar" class="sticky-top" style="z-index: 1;">
	<div class="d-flex flex-column gap-2 pb-4">
		<div class="topic-main-buttons d-flex flex-column flex-shrink-1 gap-2 mb-3 align-items-start align-items-xl-stretch">
			<!-- IMPORT partials/topic/reply-button.tpl -->

			{{{ if loggedIn }}}
			<button component="topic/mark-unread" class="btn btn-ghost btn-sm ff-secondary d-flex gap-2 align-items-center">
				<i class="fa fa-fw fa-inbox text-primary" style="line-height: var(--bs-btn-line-height);"></i>
				<span class="d-none d-xl-inline fw-semibold text-nowrap">[[topic:mark-unread]]</span>
			</button>
			{{{ end }}}

			<!-- IMPORT partials/topic/watch.tpl -->
			<!-- IMPORT partials/topic/sort.tpl -->
			<!-- IMPORT partials/topic/tools.tpl -->
		</div>
		<div class="pagination-block flex-grow-1">
			<div class="scroller-content d-flex gap-2 flex-column align-items-start">
				<button class="btn btn-ghost btn-sm d-flex gap-2 align-items-center pagetop" style=""><i class="fa fa-fw fa-angle-up" style="line-height: var(--bs-btn-line-height);"></i> <span class="timeago text-xs text-muted text-nowrap d-none d-xl-inline-block" title="{./timestampISO}"></span></button>
				<div class="scroller-container position-relative">
					<div class="scroller-thumb d-flex gap-2 text-nowrap position-relative" style="height: 40px;">
						<div class="scroller-thumb-icon bg-primary rounded d-inline-block" style="width:9px; height: 40px;"></div>
						<div class="d-none d-xl-inline-block">
							<p class="small thumb-text d-none d-md-inline-block ff-secondary fw-semibold user-select-none mb-0"></p>
							<p class="meta thumb-timestamp timeago text-xs text-muted ff-secondary fw-semibold mb-0 user-select-none"></p>
						</div>
					</div>
				</div>
				<button class="btn btn-ghost btn-sm d-flex gap-2 align-items-center pagebottom" style=""><i class="fa fa-fw fa-angle-down" style="line-height: var(--bs-btn-line-height);"></i> <span class="timeago text-xs text-muted text-nowrap d-none d-xl-inline-block" title="{./lastposttimeISO}"></span></button>
			</div>
		</div>
	</div>
</div>