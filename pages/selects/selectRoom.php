<label>Room</label>
	<select id="sRomm" name="selectRoom">
		<?php
			$room = "SELECT LIBELLE_S FROM SALLE ORDER BY NUM_S ASC";
			foreach($connexion->query($room) as $row)
				echo "<option>".$row['LIBELLE_S']."</option>\n\t\t\t\t";
		?>
	</select>