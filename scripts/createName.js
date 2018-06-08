function createName(){
//BUT : écrit le libellé du cours à ajouter
//ENTREE : libellés de la matière et du type de cours
//SORTIE : libellé du cours dans bdd

	var subject = document.getElementById("sSubject").value;
	var type = document.getElementById("sType").value;

	document.getElementById("lCrs").value = subject + " " + type;
}