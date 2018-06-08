<!DOCTYPE html>
<html>

	<head>
		<link rel="stylesheet" href="../../css/style.css">
		<title>Ajouter un cours</title>
		<meta charset="utf-8">
	</head>

	<body>

		<?php
			require_once "../header.php";
			require_once "../nav.php";
		
			require_once "../connect.php";
			
			$connexion = connect_bd();
		?>

		

		<main>

			<h3>ADD A COURSE</h3>
			
			<div class="container">
				<form id="fCourse" name="formCourse" method="request" action="#">
					<?php
						require_once "../selects/selectGroup.php";
						require_once "../selects/selectRoom.php";
						require_once "../selects/selectSubject.php";
						require_once "../selects/selectType.php";
						require_once "../selects/selectTime.php";
						require_once "../selects/selectDay.php";
					?><br/>
					<input type="text" id="lCrs" name="libelleCrs" readonly required hidden><br/>
					<input type="submit" id="subBtn" value="Send" onclick="createName()">
				</form>
			</div>

			<?php
				require_once "../requests/addCourse.php";
			?>
			
		</main>

		<?php 
			require_once "../footer.php";
		?>

		<script src="../../scripts/createName.js" type="text/javascript"></script>

	</body>
	
</html>