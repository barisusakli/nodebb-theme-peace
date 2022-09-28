"use strict";

/*globals ajaxify, config, utils, NProgress*/

$(document).ready(function() {
	$('[component="skinSwitcher"]').on('change', function () {
		const skin = $(this).val();
		require(['forum/account/settings'], function (accountSettings) {
			$('[component="skinSpinner"]').removeClass('invisible');
			accountSettings.changeSkin(skin);
		});
	});
	require(['hooks'], function (hooks) {
		hooks.on('action:skin.change', function (hookData) {
			$('[component="skinSpinner"]').addClass('invisible');
		});
	});
	$(window).on('action:ajaxify.start', function () {
		require(['bootstrap'], function (boostrap) {
			const offcanvas = boostrap.Offcanvas.getInstance('#offcanvas');
			if (offcanvas) {
				offcanvas.hide();
			}
		});
	});

});