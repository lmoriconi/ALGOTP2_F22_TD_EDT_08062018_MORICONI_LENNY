<label>Time</label>
	<select id="sTime" name="selectTime">
		<?php
			$time = "SELECT HEURE_DEB FROM TRANCHE_HORAIRE ORDER BY NUM_H ASC";
			foreach($connexion->query($time) as $row)
				echo "<option>".$row['HEURE_DEB']."</option>\n\t\t\t\t";
		?>
	</select>