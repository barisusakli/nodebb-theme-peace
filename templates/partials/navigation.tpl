<li class="mb-1">
	<h6 class="mb-0 text-uppercase pointer fw-bold rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#navigation-collapse" aria-expanded="true">
	[[global:header.navigation]]
	</h6>
	<div class="collapse show" id="navigation-collapse">
		<ul id="main-nav" class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			{{{each navigation}}}
			<!-- IF function.displayMenuItem, @index -->
			<li class="d-flex justify-content-between align-items-center {navigation.class}{{{ if navigation.dropdown }}} dropend{{{ end }}}" title="{navigation.title}">
				<a class="navigation-link align-items-center {{{ if navigation.dropdown }}}dropdown-toggle{{{ end }}} btn btn-sm btn-ghost"
				{{{ if navigation.dropdown }}} href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" {{{ else }}} href="{navigation.route}"{{{ end }}} {{{ if navigation.id }}}id="{navigation.id}"{{{ end }}}{{{ if navigation.targetBlank }}} target="_blank"{{{ end }}}>
					{{{ if navigation.iconClass }}}
					<i class="fa fa-fw text-muted hidden {navigation.iconClass}" data-content="{navigation.content}"></i>
					{{{ end }}}
					{{{ if navigation.text }}}
					<span class="">{navigation.text}</span>
					{{{ end }}}
					<span component="nav/content/badge" class="badge bg-info {{{ if !navigation.content }}}hidden {{{end}}}">{navigation.content}</span>
					{{{ if navigation.dropdown}}}
					<i class="fa fa-caret-right"></i>
					{{{ end }}}
				</a>

				{{{ if navigation.dropdown }}}
				<ul class="dropdown-menu p-1" role="menu">
					{navigation.dropdownContent}
				</ul>
				{{{ end }}}
			</li>
			<!-- ENDIF function.displayMenuItem -->
			{{{end}}}
		</ul>
	</div>
</li>