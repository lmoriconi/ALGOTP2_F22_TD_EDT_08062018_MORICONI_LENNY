function changeGroup(){
//BUT : active/désactive options dans selectGroup
//ENTREE : classe active sélectionnée dans selectClass
//SORTIE : options activées/désactivées dans selectGroup

	var currentCls = document.getElementById("sClass").value;
	var selectGrp = document.getElementById("sGroup");

	//désactive/active options selon classe sélectionnée
	for(var i=0; i<selectGrp.length; i++){
		if(currentCls == selectGrp.options[i].text.substring(0, 2))
			selectGrp.options[i].disabled = false
		else
			selectGrp.options[i].disabled = true;
	}

	i = 0;

	//sélectionne le premier groupe de la classe sélectionnée
	while(selectGrp.options[i].disabled == true){
		if(selectGrp.options[i].disabled == true)
			i++;
	}
	selectGrp.options[i].selected = true;
}