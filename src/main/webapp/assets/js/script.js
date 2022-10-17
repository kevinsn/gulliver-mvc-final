function habilitarCampos() {
   	const FORM_ELEMENTS = document.getElementById('dados-conta').elements;
	for (i = 0; i < FORM_ELEMENTS.length; i++) {
	    FORM_ELEMENTS[i].disabled = !FORM_ELEMENTS[i].disabled;
	}
}