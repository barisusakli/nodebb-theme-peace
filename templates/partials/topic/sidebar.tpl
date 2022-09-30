
<div id="topic-sidebar" class="sticky-top vh-100">
	<div class="d-flex flex-column gap-2 h-100 pb-4">
		<div class="d-flex flex-column flex-shrink-1 gap-2 mb-2">
			<div class="topic-main-buttons">
				<!-- IMPORT partials/topic/reply-button.tpl -->
			</div>

			{{{ if config.loggedIn }}}
			<div class="topic-main-buttons">
				<button component="topic/mark-unread" class="btn btn-sm btn-outline-secondary" title="[[topic:mark_unread]]">
					<i class="fa fa-fw fa-inbox"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"></span>
				</button>
			</div>
			{{{ end }}}

			<div class="topic-main-buttons">
				<!-- IMPORT partials/topic/watch.tpl -->
			</div>
			<div class="topic-main-buttons">
				<!-- IMPORT partials/topic/sort.tpl -->
			</div>
			<div class="topic-main-buttons">
				<!-- IMPORT partials/thread_tools.tpl -->
			</div>
		</div>
		<div class="pagination-block flex-grow-1">
			<div class="ps-1 ps-md-0">
				<div class="scroller-content">
					<span class="pointer pagetop"><i class="fa fa-angle-double-up"></i> <span class="d-none d-md-inline-block">[[topic:first-post]]</span></span>
					<div class="scroller-container">
						<div class="scroller-thumb">
							<div class="scroller-thumb-icon"></div>
							<span class="thumb-text d-none d-md-inline-block"></span>
						</div>
					</div>
					<span class="pointer pagebottom"><i class="fa fa-angle-double-down"></i> <span class="d-none d-md-inline-block">[[topic:last-post]]</span></span>
				</div>
			</div>
		</div>
	</div>
</div>