<?php	
	$sql2 = "SELECT HEURE_DEB FROM TRANCHE_HORAIRE";

	if($connexion->query($sql2)){
		
		$time = $connexion->query($sql2);

		if(isset($_GET["selectGroup"])){
			if($connexion->query($sql)){
			
				while($hour = $time->fetch()){
					echo "\n\t\t\t\t<tr>\n\t\t\t\t\t";
						echo "<th>" . $hour['HEURE_DEB'] . "</th>";

						$week = $connexion->query($sql);
						
						while($day = $week->fetch()){
							require "requests/getCourses.php";
						}

						$week->closeCursor();

					echo "</tr>\n\t\t";
				}
				
				$time->closeCursor();
			}
		}
		else if(isset($_GET["selectDay"])){
			if($connexion->query($sql4)){

				while($hour = $time->fetch()){
					echo "\n\t\t\t\t<tr>\n\t\t\t\t\t";
						echo "<th>" . $hour['HEURE_DEB'] . "</th>";

						$school = $connexion->query($sql4);

						while($group = $school->fetch()){
							require "requests/getCourses.php";
						}

						$school->closeCursor();

					echo "</tr>\n\t\t";
				}
			}
		}
	}
?>