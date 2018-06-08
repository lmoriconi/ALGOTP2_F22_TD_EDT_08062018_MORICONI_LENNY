<label>Day</label>
	<select id="sDay" name="selectDay">
		<?php
			$day = "SELECT LIBELLE_J FROM JOUR ORDER BY NUM_J ASC";
			foreach($connexion->query($day) as $row)
				echo "<option>".$row['LIBELLE_J']."</option>\n\t\t\t\t";
		?>
	</select>