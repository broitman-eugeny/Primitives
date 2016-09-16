<?php
	$USER="root";
	$HOST="localhost";
	$PASSWORD="root";
	$DB="primitives";
	
	$link=mysqli_connect($HOST, $USER, $PASSWORD,$DB) or die("error");
	
	mysqli_query($link,"set names 'utf8';") or die(mysql_error());	
?>