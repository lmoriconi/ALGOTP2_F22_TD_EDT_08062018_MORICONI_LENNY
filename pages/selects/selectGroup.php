<label>Group</label>
	<select id="sGroup" name="selectGroup">
		<?php
			$group = "SELECT NUM_G FROM GROUPE ORDER BY NUM_G ASC";
			foreach($connexion->query($group) as $row)
				echo "<option>".$row['NUM_G']."</option>\n\t\t\t\t";
		?>
	</select>