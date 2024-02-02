<li class="mb-1">
	<h6 class="text-uppercase pointer fw-bold d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#navigation-collapse" aria-expanded="true">
	[[global:header.navigation]]
	</h6>
	<div class="collapse show" id="navigation-collapse">
		<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			{{{each navigation}}}
			<!-- IF function.displayMenuItem, @index -->
			<li class="d-flex justify-content-between align-items-center {navigation.class}{{{ if navigation.dropdown }}} dropend{{{ end }}}" title="{navigation.title}">
				<a class="d-inline-flex text-decoration-none navigation-link align-items-center {{{ if navigation.dropdown }}}dropdown-toggle{{{ end }}}"
				{{{ if navigation.dropdown }}} href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" {{{ else }}} href="{navigation.route}"{{{ end }}} {{{ if navigation.id }}}id="{navigation.id}"{{{ end }}}{{{ if navigation.targetBlank }}} target="_blank"{{{ end }}}>
					{{{ if navigation.iconClass }}}
					<i class="fa fa-fw hidden {navigation.iconClass}" data-content="{navigation.content}"></i>
					{{{ end }}}
					{{{ if navigation.text }}}
					<span class="me-1">{navigation.text}</span>
					{{{ end }}}
					{{{ if navigation.dropdown}}}
					<i class="fa fa-caret-right"></i>
					{{{ end }}}
				</a>

				<span component="nav/content/badge" class="badge bg-info {{{ if !navigation.content }}}hidden {{{end}}}">{navigation.content}</span>

				{{{ if navigation.dropdown }}}
				<ul class="dropdown-menu" role="menu">
					{navigation.dropdownContent}
				</ul>
				{{{ end }}}
			</li>
			<!-- ENDIF function.displayMenuItem -->
			{{{end}}}
		</ul>
	</div>
</li>