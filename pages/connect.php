<?php
	//on définit des constantes => define('NOM', "valeur");
	define('SERVER', "localhost");
	define('BASE', "edt");
	define('USER', "root");
	define('PASSWD', "");

	//chaîne de connexion
	function connect_bd(){
		$dsn = "mysql:dbname=".BASE.";host=".SERVER;
		try{
			$connexion = new PDO($dsn, USER, PASSWD);
		}
		catch(PDOexception $e){
			printf("Echec de la connexion : %s\n", $e->getMessage());
			exit();
		}
		return $connexion;
	}
?>