
<div id="topic-sidebar" class="sticky-top" style="z-index: 1;">
	<div class="d-flex flex-column gap-2 pb-4">
		<div class="d-flex flex-column flex-shrink-1 gap-2 mb-2">
			<div class="topic-main-buttons">
				<!-- IMPORT partials/topic/reply-button.tpl -->
			</div>

			{{{ if config.loggedIn }}}
			<div class="topic-main-buttons">
				<button component="topic/mark-unread" class="btn btn-sm btn-outline-secondary" title="[[topic:mark-unread]]">
					<i class="fa fa-fw fa-inbox"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"></span>
				</button>
			</div>
			{{{ end }}}

			<div class="topic-main-buttons">
				<!-- IMPORT partials/topic/watch.tpl -->
			</div>
			<div class="topic-main-buttons hidden-xs">
				<!-- IMPORT partials/topic/sort.tpl -->
			</div>
			<div class="topic-main-buttons">
				<!-- IMPORT partials/topic/tools.tpl -->
			</div>
		</div>
		<div class="pagination-block flex-grow-1">
			<div class="ps-1 ps-md-0">
				<div class="scroller-content d-flex gap-2 flex-column align-items-start">
					<button class="btn-ghost-sm pagetop" style="padding: 4px;"><i class="fa fa-angle-double-up"></i> <span class="timeago text-xs text-muted text-nowrap d-none d-md-inline-block" title="{./timestampISO}"></span></button>
					<div class="scroller-container position-relative">
						<div class="scroller-thumb d-flex gap-2 text-nowrap position-relative" style="height: 40px;">
							<div class="scroller-thumb-icon bg-primary rounded d-inline-block" style="width:9px; height: 40px;"></div>
							<div class="d-none d-md-inline-block">
								<p class="small thumb-text d-none d-md-inline-block ff-secondary fw-semibold user-select-none mb-0"></p>
								<p class="meta thumb-timestamp timeago text-xs text-muted ff-secondary fw-semibold mb-0 user-select-none"></p>
							</div>
						</div>
					</div>
					<button class="btn-ghost-sm pagebottom" style="padding: 4px;"><i class="fa fa-angle-double-down"></i> <span class="timeago text-xs text-muted text-nowrap d-none d-md-inline-block" title="{./lastposttimeISO}"></span></button>
				</div>
			</div>
		</div>
	</div>
</div>