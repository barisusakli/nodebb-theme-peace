'use strict';

const _ = require.main.require('lodash');
const meta = require.main.require('./src/meta');
const user = require.main.require('./src/user');

const library = module.exports;

library.init = async function (params) {
	const { router } = params;
	const routeHelpers = require.main.require('./src/routes/helpers');
	routeHelpers.setupAdminPageRoute(router, '/admin/plugins/peace', function (req, res, next) {
		res.render('admin/plugins/peace', {
			title: 'Peace Theme',
		});
	});
};


library.defineWidgetAreas = async function (areas) {
	const locations = ['header', 'sidebar', 'footer'];
	const templates = [
		'categories.tpl', 'category.tpl', 'topic.tpl', 'users.tpl',
		'unread.tpl', 'recent.tpl', 'popular.tpl', 'top.tpl', 'tags.tpl', 'tag.tpl',
		'login.tpl', 'register.tpl',
	];
	function capitalizeFirst(str) {
		return str.charAt(0).toUpperCase() + str.slice(1);
	}
	templates.forEach((template) => {
		locations.forEach((location) => {
			areas.push({
				name: `${capitalizeFirst(template.split('.')[0])} ${capitalizeFirst(location)}`,
				template: template,
				location: location,
			});
		});
	});

	areas = areas.concat([
		{
			name: 'Account Header',
			template: 'account/profile.tpl',
			location: 'header',
		},
	]);
	return areas;
};

library.filterConfigGet = async function (config) {
	const settings = await meta.settings.get('peace');
	config.enableQuickReply = settings.enableQuickReply === 'on';
	return config;
};

library.addAdminNavigation = async function (header) {
	header.plugins.push({
		route: '/plugins/peace',
		icon: 'fa-paint-brush',
		name: 'Peace Theme'
	});
	return header;
};

library.filterMiddlewareRenderHeader = async function (hookData) {
	const userSettings = await user.getSettings(hookData.req.uid);

	const defaultSkin = _.capitalize(meta.config.bootswatchSkin) || '[[user:no-skin]]';
	const defaultSkins = [
		{ name: `[[user:default, ${defaultSkin}]]`, value: '', selected: userSettings.bootswatchSkin === '' },
		{ name: '[[user:no-skin]]', value: 'noskin', selected: userSettings.bootswatchSkin === 'noskin' },
	];
	const lightSkins = [
		'cerulean', 'cosmo', 'flatly', 'journal', 'litera',
		'lumen', 'lux', 'materia', 'minty', 'morph', 'pulse', 'sandstone',
		'simplex', 'sketchy', 'spacelab', 'united', 'yeti', 'zephyr',
	];
	const darkSkins = [
		'cyborg', 'darkly', 'quartz', 'slate', 'solar', 'superhero', 'vapor',
	];
	function parseSkins(skins) {
		skins = skins.map(skin => ({
			name: _.capitalize(skin),
			value: skin,
		}));
		skins.forEach((skin) => {
			skin.selected = skin.value === userSettings.bootswatchSkin;
		});
		return skins;
	}

	hookData.templateData.bootswatchSkinOptions = {
		default: defaultSkins,
		light: parseSkins(lightSkins),
		dark: parseSkins(darkSkins),
	};
	hookData.templateData.currentBSSkin = _.capitalize(hookData.templateData.bootswatchSkin);
	return hookData;
};
