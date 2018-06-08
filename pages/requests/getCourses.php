<?php	
	if(!isset($group))
		$group = "F11";		//default
	$courseExists = false;

	if(isset($_GET["selectGroup"])){
		$group = $_GET["selectGroup"];
		$sql3 = "SELECT LIBELLE_CRS FROM COURS WHERE NUM_H = (SELECT NUM_H FROM TRANCHE_HORAIRE WHERE HEURE_DEB = '" . $hour['HEURE_DEB'] . "') AND NUM_J = (SELECT NUM_J FROM JOUR WHERE LIBELLE_J = '" . $day['LIBELLE_J'] . "') AND NUM_G = (SELECT NUM_G FROM GROUPE WHERE NUM_G = '" . $group . "');";
	}
	else{
		if(isset($_GET["selectDay"])){
			$day = $_GET["selectDay"];
			$sql3 = "SELECT LIBELLE_CRS, NUM_S FROM COURS WHERE NUM_H = (SELECT NUM_H FROM TRANCHE_HORAIRE WHERE HEURE_DEB = '" . $hour['HEURE_DEB'] . "') AND NUM_J = (SELECT NUM_J FROM JOUR WHERE LIBELLE_J = '" . $day . "') AND NUM_G = (SELECT NUM_G FROM GROUPE WHERE NUM_G = '" . $group['NUM_G'] . "');";
		}
	} 

	echo "\n\t\t\t\t\t\t<td>";
	
	if($connexion->query($sql3)){
		
		$schedule = $connexion->query($sql3);

		while($course = $schedule->fetch()){
			$courseExists = true;
			if($course){
				echo "<p>";
				echo $course["LIBELLE_CRS"];
				echo "</p>";
			}
		}
		
		if($courseExists == false)
			echo "<p>N/A</p>";
		else
			$courseExists = false;
		
		$schedule->closeCursor();
		
	}

	echo "</td>\n\t\t\t\t";

?>