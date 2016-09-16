<?php
	if(!$getID=$_GET[id])//значение переданного идентификатора
	{
		echo "Выберите функцию, для которой желаете найти первообразную";
	}
	else
	{
		$qPrimData=mysqli_query($link, "select * from primdata where primID=$getID") or die ("no");//получаем таблицу со строкой содержащей переданный идентификатор
		$func=mysqli_fetch_assoc($qPrimData);//Строка таблицы primdata
?>
	<div id="upRightPanel">
		<h2>Функция</h2>
		<img id="img1" src="/img/<?php echo $func[funcPict]; ?>" /><!--имя файла картинки функции-->
	</div>
	<div id="dounRightPanel">
		<h2>Первообразная функции</h2>
		<img id="img2" src="/img/<?php echo $func[primPict]; ?>" /><!--имя файла картинки первообразной-->
	</div>
<?php } ?>