<?php	
	$sql = "SELECT LIBELLE_J FROM JOUR";

	if($connexion->query($sql)){
		
		$week = $connexion->query($sql);

		while($day = $week->fetch()){
			echo "<th>" . $day['LIBELLE_J'] . "</th>\n\t\t\t\t";
		}

		$week->closeCursor();

	}
?>