'use strict';

const _ = require.main.require('lodash');
const meta = require.main.require('./src/meta');
const user = require.main.require('./src/user');

const library = module.exports;

library.init = async function (params) {
	const { router, middleware } = params;
	const routeHelpers = require.main.require('./src/routes/helpers');
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

library.addUserToTopic = async function (hookData) {
	if (hookData.req.user) {
		const userData = await user.getUserData(hookData.req.user.uid);
		hookData.templateData.loggedInUser = userData;
	} else {
		hookData.templateData.loggedInUser = {
			uid: 0,
			username: '[[global:guest]]',
			picture: user.getDefaultAvatar(),
			'icon:text': '?',
			'icon:bgColor': '#aaa',
		};
	}
	return hookData;
};

library.filterMiddlewareRenderHeader = async function (hookData) {
	const userSettings = await user.getSettings(hookData.req.uid);

	const lightSkins = [
		'default', 'cerulean', 'cosmo', 'flatly', 'journal', 'litera',
		'lumen', 'lux', 'materia', 'minty', 'morph', 'pulse', 'quartz', 'sandstone',
		'simplex', 'sketchy', 'spacelab', 'united',	'yeti', 'zephyr',
	];
	const darkSkins = [
		'cyborg', 'darkly', 'slate', 'solar', 'superhero', 'vapor',
	];
	function parseSkins(skins) {
		skins = skins.map(skin =>({
			name: _.capitalize(skin),
			value: skin === 'default' ? '' : skin,
		}));
		skins.forEach((skin) => {
			skin.selected = skin.value === userSettings.bootswatchSkin;
		});
		return skins
	}

	hookData.templateData.bootswatchSkinOptions = {
		light: parseSkins(lightSkins),
		dark: parseSkins(darkSkins),
	};
	hookData.templateData.currentBSSkin = _.capitalize(hookData.templateData.bootswatchSkin);
	return hookData;
};
