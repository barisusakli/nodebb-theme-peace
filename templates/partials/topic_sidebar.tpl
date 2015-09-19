
<div id="topic-sidebar" class="affix-top" data-spy="affix">

	<div class="clearfix">
		<div class="stats">
			<span component="topic/post-count" class="human-readable-number" title="{postcount}">{postcount}</span><br />
			<small>[[global:posts]]</small>
		</div>
		<div class="stats">
			<span class="human-readable-number" title="{viewcount}">{viewcount}</span><br />
			<small>[[global:views]]</small>
		</div>
	</div>

	<div class="tags">
		<!-- BEGIN tags -->
		<a href="{config.relative_path}/tags/{tags.value}">
		<span class="tag-item" data-tag="{tags.value}" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">{tags.value}</span>
		<span class="tag-topic-count human-readable-number" title="{tags.score}">{tags.score}</span></a>
		<!-- END tags -->
	</div>

	<div class="topic-main-buttons">
		<span class="loading-indicator btn pull-left hidden" done="0">
			<span class="hidden-xs">[[topic:loading_more_posts]]</span> <i class="fa fa-refresh fa-spin"></i>
		</span>

		<!-- IMPORT partials/topic/reply-button.tpl -->

		<!-- IMPORT partials/topic/sort.tpl -->

		<button component="topic/follow" class="btn hidden-xs hidden-sm <!-- IF isFollowing -->hidden<!-- ENDIF isFollowing -->">
			<i class="fa fa-eye"></i> <span>[[topic:watch]]</span>
		</button>

		<button component="topic/unfollow" class="btn hidden-xs hidden-sm <!-- IF !isFollowing -->hidden<!-- ENDIF !isFollowing -->">
			<i class="fa fa-eye-slash"></i> <span>[[topic:unwatch]]</span>
		</button>
	</div>

	<div>
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
<script>
$('#topic-sidebar').affix({
  offset: {
    top: 100
  }
});
</script>