function habilitarCampos() {
   	const FORM_ELEMENTS = document.getElementById('dados-conta').elements;
	for (i = 0; i < FORM_ELEMENTS.length; i++) {
	    FORM_ELEMENTS[i].disabled = !FORM_ELEMENTS[i].disabled;
	}
}

(new IntersectionObserver(function(e,o){
    if (e[0].intersectionRatio > 0){
        document.documentElement.removeAttribute('class');
        document.getElementById("logo")
    } else {
        document.documentElement.setAttribute('class','stuck');
    };
})).observe(document.querySelector('.trigger'));