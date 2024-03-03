<li class="d-flex align-items-center">
	<div class="dropup" component="skinSwitcher">
		<button class="btn btn-sm btn-outline-secondary" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border-color: var(--bs-border-color);"><i class="fa fa-paintbrush"></i></button>
		<div class="d-flex justify-content-center hidden" component="skinSpinner">
			<div class="spinner-border text-info" role="status">
				<span class="visually-hidden">Loading...</span>
			</div>
		</div>
		<ul class="dropdown-menu overflow-auto" role="menu">
			<div class="d-flex">
				<div>
					<li class="dropdown-header">Light</li>
					<div class="d-grid" style="grid-template-columns: 1fr 1fr;">
						{{{ each bootswatchSkinOptions.light }}}
						<li>
							<a href="#" class="dropdown-item" data-value="{./value}" role="menuitem">{./name} <i class="fa fa-fw fa-check {{{ if !./selected }}} invisible {{{ end }}}"></i></a>
						</li>
						{{{ end }}}
					</div>
				</div>
				<div>
					<li class="dropdown-header">Dark</li>
					{{{ each bootswatchSkinOptions.dark }}}
					<li>
						<a href="#" class="dropdown-item" data-value="{./value}" role="menuitem">{./name} <i class="fa fa-fw fa-check {{{ if !./selected }}} invisible {{{ end }}}"></i></a>
					</li>
					{{{ end }}}
				</div>
			</div>
			<hr class="my-1"/>

			<div class="d-grid" style="grid-template-columns: 1fr 1fr;">
				{{{ each bootswatchSkinOptions.default }}}
				<li>
					<a href="#" class="dropdown-item rounded-1" data-value="{./value}" role="menuitem">{./name} <i class="fa fa-fw fa-check {{{ if !./selected }}} invisible {{{ end }}}"></i></a>
				</li>
				{{{ end }}}
				{{{ each bootswatchSkinOptions.custom }}}
				<li>
					<a href="#" class="dropdown-item rounded-1" data-value="{./value}" role="menuitem">{./name} <i class="fa fa-fw fa-check {{{ if !./selected }}} invisible {{{ end }}}"></i></a>
				</li>
				{{{ end }}}
			</div>
		</ul>
	</div>
</li>
