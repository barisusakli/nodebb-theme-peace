"use strict";

/*globals ajaxify, config, utils, NProgress*/

$(document).ready(function() {
	$('#skinSwitcher').on('change', function () {
		const skin = $(this).val();
		require(['forum/account/settings'], function (accountSettings) {
			$('#skinSpinner').removeClass('invisible');
			accountSettings.changeSkin(skin);
		});
	});
	require(['hooks'], function (hooks) {
		hooks.on('action:skin.change', function (hookData) {
			$('#skinSpinner').addClass('invisible');
		});
	});
});