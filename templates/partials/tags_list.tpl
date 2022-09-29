{{{each tags}}}
<span class="tag-container d-inline-block p-1 me-4 mb-4 fw-bold">
	<a href="{config.relative_path}/tags/{./valueEncoded}" data-tag="{./valueEscaped}"><span class="tag-item px-2 py-1 rounded-1 text-uppercase text-nowrap tag-class-{tags.class} me-2" data-tag="{tags.valueEscaped}">&bull; {tags.valueEscaped}</span><span class="tag-topic-count text-primary text-nowrap human-readable-number" title="{tags.score}">{tags.score}</span></a>
</span>
{{{end}}}
