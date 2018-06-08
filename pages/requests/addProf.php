<?php
	if(isset($_REQUEST["lastname"])){
		
		$sql = "INSERT INTO ENSEIGNANT (NUM_ENS, NOM_ENS, PRENOM_ENS, MAIL_ENS) VALUES ('EN1', '" . $_REQUEST["lastname"] . "', '" . $_REQUEST["firstname"] . "', '" . $_REQUEST["profMail"] . "');";

		//echo $nbStudent;

		if($connexion->query($sql)){
			$connexion->query($sql);
			echo "<p>Prof ajouté !</p>";
		}else echo "<p>Nope !</p>";
	}
?>