{{{each navigation}}}
<!-- IF function.displayMenuItem, @index -->
<li class="{navigation.class}{{{ if navigation.dropdown }}} dropdown{{{ end }}}" title="{navigation.title}">
	<a class="d-inline-flex text-decoration-none rounded navigation-link align-items-center {{{ if navigation.dropdown }}}dropdown-toggle{{{ end }}}"
	{{{ if navigation.dropdown }}} href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" {{{ else }}} href="{navigation.route}"{{{ end }}} {{{ if navigation.id }}}id="{navigation.id}"{{{ end }}}{{{ if navigation.targetBlank }}} target="_blank"{{{ end }}}>
		{{{ if navigation.iconClass }}}
		<i class="fa fa-fw hidden {navigation.iconClass}" data-content="{navigation.content}"></i>
		{{{ end }}}
		{{{ if navigation.text }}}
		<span class="me-1">{navigation.text}</span>
		{{{ end }}}
		{{{ if navigation.dropdown}}}
		<i class="fa fa-caret-down"></i>
		{{{ end }}}
	</a>
	{{{ if navigation.dropdown }}}
	<ul class="dropdown-menu">
		{navigation.dropdownContent}
	</ul>
	{{{ end }}}
</li>
<!-- ENDIF function.displayMenuItem -->
{{{end}}}