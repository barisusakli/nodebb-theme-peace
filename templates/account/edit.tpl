<div class="account">
	<!-- IMPORT partials/account/header.tpl -->
	<div>
		<div class="row">
			<div class="col-12 col-xl-6">
				<div class="card card-body shadow-sm border-0">
					<form role="form" component="profile/edit/form">
						<div class="mb-2">
							<label class="form-label fw-bold" for="fullname">[[user:fullname]]</label>
							<input class="form-control" type="text" id="fullname" name="fullname" placeholder="[[user:fullname]]" value="{fullname}">
						</div>
						<!-- IF allowWebsite -->
						<div class="mb-2">
							<label class="form-label fw-bold" for="website">[[user:website]]</label>
							<input class="form-control" type="text" id="website" name="website" placeholder="http://..." value="{website}">
						</div>
						<!-- ENDIF allowWebsite -->

						<div class="mb-2">
							<label class="form-label fw-bold" for="location">[[user:location]]</label>
							<input class="form-control" type="text" id="location" name="location" placeholder="[[user:location]]" value="{location}">
						</div>

						<div class="mb-2">
							<label class="form-label fw-bold" for="birthday">[[user:birthday]]</label>
							<input class="form-control" type="date" id="birthday" name="birthday" value="{birthday}" placeholder="mm/dd/yyyy">
						</div>

						{{{ each customUserFields }}}
						<div class="mb-2">
							<label class="form-label fw-bold" for="{./key}">{./name}</label>
							{{{ if ((./type == "input-text") || (./type == "input-link")) }}}
							<input class="form-control" type="text" id="{./key}" name="{./key}" value="{./value}">
							{{{ end }}}

							{{{ if (./type == "input-number") }}}
							<input class="form-control" type="number" id="{./key}" name="{./key}" value="{./value}">
							{{{ end }}}
							{{{ if (./type == "select") }}}
							<select class="form-select" id="{./key}" name="{./key}">
								{{{ each ./select-options}}}
								<option value="{./value}" {{{ if ./selected }}}selected{{{ end }}}>{./value}</option>
								{{{ end }}}
							</select>
							{{{ end }}}
						</div>
						{{{ end }}}

						<div class="mb-2">
							<label class="form-label fw-bold" for="groupTitle">[[user:grouptitle]]</label>

							<div class="d-flex flex-column gap-2" component="group/badge/list">
								{{{ each groups }}}
								<div component="group/badge/item" class="d-flex gap-2 justify-content-between align-items-center" data-value="{./displayName}" data-selected="{./selected}">
									<!-- IMPORT partials/groups/badge.tpl -->
									<div class="d-flex gap-1">
										<button component="group/toggle/hide" type="button" class="btn btn-ghost btn-sm text-body {{{ if !./selected }}}hidden{{{ end }}}" title="[[user:hide-group-title]]"><i class="fa fa-fw fa-eye"></i></button>
										<button component="group/toggle/show" type="button" class="btn btn-ghost btn-sm text-body {{{ if ./selected }}}hidden{{{ end }}}" title="[[user:show-group-title]]"><i class="fa fa-fw fa-eye-slash"></i></button>
										{{{ if allowMultipleBadges }}}
										<button component="group/order/up" type="button" class="btn btn-ghost btn-sm text-body" title="[[user:order-group-up]]"><i class="fa fa-fw fa-chevron-up"></i></button>
										<button component="group/order/down" type="button" class="btn btn-ghost btn-sm text-body" title="[[user:order-group-down]]"><i class="fa fa-fw fa-chevron-down"></i></button>
										{{{ end }}}
									</div>
								</div>
								{{{ end }}}
							</div>
						</div>

						<!-- IF allowAboutMe -->
						<div class="mb-2">
							<label class="form-label fw-bold" for="aboutme">[[user:aboutme]]</label> <small><label id="aboutMeCharCountLeft"></label></small>
							<textarea class="form-control" id="aboutme" name="aboutme" rows="5">{aboutme}</textarea>
						</div>
						<!-- ENDIF allowAboutMe -->

						<!-- IF allowSignature -->
						<!-- IF !disableSignatures -->
						<div class="mb-2">
							<label class="form-label fw-bold" for="signature">[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
							<textarea class="form-control" id="signature" name="signature" rows="5">{signature}</textarea>
						</div>
						<!-- ENDIF !disableSignatures -->
						<!-- ENDIF allowSignature -->

						<a id="submitBtn" href="#" class="btn btn-primary">[[global:save-changes]]</a>
					</form>
				</div>
				<hr class="visible-xs visible-sm"/>
			</div>

			<div class="col-12 col-xl-6">
				<div class="text-center">
					<ul class="list-group mb-3">
						<!-- IF allowProfilePicture -->
						<a component="profile/change/picture" href="#" class="list-group-item">[[user:change-picture]]</a>
						<!-- ENDIF allowProfilePicture -->
						<!-- IF !username:disableEdit -->
						<a href="{config.relative_path}/user/{userslug}/edit/username" class="list-group-item">[[user:change-username]]</a>
						<!-- ENDIF !username:disableEdit -->
						<!-- IF !email:disableEdit -->
						<a href="{config.relative_path}/user/{userslug}/edit/email" class="list-group-item">[[user:change-email]]</a>
						<!-- ENDIF !email:disableEdit -->
						<!-- IF canChangePassword -->
						<a href="{config.relative_path}/user/{userslug}/edit/password" class="list-group-item">[[user:change-password]]</a>
						<!-- ENDIF canChangePassword -->
						{{{each editButtons}}}
						<a href="{config.relative_path}{editButtons.link}" class="list-group-item">{editButtons.text}</a>
						{{{end}}}
					</ul>

					{{{ if config.requireEmailConfirmation }}}
					{{{ if (email && isSelf) }}}
					<a id="confirm-email" href="#" class="btn btn-warning {{{ if email:confirmed }}}hide{{{ end }}}">[[user:confirm-email]]</a><br/><br/>
					{{{ end }}}
					{{{ end }}}


					{{{ if (allowAccountDelete && isSelf) }}}
					<a id="deleteAccountBtn" href="#" class="btn btn-danger">[[user:delete-account]]</a><br/><br/>
					{{{ end }}}
				</div>
				{{{ if sso.length }}}
				<label>[[user:sso.title]]</label>
				<div class="list-group">
					{{{each sso}}}
					<div class="list-group-item">
						<!-- IF ../deauthUrl -->
						<a data-component="{../component}" class="btn btn-outline-secondary btn-sm float-end" href="{../deauthUrl}">[[user:sso.dissociate]]</a>
						<!-- END -->
						<a data-component="{../component}" href="{../url}" target="<!-- IF ../associated -->_blank<!-- ELSE -->_top<!-- ENDIF ../associated -->">
							<!-- IF ../icon --><i class="fa {../icon}"></i><!-- ENDIF ../icon -->
							<!-- IF ../associated -->[[user:sso.associated]]<!-- ELSE -->[[user:sso.not-associated]]<!-- ENDIF ../associated -->
							{../name}
						</a>
					</div>
					{{{end}}}
				</div>
				{{{ end }}}
			</div>
		</div>
	</div>
</div>

