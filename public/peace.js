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

		hooks.on('action:notification.updateCount', function (payload) {
			$('[component="notification/badge"]')
				.text(payload.count)
				.toggleClass('hidden', !payload.count);
		});
		hooks.on('action:chat.updateCount', function (payload) {
			console.log('update chat count', payload);
			$('[component="chat/badge"]')
				.text(payload.count)
				.toggleClass('hidden', !payload.count);
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