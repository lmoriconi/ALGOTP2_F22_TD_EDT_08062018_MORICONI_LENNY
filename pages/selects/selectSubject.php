<label>Subject</label>
	<select id="sSubject" name="selectSubject">
		<?php
			$subject = "SELECT DISTINCT LIBELLE_M FROM MATIERE ORDER BY LIBELLE_M ASC";
			foreach($connexion->query($subject) as $row)
				echo "<option>".$row['LIBELLE_M']."</option>\n\t\t\t\t";
		?>
	</select>