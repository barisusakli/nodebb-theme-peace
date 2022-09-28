<li class="mb-1 d-flex align-items-center">
	<select class="form-select me-2 p-1" component="skinSwitcher">
		{{{each bootswatchSkinOptions}}}
		<option value="{bootswatchSkinOptions.value}" {{{ if bootswatchSkinOptions.selected }}}selected{{{ end }}}>{bootswatchSkinOptions.name}</option>
		{{{end}}}
	</select>
	<div class="d-flex justify-content-center invisible" component="skinSpinner">
		<div class="spinner-border text-info" role="status">
			<span class="visually-hidden">Loading...</span>
		</div>
	</div>
</li>