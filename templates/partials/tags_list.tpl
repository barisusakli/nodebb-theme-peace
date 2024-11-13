{{{each tags}}}
<div>
	<a href="{config.relative_path}/tags/{./valueEncoded}" data-tag="{./valueEscaped}" class="btn btn-ghost card card-body shadow-sm border-0 d-flex flex-column gap-1 align-items-start justify-content-start text-truncate px-3 py-2">
		<div class="fw-semibold text-nowrap w-100 text-start text-truncate">{./valueEscaped}</div>
		<div class="text-xs text-muted text-nowrap tag-topic-count">[[global:x-topics, {txEscape(formattedNumber(./score))}]]</div>
	</a>
</div>
{{{end}}}