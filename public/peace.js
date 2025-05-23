'use strict';

$(document).ready(function () {
	setupNProgress();

	$('[component="skinSwitcher"]').on('click', '.dropdown-item', function () {
		const skin = $(this).attr('data-value');
		$('[component="skinSwitcher"] .dropdown-item .fa-check').addClass('invisible');
		$('[component="skinSwitcher"] i.fa-paintbrush').addClass('fa-fade');
		$(this).find('.fa-check').removeClass('invisible');
		require(['forum/account/settings'], function (accountSettings) {
			accountSettings.changeSkin(skin);
		});
	});

	require(['hooks'], function (hooks) {
		hooks.on('action:skin.change', function () {
			$('[component="skinSwitcher"] i.fa-paintbrush').removeClass('fa-fade');
		});

		hooks.on('action:notification.updateCount', function (payload) {
			$('[component="notification/badge"]')
				.text(payload.count)
				.toggleClass('hidden', !payload.count);
		});
		hooks.on('action:chat.updateCount', function (payload) {
			$('[component="chat/badge"]')
				.text(payload.count)
				.toggleClass('hidden', !payload.count);
		});
		hooks.on('action:unread.updateCount', function (payload) {
			const href = $('a[href="' + config.relative_path + payload.url + '"].navigation-link');
			const el = href.parent().find('[component="nav/content/badge"]');
			if (el.length) {
				el.text(payload.count)
					.toggleClass('hidden', !payload.count);
				$('[component="unread/badge"]')
					.text(payload.count)
					.toggleClass('hidden', !payload.count);
			}
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

	function setupNProgress() {
		require(['nprogress'], function (NProgress) {
			if (NProgress) {
				$(window).on('action:ajaxify.start', function () {
					NProgress.set(0.7);
				});

				$(window).on('action:ajaxify.end', function () {
					NProgress.done();
				});
			}
		});
	}
});