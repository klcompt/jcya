<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
		<title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<script type="text/javascript" src="swfobject.js"></script>
		<script type="text/javascript">
			var flashvars = {};
			flashvars.xmlFile = "images.xml";
			flashvars.spacing = "5";
			flashvars.smoothScrolling = "true";
			flashvars.expandingDirection= "center";
			flashvars.backgroundColor = "0xeeeeee";
			flashvars.dockWidth = "300";
			flashvars.dockHeight = "300"
			flashvars.autoScrollSpeed = "5";
			flashvars.minThumbWidth = "80";
			flashvars.minThumbHeight = "80";
			flashvars.maxThumbWidth = "150";
			flashvars.maxThumbHeight = "150";
			flashvars.imagesInfluence = "500";
			flashvars.fontSize = "14";
			<?php
			if(count($_GET) > 0 || count($_POST) > 0) {
				$phpFlashVars = "";
				foreach ($_GET as $var => $value) {
					$phpFlashVars .= 'flashvars.'.$var.'="'.$value.'";';
				}
				foreach ($_POST as $var => $value) {
					$phpFlashVars .= 'flashvars.'.$var.'="'.$value.'";';
				}
			}
			print($phpFlashVars);
			?>
			var params = {};
			params.scale = "noscale";
			params.salign = "tl";
			params.wmode = "transparent";
			var attributes = {};
			swfobject.embedSWF("dockmenu.swf", "DockMenuDiv", "300", "300", "9.0.0", false, flashvars, params, attributes);
		</script>
	</head>
	<body>
		<div id="DockMenuDiv">
			<a href="http://www.adobe.com/go/getflashplayer">
				<img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" />
			</a>
		</div>
	</body>
</html>