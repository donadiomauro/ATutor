<?php
/****************************************************************/
/* ATutor														*/
/****************************************************************/
/* Copyright (c) 2002-2003 by Greg Gay & Joel Kronenberg        */
/* Adaptive Technology Resource Centre / University of Toronto  */
/* http://atutor.ca												*/
/*                                                              */
/* This program is free software. You can redistribute it and/or*/
/* modify it under the terms of the GNU General Public License  */
/* as published by the Free Software Foundation.				*/
/****************************************************************/

if (!isset($_SERVER['PHP_AUTH_USER'], $_SERVER['PHP_AUTH_PW'])) {
	header('WWW-Authenticate: Basic realm="ATutor"');
	header('HTTP/1.0 401 Unauthorized');
	exit;
} else if (!(md5($_SERVER['PHP_AUTH_USER']) == '7e5fc7d437d14cc47e86bf8f561762b9') 
		&& !(md5($_SERVER['PHP_AUTH_PW']) == 'ae376154acfdde0d555e9ad7a6891123')) {
	echo 'Access denied.';
	exit;
}

phpinfo();
?>