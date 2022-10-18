<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="pt-br">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!--icon-->
	<link rel="icon" type="imagem/png" href="../img/flight.png ">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">	 
  	<!--Script para icon-->
  	<script src="https://use.fontawesome.com/62e43a72a9.js"></script>   
    <!-- Bootstrap CSS -->
   
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
	
	
	
	
	<!--API-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css"
    integrity="sha512-hoalWLoI8r4UszCkZ5kL8vayOGVae1oxXe/2A4AO6J9+580uKHDO3JdHb7NzwwzK5xr/Fs0W40kiNHxM9vyTtQ=="
    crossorigin="" />
    <script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js"
    integrity="sha512-BB3hKbKWOc9Ez/TAwyWxNXeoV9c1v6FIeYiBieIWkpLjauysF18NzgR1MBNBXf8/KABdlkX68nAhlwcDFLGPCQ=="
    crossorigin=""></script>
    <link rel="stylesheet" href="./assets/css/styles.css">
     <script type = "text/javascript" src="./assets/js/api.js"></script>
	     <script type = "text/javascript" src="./assets/js/index.js"></script>


    <title>Gulliver Traveller</title>
</head>



<body>

  <header>
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg navbar-light nav-color">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp"><img class="img-fluid" src="./assets/img/logo1.svg" alt=""></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse navbar-itens-color" id="navbarNavDropdown">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Hospedagem</a>
                        </li>
		             	<li class="nav-item">
		               		<a class="nav-link active" href="aluguel_veiculos.jsp">Alugar Carros</a>
		             	</li>
		                <li class="nav-item">
		                    <a class="nav-link" href="#">Gastronomia</a>
		                </li>
		                <li class="nav-item dropdown">
			                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
			                  aria-expanded="false">
			                  Mais
			                </a>
			                <ul class="dropdown-menu">
			                  <li><a class="dropdown-item" href="dicas_parques_e_como_chegar.jsp">Dicas Úteis</a></li>
			                  <li><a class="dropdown-item" href="dicas_parques_e_como_chegar.jsp">Como Chegar</a></li>
			                  <li><a class="dropdown-item" href="cultura_historia_entretenimento_vida.jsp">Cultura</a></li>
			                  <li><a class="dropdown-item" href="cultura_historia_entretenimento_vida.jsp">História</a></li>
			                  <li><a class="dropdown-item" href="cultura_historia_entretenimento_vida.jsp">Entretenimento</a></li>
			                  <li><a class="dropdown-item" href="cultura_historia_entretenimento_vida.jsp">Vida Noturna</a></li>
                                          <li><a class="dropdown-item" href="parques.html">Parques</a></li>

			                </ul>
			            </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

    <div class="container cabecalho-banner">
      <div class="row">
        <div class="col-lg-4 col-md-3 col-sm-6 col-xs-12">

          <div class="mold-oval">
          </div>

        </div>
        <div class="col-lg-4 col-md-3 col-sm-6 col-xs-12">

          <div class="mold-oval-sec">
          </div>

        </div>
        <div class="col-lg-4  col-sm-12 col-xs-12 texto-1">
          <h1>Bem-Vindo(a)! ✈️</h1>

          <p class="text-left"> Gulliver Traveller conta todas as suas aventuras e desbravamentos pelos confins do
            mundo trazendo, para seus leitores, dicas de viagens e de lugares poucos explorados pelos turistas menos
            experientes. Em seu blog, os viajantes encontram indicações de hospedagens, alugar carro e
            gastronomia.</p>

          <a href="login.jsp">
            <button type="button" class="btn btn-outline-secondary botao-login"
              style="font-weight: bold;">Login</button></a>
          <a href="signup.jsp">
            <button type="button" class="btn btn-outline-secondary botao-login"
              style="font-weight: bold;">Cadastrar</button></a>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="input-group mb-3 barra-busca">
              <input type="search" class="form-control" placeholder="Pesquise algo..." aria-label="Pesquise algo..."
                aria-describedby="button-addon2">
              <button class="btn btn-outline-secondary botao-busca" type="button" id="find-me"
                style="font-weight:bold">Buscar</button>

            </div>
          </div>
        </div>

  </header>

  <!--waves-->
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
    <path fill="#062B5C" fill-opacity="1"
      d="M0,192L26.7,202.7C53.3,213,107,235,160,202.7C213.3,171,267,85,320,53.3C373.3,21,427,43,480,90.7C533.3,139,587,213,640,256C693.3,299,747,309,800,288C853.3,267,907,213,960,186.7C1013.3,160,1067,160,1120,176C1173.3,192,1227,224,1280,240C1333.3,256,1387,256,1413,256L1440,256L1440,0L1413.3,0C1386.7,0,1333,0,1280,0C1226.7,0,1173,0,1120,0C1066.7,0,1013,0,960,0C906.7,0,853,0,800,0C746.7,0,693,0,640,0C586.7,0,533,0,480,0C426.7,0,373,0,320,0C266.7,0,213,0,160,0C106.7,0,53,0,27,0L0,0Z">
    </path>
  </svg>



  <main>
    <div class="historia container col-12 col-lg-8">
      <div class="row gx-2 justify-content-center">

        <div class="accordion" id="accordionExample">
          <div class="accordion-item">
            <h2 class="accordion-header" id="headingOne">
              <button class="box_1 accordion-button" type="button" data-bs-toggle="collapse"
                data-bs-target="#collapseOne" aria-controls="collapseOne">
                História do Gulliver Traveller
              </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
              data-bs-parent="#accordionExample">
              <div class="accordion-body">
                <p> Gulliver Traveller é um jovem blogueiro de 26 anos, amante de viagens de turismo e explorador de
                  lindas cidades e
                  paisagens de encher os olhos. Em seu blog, Gulliver conta todas as suas aventuras e desbravamentos
                  pelos confins do
                  mundo trazendo, para seus leitores, dicas deviagens e de lugares pouco explorados pelos turistas menos
                  experientes.</p>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

	  
	  

    <!--HOSPEDAGEM-->
    <section class="sec-1 serviços">
      <div class="container text-center">
        <div class="row">

          <h1 class="d-flex justify-content-center" style="color: #073673; font-weight:bolder; font-size: 32px;">
            Serviços que oferecemos para vocês: </h1>

          <img class="img-fluid" src="../img/servicos.svg" alt="serviços que oferecemos">
        </div>
    </section>

    <section class="sec-2 hospedagens">
      <div class="container">
        <div class="row">
          <div class="col-md-12" id="hospedagem">

            <h1 style="color: #073673; font-weight:900; font-size: 28px;">Descubra hospedagens incríveis com sua
              localização atual!</h1>
            <div class="form">
              <form action="#">

                <fieldset>
                  <label class="labelfor" for="date">Data de entrada:</label>
                  <input type="date" class="input-form">

                  <label class="labelfor" for="date">Data de saída:</label>
                  <input type="date" class="input-form">


                  <label class="labelfor" for="Destino:"></label>
                  <input type="search" id="SearchInput" class="input-form" placeholder="Próximo à localização atual">


                  <button class="form-button" href=#SP id="find" type="button"> <i class="fa fa-search"
                      aria-hidden="true"></i> Pesquisar</button>
                  <p id="status"></p>
                  <a id="map-link" title="Clique aqui para ver no mapa" target="_self"></a>
                  <div id="map"></div>


                </fieldset>
              </form>

            </div>

            <div id="SP" class="borda-titulo">
              <h1 class="titulo-hospedagens" >Hóteis próximos a você</h1>
            </div>
          </div>
        </div>
        <div class="row row-cols-1 row-cols-md-3 g-4">
          <div class="col">
            <div class="card">
              <img
                src="https://thumbcdn-1.hotelurbano.net/xpUqJXTKYudv41TJF1CuL4O6cgo=/trim:bottom-right:80/fit-in/625x0/bottom/filters:quality(30)/https%3A//novo-hu.s3.amazonaws.com/reservas/ota/prod/hotel/524865/001-fachada-ibis-styles-sao-paulo-anhembi-hotel-001_20191216171043.jpg"
                class="card-img-top" alt="...">
            </div>
            <div class="card-body">
              <h5 class="card-title">IBIS Styles São Paulo Anhembi</h5>
              <div class="aval-stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>

              <a href="#" class="box btn btn-dark mr-2"> Saiba mais </a>

            </div>
          </div>
          <div class="col">
            <div class="card">
              <img
                src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/91/4e/ca/living-lounge-bar-sushi.jpg?w=900&h=-1&s=1"
                class="card-img-top" alt="...">
            </div>
            <div class="card-body">
              <h5 class="card-title">Renaissance São Paulo Hotel</h5>
              <div class="aval-stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>


              <a href="#" class="box btn btn-dark mr-2"> Saiba mais </a>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <img
                src="https://cf.bstatic.com/xdata/images/hotel/max1280x900/29449472.jpg?k=359abeeab31bc674e8c23020c3ac56fbd62297b3608d03e2fa6648e9751110a2&o=&hp=1"
                class="card-img-top" alt="...">
            </div>
            <div class="card-body">
              <h5 class="card-title">Blue Tree Premium Morumbi</h5>
              <div class="aval-stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <a href="#" class="box btn btn-dark mr-2"> Saiba mais </a>

            </div>
          </div>
        </div>
      </div>
    </section>
    </div>




    <!--Gastronomia-->
    <section class="gastronomia" id="gastronomialocal">
      <section class="gastro-card container">
        <h1 class="title-restaurante"> GASTRONOMIA </h1>
        <p class="text-gastronomia"> Os melhores lugares com gastronomia local!</p>
        <section class="pt-4">
          <div class="container px-lg-5">
            <!-- Page-->
            <div class="card-group col-12">

              <div class="row gx-lg-5">
                <div class="col-lg-6 col-xxl-4 mb-5">
                  <div class="card bg-light border-0 h-100">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                      <div class="feature bg-light bg-gradient text-white rounded-3 mb-4 mt-n4"></div>
                      <h2 class="fs-4 fw-bold">By Koji</h2>
                      <p class="mb-0">O chef Koji Yokomizo é o nome à frente do By Koji, com 3 casas em São Paulo,
                        oferece gastronomia japonesa com um toque
                        contemporâneo, seus sushis e sashimis são deliciosos. Voce não vai perder, né? Confira mais
                        detalhes:</p>

                      <a href="https://www.getinapp.com.br/sao-paulo/by-koji-morumbi?utm_term=&utm_campaign=greenz_%5Bsrch%5D_restaurantes_parceiros&utm_source=adwords&utm_medium=ppc&hsa_acc=5833756789&hsa_cam=18180729808&hsa_grp=143128342520&hsa_ad=619026426610&hsa_src=g&hsa_tgt=dsa-394219924975&hsa_kw=&hsa_mt=&hsa_net=adwords&hsa_ver=3&gclid=CjwKCAjwv4SaBhBPEiwA9YzZvJK4l_E1y8BdIKjoVKwaAwfk4BmNdi_-sV2ya_4Q9rdrTMnjIbipaRoCB7QQAvD_BwE"
                        target="_blank"> <button class="button-gastro"> <i class="fas fa-utensils"></i>Saiba
                          mais</button>
                      </a>


                    </div>
                  </div>
                </div>
                <div class="col-lg-6 col-xxl-4 mb-5">
                  <div class="card bg-light border-0 h-100">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                      <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i
                          class="bi bi-cloud-download"></i></div>
                      <h2 class="fs-4 fw-bold">Botanikafé</h2>
                      <p class="mb-0">Além de ter gostosas mesas ao ar livre, divide espaço com as quadras de beach
                        tennis e vôlei de praia mais disputadas de
                        São Paulo, uma vez que está integrado ao Calçadão SP, um clube com espaço para treinos
                        funcionais e quadras de areia.</p>
                      <a href="https://www.botanikafe.com/" target="_blank"> <button class="button-gastro"> <i
                            class="fas fa-utensils"></i>Saiba mais</button>
                      </a>

                    </div>
                  </div>
                </div>

                <div class="col-lg-6 col-xxl-4 mb-5">
                  <div class="card bg-light border-0 h-100">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                      <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i
                          class="bi bi-bootstrap"></i></div>
                      <h2 class="fs-4 fw-bold">Bráz Quintal</h2>
                      <p class="mb-0">Essa casa-irmã da Bráz atrai desde que
                        nasceu as famílias do bairro com seu amplo jardim aos fundos de um majestoso salão de pé-direito
                        altíssimo – que abriga
                        dois fornos de aspecto industrial.</p>
                      <a href="https://www.tripadvisor.com.br/Restaurant_Review-g303631-d1110619-Reviews-Quintal_do_Braz-Sao_Paulo_State_of_Sao_Paulo.html"
                        target="_blank"> <button class="button-gastro"> <i class="fas fa-utensils"></i>Saiba
                          mais</button>
                      </a>

                    </div>
                  </div>
                </div>

                <div class="col-lg-6 col-xxl-4 mb-5">
                  <div class="card bg-light border-0 h-100">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                      <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i
                          class="bi bi-patch-check"></i></div>
                      <h2 class="fs-4 fw-bold">Loup</h2>
                      <p class="mb-0">O restaurante de cozinha contemporânea comandado pelo restaurateur Daniel
                        Sahagoff, apresenta espaço amplo e
                        confortável, área externa e adega transparente composta por cerca de 250 rótulos de vinhos
                        suspensas.</p>

                      <a href="http://www.louprestaurante.com.br/" target="_blank"> <button class="button-gastro"> <i
                            class="fas fa-utensils"></i>Saiba mais</button>
                      </a>


                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

      </section>
    </section>


    <!--CARRO-->
    <section class="serviços" id="alugarcarro">
      <div class="container col-12 col-lg-8">
        <div class="row">

          <h1 class="titulo_carro d-flex justify-content-center">
            ALUGUÉIS DE CARROS </h1>
          <div class="carro-img" style="width: 18rem;">
            <img
              src="https://s2.glbimg.com/mYgwlPa7vtIiUk6kROUxJUi2yyo=/0x0:620x413/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_cf9d035bf26b4646b105bd958f32089d/internal_photos/bs/2020/a/4/Ik8J1fQYirf6wYRvRJ8Q/2020-03-20-novo-tracker-1.jpg"
              class="card-carro card-img-top" alt="Imagem de um carro">
            <div class="card-body">
              <h5 class="card-title">Chevrolet Tracker</h5>
              <p class="card-text"> O Chevrolet Tracker é um SUV crossover subcompacto fabricado oela General Motors
                desde 2019.
              </p>
              <a href="https://www.localiza.com/brasil/pt-br?gclid=Cj0KCQjwpeaYBhDXARIsAEzItbF_uSRuIz65-aTsGH3VJv_YGIb_-JhT6gHrH9Vscisyb8-naEjtxWwaAi29EALw_wcB"
                class=" box btn bg-dark mr-2  text-light"> Acessar </a>

            </div>
          </div>

          <div class="carro-img" style="width: 18rem;">
            <img src="https://garagem360.com.br/wp-content/uploads/2021/08/ALTA20-1.jpeg"
              class="card-carro card-img-top" alt="Imagem de um carro">
            <div class="card-body">
              <h5 class="card-title">Peugeot 3008 GT line</h5>
              <p class="card-text"> Para sua viagem ser ainda mais inesquecível, conheça o novo PEUGEOT 3008 e o seu
                estilo revolucionário único. Com inhas poderosas, dinamismo e fluidez.
              </p>
              <a href="https://www.localiza.com/brasil/pt-br?gclid=Cj0KCQjwpeaYBhDXARIsAEzItbF_uSRuIz65-aTsGH3VJv_YGIb_-JhT6gHrH9Vscisyb8-naEjtxWwaAi29EALw_wcB"
                class=" box btn bg-dark mr-2  text-light"> Acessar </a>
            </div>
          </div>

          <div class="carro-img" style="width: 18rem;">
            <img src="https://cdn5.jornaldenegocios.pt/images/2022-01/img_440x275$2022_01_19_17_00_32_420384.jpg"
              class="card-carro card-img-top" alt="Imagem de um carro">

            <div class="card-body">
              <h5 class="card-title">Peugeot 2008</h5>
              <p class="card-text">Com câmbio automático de 6 marchas, motor Turbo Flex THP de 173 cv e novos detalhes
                que combinam elegância e robustez.
              </p>
              <a href="https://www.localiza.com/brasil/pt-br?gclid=Cj0KCQjwpeaYBhDXARIsAEzItbF_uSRuIz65-aTsGH3VJv_YGIb_-JhT6gHrH9Vscisyb8-naEjtxWwaAi29EALw_wcB"
                class=" box btn bg-dark mr-2 text-light"> Acessar</a>

            </div>
          </div>
        </div>
    </section>


    <!--CULTURA-->
    <section class="cultura" id="cultura">
      <section class="cultura-card container">
        <div class="container px-2">
          <div class="row gx-2 justify-content-center">
            <div class="col-lg-8">
              <h2 class="title-cultura">CULTURA</h2>

              <p> A cultura de São Paulo é o conjunto de manifestações artístico-culturais desenvolvidas pelo povo que
                compõe o estado de
                São Paulo.
                A maior parte das expressões da cultura tradicional paulista tem suas raízes, fundamentalmente, em três
                grandes
                vertentes: a italiana, a portuguesa e a indígena. Pode ser dividida em duas variações: a caipira, que é
                do interior do
                estado e de algumas cidades da Grande São Paulo, e a caiçara, da maioria das cidades do litoral
                paulista.</p>
              <p>A formação da cultura paulista se deve, principalmente, às várias ondas migratórias e imigratórias que
                se dirigiram ao
                estado nos séculos XX e XXI, levando costumes distintos para um mesmo lugar e criando uma cultura
                singular, seja na
                música, na literatura ou nas artes plásticas.</p>
              <h2 class="titulo-video"> Conheça alguns museus para conhecer mais sobre a cultura brasileira:</h2>
              <iframe src="https://www.youtube.com/embed/ZfC-BUjxLR4" title="YouTube video player"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen>
              </iframe>
            </div>
          </div>
        </div>
      </section>


    </section>
    </section>



    <!--ENTRETENIMENTO-->
    <div class="museus container col-12 col-lg-8" id="entretenimento">
      <div class="row">
        <h1 class="titulo-galeria"> Os melhores luagres de <em>São paulo</em> para conhecer!</h1>
        <div class="card-place" style="width: 18rem;">
          <img src="https://artebrasileiros.com.br/wp-content/uploads/2022/05/Masp.jpg" target="_blank"
            class="card-img-top p-2" alt="Masp São Paulo">

        </div>


        <div class="card-place" style="width: 18rem;">
          <img src="https://blog.loft.com.br/wp-content/uploads/2021/07/bairro-liberdade-galvao-bueno.jpg"
            target="_blank" class="card-img-top p-2" alt="Bairro Liberdade - SP">

        </div>


        <div class="card-place" style="width: 18rem;">
          <img
            src="https://cidadedesaopaulo.com/wp-content/uploads/2016/10/Teatro-Municipal_101113_Foto_JoseCordeiro_17.jpg"
            target="_blank" class="card-img-top p-2" alt="Teatro Municipal - SP">

        </div>

        <div class="card-place" style="width: 18rem;">
          <img src="https://blog.maxmilhas.com.br/wp-content/uploads/2021/12/Cidade-de-Sa%CC%83o-Paulo.jpeg"
            target="_blank" class="card-img-top p-2" alt="Cidade de São Paulo">
        </div>


        <div class="card-place" style="width: 18rem;">
          <img src="https://www.elasviajando.com.br/wp-content/uploads/2020/10/theatro-municipal-sp.jpg" target="_blank"
            class="card-img-top p-2" alt="Teatro Municipal">
        </div>

        <div class="card-place" style="width: 18rem;">
          <img
            src="https://a.cdn-hotels.com/gdcs/production92/d679/152529e0-f586-11e8-b8fa-0242ac11000d.jpg?impolicy=fcrop&w=800&h=533&q=medium"
            target="_blank" class="card-img-top p-2" alt="Museu Ipiranga - SP">
        </div>

      </div>
    </div>


    <!--VIDA NOTURNA-->
    <section class="noturno" id="vidanoturna">
      <section class="noturno-card container">
        <div class="container px-2">
          <div class="row gx-2 justify-content-center">
            <div class="col-lg-8">
              <h2 class="title-cultura">VIDA NOTURNA NA CIDADE QUE NÃO PARA</h2>

              <div class="noturno-box container">
                <p>Com cerca de 20 milhões de habitantes, é apelidada como “a cidade que não dorme jamais ”. E a fama
                  não
                  é à toa! É
                  possível encontrar os mais diversos serviços 24 horas nesta que é uma das maiores capitais da América
                  Latina.</p>

                <p>Que a vida noturna de São Paulo é referência, todo mundo já sabe. Baladas e bares são referencias
                  para
                  quem quer curtir
                  uma noite em São Paulo, beco 203 é um exemplo de sugestão dos paulistas para curtir melhor a noite na
                  cidade.</p>
              </div>
              <img class="img-top w-100" src="./assets/img/image 36.svg">


            </div>
          </div>
        </div>
      </section>


    </section>
    </section>




    <!--Como chegar-->
    <section class="chegar" id="comochegar">
      <section class="chegar-card container">
        <h1 class="title-chegar"> COMO CHEGAR A SÃO PAULO </h1>
        <section class="pt-4">
          <img class="sp-img" src="./assets/img/image 37.svg">
          <div class="container px-lg-5">
            <!-- Page-->
            <div class="card-group col-12">
              <div class=" sp-conteudo card-ch row gx-lg-5">
                <div class="col-lg-6 col-xxl-4 mb-5">
                  <div class="card-sp border-0 h-100">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                      <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"></div>


                      <p class="mb-1">Quem deseja visitar a capital paulista não encontrará dificuldade para chegar até
                        lá. A cidade oferece dois aeroportos
                        principais: Aeroporto de Congonhas e Aeroporto Internacional de São Paulo, em Guarulhos.</p>

                      <p class="mb-1">Para quem chega de carro, os principais acessos para a capital paulista são:
                        Anchieta (SP-150) e Imigrantes (SP-160),
                        que fazem ligação com o Porto de Santos; Bandeirantes (SP-348), que liga a cidade a Campinas;
                        Castelo Branco (SP-280),
                        para o interior de São Paulo; Anhanguera (SP-330), para quem vem de Uberlândia e Distrito
                        Federal; Fernão Dias (BR-381),
                        que faz ligação com o sul de Minas; Ayrton Senna (SP-070) e Presidente Dutra (BR-116), para
                        percursos até o Rio de
                        Janeiro; e a Régis Bittencourt (BR-116) para conexões com cidades do Sul.</p>

                    </div>
                  </div>
                </div>
              </div>
            </div>

        </section>

      </section>
    </section>


    <section class="dicas" id="dicasuteis">
      <div class="container col-12 col-lg-8">
        <div class="row gx-2 justify-content-center">
          <h1 class="dicas-uteis"> DICAS ÚTEIS </h1>
          <a class="cardi">
            <div class="inneri">
              <h2 class="title">Transporte em São Paulo</h2>
              <time class="subtitle"> No geral, São Paulo oferece um bom sistema de transporte público. O metrô é o meio
                mais prático para turistas, já que
                leva às principais regiões da cidade e tem paradas próximas a pontos turísticos.<time>
            </div>
          </a>

          <a class="cardi card2">
            <div class="inneri">
              <h2 class="title">Quando ir a São Paulo</h2>
              <time class="subtitle">Conhecida como Terra de Garoa, São Paulo costuma ter o clima de várias estações em
                um único dia. É comum sentir frio de
                manhã, passar calor na hora do almoço, curtir uma tarde amena e pegar uma chuvinha no final da tarde.

                A melhor época para viajar a São Paulo sempre vai depender das preferências de cada viajante.<time>
            </div>
          </a>

          <a class="cardi card3">
            <div class="inneri">
              <h2 class="title">PONTOS TURÍSTICOS EM SÃO PAULO</h2>
              <time class="subtitle"> Para seu final de semana que tal um passeio pelo Centro de São Paulo?
                Também há o Viaduto do chá, a Igreja da Sé, os prédios do Terraço Itália e o da Bovespa.
                Uma dica é ficar atento e ir somente durante o dia. De preferência no sábado que ainda tem bastante
                gente andando pelas ruas. Afinal, estes conselhos não podem faltar nas dicas de São Paulo para turistas,
                não?<time>
            </div>
          </a>

        </div>
      </div>
    </section>




  </main>
 
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-12 informacoes-contato">

          <h1 class="titulo-contact">
            Contate-nos</h1>

          <h2 class="contact"> <i class="fa-solid fa-phone p-1"></i> (11) 9123456789</h2>
          <h2 class="contact"> <i class="fab fa-fw fa-instagram p-2"></i> @Gullivertraveller</h2>
          <h2 class="contact"><i class="fa-solid fa-envelope  p-2"></i>Gullivertraveller@gmail.com</h2>
        </div>
        <div class="col-md-6 col-sm-12 col-12">
          <img src="../img/call-center (1).gif" class="assistant-virtual col-12 img-fluid" alt="assistente virtual">
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 col-sm-6 col-xs-2">
          <form action="https://formsubmit.co/annee.02021@gmail.com" method="POST" class="formulario-contato">

            <input type="e-mail" placeholder="Seu e-mail" name="email" required
              class="col-lg-8 col-md-6 col-sm-12 col-12 email">

            <textarea placeholder="Sua Mensagem" class="col-lg-8 col-md-6 col-sm-12 col-12 mensagem"></textarea>
            <div class="col-md-12 col-sm-12 col-12">
              <button type="submit" class="botao-enviar">Enviar</button>
            </div>
          </form>
        </div>
      </div>
    </div>
    </div>
    <div class="container-fluid p-0 m-0">
      <div class="final-rodape">

      </div>

    </div>
    </div>
  </footer>



  <script src="index.js"></script>
  <!-- Script para incrementar plugin de libras no site-->
  <div vw class="enabled">
    <div vw-access-button class="active"></div>
    <div vw-plugin-wrapper>
      <div class="vw-plugin-top-wrapper"></div>
    </div>
  </div>
  <script src="https://vlibras.gov.br/app/vlibras-plugin.js"></script>
  <script>
    new window.VLibras.Widget('https://vlibras.gov.br/app');
  </script>

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>


  <!--elemento de acessibilidade-->
  <script>
    (function (d) {
      var s = d.createElement("script");
      s.setAttribute("data-account", "1DS8M6g26o");
      s.setAttribute("src", "https://cdn.userway.org/widget.js");
      (d.body || d.head).appendChild(s);
    })(document)
  </script><noscript>Please ensure Javascript is enabled for purposes of <a href="https://userway.org">website
      accessibility</a></noscript>


</body>



</html>
  
