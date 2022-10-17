const today = new Date()
const tomorrow = new Date(today)
tomorrow.setDate(tomorrow.getDate() + 1)
async function GetHotelsByPosition(latitude, longitude) {
  const options = {
      method: 'GET',
      url: 'https://booking-com.p.rapidapi.com/v1/hotels/search-by-coordinates',
      params: {
        order_by: 'popularity',
        adults_number: '2',
        units: 'metric',
        room_number: '1',
        checkout_date: formatDate(tomorrow),
        filter_by_currency: 'BRL',
        locale: 'pt-br',
        checkin_date: formatDate(today),
        children_number: '2',
        children_ages: '5,0',
        categories_filter_ids: 'class::2,class::4,free_cancellation::1',
        page_number: '0',
        include_adjacency: 'true',
        latitude,
        longitude,
      },
      headers: {
        'X-RapidAPI-Key': '98d9c7e6ebmshdd5a1ea01f2ec3bp12a797jsn2e9a4bf047ed',
        'X-RapidAPI-Host': 'booking-com.p.rapidapi.com'
      }
    };

    const response = await axios.request(options)
    return response.data;
}
	function formatDate(date) {
     month = '' + (date.getMonth() + 1),
     day = '' + date.getDate(),
     year = date.getFullYear();

    if (month.length < 2)
        month = '0' + month;
    if (day.length < 2)
        day = '0' + day;

    return [year, month, day].join('-');
}
// Função que encapsula getCurrenntPosition em uma promise para poder ser
// utilizada com async/await
	async function getCurrentLocation() {
  	return new Promise(function(resolve, reject) {
  	navigator.geolocation.getCurrentPosition(function(pos){
    resolve(pos.coords);
    }) 
  });
  
  
}

// Função principal que pega os dados do hotel usando a posição atual.
async function getHotelCoordinates(){
const position = await getCurrentLocation()
const data = await GetHotelsByPosition(position.latitude, position.longitude);
// console.log(data)
return data

}


async function getHotelId(indice){
  const data = await getHotelCoordinates()
  // console.log(data.result[0].hotel_id)
  return data.result[indice].hotel_id
}
// Função para atualizar os hoteis proximos, ele atualiza os cards com imagem e o Nome correto
async function getHotelName(){
  let i = 0;
    data = await getHotelCoordinates()
    while(i < 3){
    // console.log(response.data.result[0].hotel_name);
        const hotel_name = data.result[i].hotel_name_trans;
        const picture = data.result[i].max_photo_url;
        const rate = data.result[i].review_score;
        const min_price = data.result[i].min_total_price;
        const ribbon = data.result[i].ribbon_text
        // console.log(hotel_name)
        let h5 = document.createElement('h5');
        let text = h5.appendChild(document.createTextNode(hotel_name));
        document.getElementsByClassName('card-title')[i].appendChild(h5);
        document.getElementsByClassName('card-price')[i].appendChild(document.createTextNode("R$" + min_price));
        document.getElementsByClassName('card-price')[i].style.setProperty('font-size', '18px')
        document.getElementsByClassName('aval-stars')[i].appendChild(document.createTextNode(rate));
        var img = document.getElementsByClassName('card-img-top')[i].src = picture;
        i++;
    }
           
}

async function getHotelDescription(hotel_id){
  const options = {
    method: 'GET',
    url: 'https://booking-com.p.rapidapi.com/v1/hotels/description',
    params: {hotel_id: hotel_id, locale: 'pt-br'},
    headers: {
      'X-RapidAPI-Key': '98d9c7e6ebmshdd5a1ea01f2ec3bp12a797jsn2e9a4bf047ed',
      'X-RapidAPI-Host': 'booking-com.p.rapidapi.com'
    }
  };

  const response = await axios.request(options)
  
  return response.data;

}



//Função que Cria o modal com o Saiba mais dos hoteis
async function getMore(id){
  $('#meuModal').modal('toggle')
  const hotel_id = await getHotelId(id);
  
  const data = await getHotelDescription(hotel_id)
  const hotel_data = await getHotelCoordinates()
  // console.log(data.description)
  
  let p = document.createElement('p');
  let text = p.appendChild(document.createTextNode(data.description));
  // console.log(text)
  
  const node = document.getElementsByClassName('modal-body')[0];
  
  node.innerHTML = '';
  
  node.appendChild(document.createTextNode("Endereço: " + hotel_data.result[id].address_trans))
  node.appendChild(document.createElement("br"))
  node.appendChild(document.createTextNode("Site: " + hotel_data.result[id].url))
  node.appendChild(document.createElement("br"))
  node.appendChild("Descrição: " + text)
  

}


// Função que busca a localização atual do usuário

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
  status.textContent = 'Unable to retrieve your location';
}

if (!navigator.geolocation) {
  status.textContent = 'Geolocation is not supported by your browser';
} else {
  status.textContent = 'Locating…';
  navigator.geolocation.getCurrentPosition(success, error);
}

}

document.querySelector('#find-me').addEventListener('click', geoFindMe());
