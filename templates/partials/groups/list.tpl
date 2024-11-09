{{{ each groups }}}
<div class="col-xl-4 col-lg-6 col-sm-12 mb-3" component="groups/summary" data-slug="{./slug}">
	<div class="card h-100 border-0">
		<a href="{config.relative_path}/groups/{./slug}" class="btn btn-ghost border d-block h-100 text-reset text-decoration-none">
			<div class="card-body d-flex flex-column gap-1 h-100 text-start">
				<div class="d-flex">
					<div class="flex-grow-1 fs-6 fw-semibold">{./displayName}</div>
					<div class="flex-shrink-0">
						<span class="text-xs badge fw-semibold text-muted d-none d-lg-inline-block" style="vertical-align: bottom;"><i class="fa fa-group"></i>  {formattedNumber(./memberCount)}</span>
					</div>
				</div>
				<div class="text-sm">{./description}</div>
			</div>
		</a>
	</div>
</div>
{{{ end }}}