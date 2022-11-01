<div id="{alert_id}" role="alert" class="alert alert-dismissible alert-{type} shadow-sm" component="toaster/toast">
	<button type="button" class="btn-close float-end" data-bs-dismiss="alert" aria-label="close"></button>
	<!-- IF image -->
	<img src="{image}">
	<!-- ENDIF image -->

	<!-- IF title -->
	<strong class="text-uppercase">{title}</strong>
	<!-- ENDIF title -->

	<!-- IF message -->
	<p class="pt-2">{message}</p>
	<!-- ENDIF message -->
</div>
