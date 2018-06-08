<!DOCTYPE html>
<html>

	<head>
		<link rel="stylesheet" href="../css/style.css">
		<title>Emploi du temps</title>
		<meta charset="utf-8">
	</head>
	
	<body>
		
		<?php
			require_once "header.php";
			require_once "nav.php";

			require_once "connect.php";
			
			$connexion = connect_bd();
		?>

		<main>
			
			<h3>SCHEDULE BY</h3>

			<form method="get" action="edt.php" name="formGroup" id="fGroup">
				<?php
					require_once "selects/selectGroup.php";
				?>
				<br><input type="submit" value="Display" name="btnAffich" class="btn">
			</form>

			<p>or</p>

			<form method="get" action="edt.php" name="formDay" id="fDay">
				<?php
					require_once "selects/selectDay.php";
				?>
				<br><input type="submit" value="Display" name="btnAffich2" class="btn" >
			</form>

			<?php
				if(isset($_GET['selectDay']) || isset($_GET['selectGroup']))
					require_once "createEdt.php";
			?>

		</main>
		
		<?php
			require_once "footer.php";
		?>
	
	</body>

</html>