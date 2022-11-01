		</div><!-- /.container#content -->
	</div> <!-- div.col-12 -->
</div> <!-- div.row -->
</main>
<!-- IF !isSpider -->
<div component="toaster/tray" class="alert-window position-fixed" style="width: 300px; right: 20px; bottom: 0px; z-index: 1;">
	<div id="reconnect-alert" class="alert alert-dismissible alert-warning clearfix hide" component="toaster/toast">
		<button type="button" class="btn-close float-end" data-bs-dismiss="alert" aria-hidden="true"></button>
		<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
	</div>
</div>
<!-- ENDIF !isSpider -->

<!-- IMPORT partials/footer/js.tpl -->
</body>
</html>
