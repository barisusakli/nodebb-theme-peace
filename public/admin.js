
'use strict';

define('admin/plugins/peace', ['settings'], function (Settings) {
	const ACP = {};

	ACP.init = function () {
		Settings.load('peace', $('.peace-settings'));

		$('#save').on('click', function () {
			Settings.save('peace', $('.peace-settings'));
		});
	};

	return ACP;
});