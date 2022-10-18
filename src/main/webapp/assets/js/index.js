
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

document.querySelector('#find').addEventListener('click', geoFindMe);
