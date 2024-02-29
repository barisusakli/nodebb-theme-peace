{{{each tags}}}
<span class="tag-container d-inline-block p-1 me-3 mb-4 fw-bold">
	<a href="{config.relative_path}/tags/{./valueEncoded}" data-tag="{./valueEscaped}"><span class="tag-item border border-gray-300 px-2 py-1 rounded-1 text-uppercase text-nowrap tag-class-{tags.class} me-2" data-tag="{tags.valueEscaped}">{tags.valueEscaped} <span class="tag-topic-count text-primary text-nowrap" title="{tags.score}">{formattedNumber(tags.score)}</span></span></a>
</span>
{{{end}}}
