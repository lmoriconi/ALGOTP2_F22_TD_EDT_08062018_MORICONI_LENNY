<!DOCTYPE html>
<html>
	
	<head>
		<link rel="stylesheet" href="../../css/style.css">
		<title>Ajouter un élève</title>
		<meta charset="utf-8">
	</head>

	<body onload="changeGroup()">

		<?php
			require_once "../header.php";
			require_once "../nav.php";

			require_once "../connect.php";
			
			$connexion = connect_bd();
		?>

		<main>

			<h3>ADD A STUDENT</h3>

			<div class="container">
				<form id="fStudent" name="formStudent" method="request" action="#">
					<?php
						require_once "../selects/selectClass.php";
						require_once "../selects/selectGroup.php";
					?>
					<label>Last Name</label>
						<input type="text" id="lName" name="lastname" placeholder="Last Name" onchange="createMail()" required autofocus>
					<label>First Name</label>
						<input type="text" id="fName" name="firstname" placeholder="Fisrt Name" onchange="createMail()" required>
					<label>Mail</label>
						<input type="email" id="sMail" name="studentMail" placeholder="" readonly required><br>
					<input type="submit" id="subBtn" value="Send">
				</form>
			</div>

			<?php
				require_once "../requests/addStudent.php";
			?>

		</main>

		<?php 
			require_once "../footer.php";
		?>

		<script src="../../scripts/createMail.js" type="text/javascript"></script>
		<script src="../../scripts/changeGroup.js" type="text/javascript"></script>

	</body>

</html>