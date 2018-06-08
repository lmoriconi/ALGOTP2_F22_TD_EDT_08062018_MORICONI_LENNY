<label>Type</label>
	<select id="sType" name="selectType">
		<?php
			$type = "SELECT LIBELLE_T FROM TYPE ORDER BY NUM_T ASC";
			foreach($connexion->query($type) as $row)
				echo "<option>".$row['LIBELLE_T']."</option>\n\t\t\t\t";
		?>
	</select>