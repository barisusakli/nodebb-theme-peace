{{{each tags}}}
<div>
	<a href="{config.relative_path}/tags/{./valueEncoded}" data-tag="{./value}" class="btn btn-ghost card card-body shadow-sm border-0 d-flex flex-column gap-1 align-items-start justify-content-start text-truncate px-3 py-2">
		<div class="fw-semibold text-nowrap w-100 text-start text-truncate">{./value}</div>
		<div class="text-xs text-muted text-nowrap tag-topic-count">{{tx("global:x-topics", formattedNumber(./score))}}</div>
	</a>
</div>
{{{end}}}