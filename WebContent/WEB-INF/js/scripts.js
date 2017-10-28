//Calculate Total on Form
function calculatePrice(getSudoWashForm){
	//to get selected data
	var elt = document.getElementById("colorItem");
	var colors = elt.options[elt.selectedIndex].value;
	
	var elt = document.getElementById("blackItem");
	var blacks = elt.options[elt.selectedIndex].value;
	
	var elt = document.getElementById("whiteItem");
	var whites = elt.options[elt.selectedIndex].value;
	
	//converting data to integers
	colors = parseInt(colors);
	blacks = parseInt(blacks);
	whites = parseInt(whites);
	
	//calculate the total value
	var total = colors + blacks + whites;
	
	document.getElementById("ExitPrice").value=total;
}
