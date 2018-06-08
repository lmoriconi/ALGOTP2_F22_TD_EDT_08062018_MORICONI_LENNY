function createMail(){
//BUT : écrit l'adresse mail Ludus de la personne à ajouter
//ENTREE : nom et prénom de la personne
//SORTIE : adresse mail écrite dans l'input text correspondant

	var lastname = document.getElementById("lName").value;
	var firstname = document.getElementById("fName").value[0];
	
	if(lastname && firstname)
		document.getElementById("sMail").value = firstname.toLowerCase() + "." + lastname.toLowerCase() + "@ludus-academie.com";
}