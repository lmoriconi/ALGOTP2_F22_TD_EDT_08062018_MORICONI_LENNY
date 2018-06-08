<?php
	if(isset($_REQUEST["lastname"])){
		//$sql = "SELECT COUNT(NUM_ELE) FROM ELEVE";
		
		/*if($connexion->query($sql)){
			$connexion->query($sql);
			echo "Elève ajouté !";
		}else echo "Nope !";*/
		
		$sql = "INSERT INTO ELEVE (NUM_ELE, NUM_CLA, NUM_G, NOM_ELE, PRENOM_ELE, MAIL_ELE) VALUES ('N1', '" . $_REQUEST["selectClass"] . "', '" . $_REQUEST["selectGroup"] . "', '" . $_REQUEST["lastname"] . "', '" . $_REQUEST["firstname"] . "', '" . $_REQUEST["studentMail"] . "');";

		//echo $nbStudent;

		if($connexion->query($sql)){
			$connexion->query($sql);
			echo "<p>Elève ajouté !</p>";
		}else echo "<p>Nope !</p>";
	}
?>