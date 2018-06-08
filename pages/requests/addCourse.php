<?php
	if(isset($_REQUEST["libelleCrs"])){
		
		$sql = "INSERT INTO COURS (NUM_G, NUM_S, NUM_M, NUM_T, NUM_H, NUM_J, LIBELLE_CRS) VALUES ('" .
					$_REQUEST["selectGroup"] . "', (SELECT NUM_S FROM SALLE WHERE LIBELLE_S = '" .
					$_REQUEST["selectRoom"] . "'), (SELECT NUM_M FROM MATIERE WHERE LIBELLE_M = '" .
					$_REQUEST["selectSubject"] . "'), (SELECT NUM_T FROM TYPE WHERE LIBELLE_T = '" .
					$_REQUEST["selectType"] . "'), (SELECT NUM_H FROM TRANCHE_HORAIRE WHERE HEURE_DEB = '" .
					$_REQUEST["selectTime"] . "'), (SELECT NUM_J FROM JOUR WHERE LIBELLE_J = '" .
					$_REQUEST["selectDay"] . "'), '" .
					$_REQUEST["libelleCrs"] . "');";

		if($connexion->query($sql)){
			$connexion->query($sql);
			echo "<p>Cours ajouté !</p>";
		}else echo "<p>Nope !</p>";
	}
?>