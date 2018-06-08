<?php
	echo "<table>\n\t\t\t";
		echo "<tr>\n\t\t\t\t";
			echo "<th></th>\n\t\t\t\t";
			if(isset($_GET["selectGroup"]))
				require_once "requests/getDays.php";
			else{
				if(isset($_GET["selectDay"]))
					require_once "requests/getGroups.php";
			}
			
			require_once "requests/getHours.php";
		echo "\t</tr>\n\t\t";
	echo "</table>";
?>