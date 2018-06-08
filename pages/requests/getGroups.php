<?php	
	$sql4 = "SELECT NUM_G FROM GROUPE";

	if($connexion->query($sql4)){
		
		$school = $connexion->query($sql4);

		while($group = $school->fetch()){
			echo "<th>" . $group['NUM_G'] . "</th>\n\t\t\t\t";
		}

		$school->closeCursor();

	}
?>