{{{ each tags }}}
<a href="{config.relative_path}/tags/{tags.valueEncoded}">
<span class="tag tag-item tag-class-{tags.class} badge bg-info rounded-1 opacity-75" data-tag="{tags.value}">{tags.valueEscaped}</span>
</a>
{{{ end }}}