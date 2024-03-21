<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" {{{if languageDirection}}}data-dir="{languageDirection}" style="direction: {languageDirection};"{{{end}}}>
<head>
	<title>{browserTitle}</title>
	{{{each metaTags}}}{function.buildMetaTag}{{{end}}}
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/client{{{if bootswatchSkin}}}-{bootswatchSkin}{{{end}}}{{{ if (languageDirection=="rtl") }}}-rtl{{{ end }}}.css?{config.cache-buster}" />
	{{{each linkTags}}}{function.buildLinkTag}{{{end}}}

	<script>
		var config = JSON.parse('{{configJSON}}');
		var app = {
			user: JSON.parse('{{userJSON}}')
		};

		document.documentElement.style.setProperty('--panel-offset', `${localStorage.getItem('panelOffset') || 0}px`);
	</script>

	{{{if useCustomHTML}}}
	{{customHTML}}
	{{{end}}}
	{{{if useCustomCSS}}}
	<style>{{customCSS}}</style>
	{{{end}}}
</head>

<body class="{bodyClass} skin-{{{if bootswatchSkin}}}{bootswatchSkin}{{{else}}}noskin{{{end}}}">

	<!-- IMPORT partials/offcanvas.tpl -->

	<!-- IMPORT partials/mobile-nav.tpl -->
	<main id="panel" class="slideout-panel container">
		<div class="d-flex gap-3 flex-nowrap">
			<div class="d-none d-lg-block" style="max-width: 200px; min-width: 200px;">
				<div class="sticky-top pt-4">
				<!-- IMPORT partials/sidebar.tpl -->
				</div>
			</div>
			<div class="flex-grow-1" style="min-width: 0px;">
				<div class="container px-0 px-lg-2 pt-3 pt-lg-4" id="content">
				<!-- IMPORT partials/noscript/warning.tpl -->
				<!-- IMPORT partials/noscript/message.tpl -->
