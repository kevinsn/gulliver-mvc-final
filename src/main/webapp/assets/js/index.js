
function geoFindMe() {

    const status = document.querySelector('#status');
    const mapLink = document.querySelector('#map-link');
    


    mapLink.href = '';

    mapLink.textContent = '';


    function success(position) {
    const latitude  = position.coords.latitude;
    const longitude = position.coords.longitude;


    status.textContent = '';
    mapLink.href = `https://www.openstreetmap.org/#map=18/${latitude}/${longitude}`;
    mapLink.textContent = `Latitude: ${latitude} °, Longitude: ${longitude} °`;
  }

  function error() {
    status.textContent = 'Não é possivel localizá-lo';
  }

  if (!navigator.geolocation) {
    status.textContent = 'Geolocalização não é suportando em seu navegador';
  } else {
    status.textContent = 'Carregando…';
    navigator.geolocation.getCurrentPosition(success, error);
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

function myFunction() {
  var element = document.body;
  element.classList.toggle("dark-mode"); 
  var element2 = document.getElementById("collapseOne");
  element2.classList.toggle("dark-mode");  
  var element3 = document.getElementById("sec-1");
  element3.classList.toggle("dark-mode");  
  var element4 = document.getElementById("servicos1");
  element4.classList.toggle("dark-mode");    
  var element5 = document.getElementById("feature");
  element5.classList.toggle("dark-mode");  
  
}

document.querySelector('#find').addEventListener('click', geoFindMe);
