{{{ if config.searchEnabled }}}
<div class="position-relative flex-grow-1">
	<form component="search/form" id="search-form" class="d-flex align-items-center" role="search" method="GET">
		<div component="search/fields" id="search-fields" class="w-100">
			<div class="position-relative">
				<input autocomplete="off" type="text" class="form-control form-control-sm border-1" placeholder="[[global:search]]" name="query" value="">

				<button type="submit" class="border-0 position-absolute end-0 top-50 translate-middle-y" style="background: none;">
					<i class="fa fa-fw fa-search opacity-75"></i>
				</button>
			</div>

			<div id="quick-search-container" class="quick-search-container mt-2 dropdown-menu d-block hidden p-2">
				<div class="form-check filter-category mb-2 ms-4">
					<input class="form-check-input" type="checkbox" checked>
					<label class="form-check-label name"></label>
				</div>

				<div class="text-center loading-indicator"><i class="fa fa-spinner fa-spin"></i></div>
				<div class="quick-search-results-container"></div>
			</div>
		</div>
	</form>
</div>
{{{ end }}}