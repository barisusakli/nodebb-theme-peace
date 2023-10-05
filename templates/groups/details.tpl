<div component="groups/container" class="groups details row">
	<div class="col-12">
		<!-- IMPORT partials/breadcrumbs.tpl -->
	</div>

	<div class="col-lg-5 col-12">
		<div class="card mb-3">
			<div class="card-header">
				<span class="fs-5">
					<i class="fa fa-list-ul"></i> [[groups:details.title]]
					<!-- IF group.private --><span class="badge bg-info text-dark">[[groups:details.private]]</span><!-- ENDIF group.private -->
					<!-- IF group.hidden --><span class="badge bg-info text-dark">[[groups:details.hidden]]</span>&nbsp;<!-- ENDIF group.hidden -->
				</span>
			</div>
			<div class="card-body">
				<h5>{group.displayName}</h5>
				<p>{group.descriptionParsed}</p>
				<div class="d-flex gap-1 justify-content-end">
					{{{ if isAdmin }}}
					<div>
						<a href="{config.relative_path}/admin/manage/groups/{group.nameEncoded}" target="_blank" class="btn btn-sm btn-info"><i class="fa fa-gear"></i> [[user:edit]]</a>
					</div>
					{{{ end }}}
					{{{ if loggedIn }}}
					<div>
						{function.membershipBtn, group, "btn-sm"}
					</div>
					{{{ end }}}
				</div>
			</div>
		</div>

		<div class="card mb-3">
			<div class="card-header">
				<span class="fs-5">
					<i class="fa fa-users"></i> [[groups:details.members]]
				</span>
			</div>
			<div class="card-body">
				<!-- IMPORT partials/groups/memberlist.tpl -->
			</div>
		</div>

		<!-- IF group.isOwner -->
		<!-- IMPORT partials/groups/admin.tpl -->
		<!-- ENDIF group.isOwner -->

		<div data-widget-area="left">
			{{{each widgets.left}}}
			{{widgets.left.html}}
			{{{end}}}
		</div>
	</div>
	<div class="col-lg-7 col-12">
		<div class="col-lg-11">
			<!-- IF !posts.length -->
			<div class="alert alert-info">[[groups:details.has-no-posts]]</div>
			<!-- ENDIF !posts.length -->
			<!-- IMPORT partials/posts_list.tpl -->
		</div>
		<div data-widget-area="right">
			{{{each widgets.right}}}
			{{widgets.right.html}}
			{{{end}}}
		</div>
	</div>
</div>
