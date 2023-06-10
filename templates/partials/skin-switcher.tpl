<li class="mb-1 d-flex align-items-center">
	<div class="dropup me-2" component="skinSwitcher">
		<button class="btn btn-sm btn-outline-secondary" data-bs-toggle="dropdown" aria-expanded="false">Change Skin</button>
		<ul class="dropdown-menu overflow-auto">
			<div class="d-flex">
				<div>
					<li class="dropdown-header">Light</li>
					<div class="d-grid" style="grid-template-columns: 1fr 1fr;">
						{{{ each bootswatchSkinOptions.light }}}
						<li>
							<a href="#" class="dropdown-item" data-value="{./value}">{./name} <i class="fa fa-fw fa-check {{{ if !./selected }}} invisible {{{ end }}}"></i></a>
						</li>
						{{{ end }}}
					</div>
				</div>
				<div>
					<li class="dropdown-header">Dark</li>
					{{{ each bootswatchSkinOptions.dark }}}
					<li>
						<a href="#" class="dropdown-item" data-value="{./value}">{./name} <i class="fa fa-fw fa-check {{{ if !./selected }}} invisible {{{ end }}}"></i></a>
					</li>
					{{{ end }}}
				</div>
			</div>
			<hr class="my-1"/>

			<div class="d-grid" style="grid-template-columns: 1fr 1fr;">
				{{{ each bootswatchSkinOptions.default }}}
				<li>
					<a href="#" class="dropdown-item rounded-1" data-value="{./value}">{./name} <i class="fa fa-fw fa-check {{{ if !./selected }}} invisible {{{ end }}}"></i></a>
				</li>
				{{{ end }}}
			</div>
		</ul>
	</div>
	<div class="d-flex justify-content-center invisible" component="skinSpinner">
		<div class="spinner-border text-info" role="status">
			<span class="visually-hidden">Loading...</span>
		</div>
	</div>
</li>
