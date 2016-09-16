<?php 
	require_once("connect.php"); 
	
	$qGroupes=mysqli_query($link, "select * from groupes") or die ("no");
	$rowsGroupes=mysqli_num_rows($qGroupes);
	
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<script type="text/javascript" src="jquery.js">			
		</script>
		<title>Первообразные</title>
	</head>
	<body>
		<h1>Первообразные</h1>
		<ul id="leftPanel">
			<li>
				<a>
					Основные
				</a>
				<ul>
					<?php
						$qPrimData=mysqli_query($link, "select * from primdata where groupID=1") or die ("no");
						$rowsPrimData=mysqli_num_rows($qPrimData);
						for ($i=0;$i<$rowsPrimData;$i++)
						{
							$func=mysqli_fetch_assoc($qPrimData);//Строка таблицы primdata
					?>
						<li><a href="index.php?id=<?php echo $func[primID]; ?>" <?php if($i==$rowsPrimData-1)echo "class=\"brd\""; ?>><?php echo $func[funcText]; ?></a></li>
					<?php } ?>
				</ul> 
			</li> 
			<?php
				$grp=mysqli_fetch_assoc($qGroupes);//Пропускаем строку "Основные"
				for ($i=2;$i<=$rowsGroupes;$i++)
				{
					$grp=mysqli_fetch_assoc($qGroupes);//Строка таблицы primdata
			?>
				<li>
					<a <?php if($i==$rowsGroupes)echo "class=\"brd\""; ?>><!--установка бордюра для нижнего меню снизу-->
						Первообразные функций вида: <?php echo $grp[groupName]; ?>
					</a>
					<ul>
						<?php
							$qPrimData=mysqli_query($link, "select * from primdata where groupID=$i") or die ("no");
							$rowsPrimData=mysqli_num_rows($qPrimData);
							for ($j=0;$j<$rowsPrimData;$j++)
							{
								$func=mysqli_fetch_assoc($qPrimData);//Строка таблицы primdata
						?>
							<li><a href="index.php?id=<?php echo $func[primID]; ?>" <?php if($j==$rowsPrimData-1)echo "class=\"brd\""; ?>><?php echo $func[funcText]; ?></a></li>
						<?php } ?>
					</ul>
				</li>
			<?php } ?>
		</ul>
		<script type="text/javascript">
			$("document").ready(function(){$("img").show("slow");});//устанавливает плавное выкатывание картинок после загрузки документа
		</script>
		<div id="rightPanel">
			<?php require("script.php"); ?><!--Вывод картинок функции и ее первообразной-->
		</div>
		</body>
</html>