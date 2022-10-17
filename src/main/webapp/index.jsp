<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="pt-br">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!--icon-->
	<link rel="icon" type="imagem/png" href="/imgs/flight.png ">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">	 
  	<!--Script para icon-->
  	<script src="https://use.fontawesome.com/62e43a72a9.js"></script>   
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
	</script>
	<!--API-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css"
    integrity="sha512-hoalWLoI8r4UszCkZ5kL8vayOGVae1oxXe/2A4AO6J9+580uKHDO3JdHb7NzwwzK5xr/Fs0W40kiNHxM9vyTtQ=="
    crossorigin="" />
    <script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js"
    integrity="sha512-BB3hKbKWOc9Ez/TAwyWxNXeoV9c1v6FIeYiBieIWkpLjauysF18NzgR1MBNBXf8/KABdlkX68nAhlwcDFLGPCQ=="
    crossorigin=""></script>
    <link rel="stylesheet" href="./assets/css/styles.css">

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
		               		<a class="nav-link" href="#">Alugar Carros</a>
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
	  
	  
    <main class="container">
      <div class="row conteudo pt-5 pb-5">
     
    
      
             <form method="post" action="login.jsp" >
            	<button type="submit"  class="login">Login</button>
             </form>
             <form method="post" action="signup.jsp" >
            	<button type="submit"  class="signup">Cadastrar</button>
             </form>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="input-group mb-1 barra-busca">
              <input type="search" class="form-control" placeholder="Pesquise algo..." aria-label="Pesquise algo..."
                aria-describedby="button-addon2">
              <button class="btn btn-outline-secondary botao-busca" type="button" id="button-addon2">Buscar</button>
            </div>
          </div>
        </div>
      </div>    
    </main>
  </header>
  <div class="container-fluid p-0 m-0 waves">
    <div class="row">
      <div class="custom-shape-divider-top-1653697456 position-relative">
        <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
          <path
            d="M985.66,92.83C906.67,72,823.78,31,743.84,14.19c-82.26-17.34-168.06-16.33-250.45.39-57.84,11.73-114,31.07-172,41.86A600.21,600.21,0,0,1,0,27.35V120H1200V95.8C1132.19,118.92,1055.71,111.31,985.66,92.83Z"
            class="shape-fill"></path>
        </svg>
      </div>
    </div>
  </div>

  <div class="container text-center pt-5 pb-5">
    <div class="row">
      <h2 class="d-flex justify-content-center" style="color: #073673; font-weight:bolder; font-size: 28px;">
        Serviços que oferecemos para vocês: </h2>
    </div>
  </div>

  <div class="container text-center pt-1 pb-5">
    <div class="row my-1">

      <div class="col-sm-12 col-md-6 col-lg-4 my-3">
        <div class="card border-0">
          <div class="imgHospedagem mx-auto"></div>
        </div>
      </div>

      <div class="col-sm-12 col-md-6 col-lg-4 my-3">
        <div class="card border-0">
          <div class="imgAluguel mx-auto"></div>
        </div>
      </div>

      <div class="col-sm-12 col-md-6 col-lg-4 my-3">
        <div class="card border-0">
          <div class="imgRefeicoes mx-auto"></div>
        </div>
      </div>

    </div>
  </div>

  <div class="hospedagens">
    <div class="container">
      <div class="borda-titulo">
        <h2>Hotéis próximos a você</h2>
      </div>
      <div class="row my-1">
        <div class="col-sm-12 col-md-6 col-lg-4 my-3">
          <div class="card">
            <img src="./assets/img/hotel-1.png" class="img-fluid card-img-top" alt="...">
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

            <a href="#" class="box btn bg-warning mr-2"> Saiba mais </a>

          </div>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-4 my-3">
          <div class="card">
            <img src="./assets/img/hotel-2.png" class="img-fluid card-img-top" alt="...">
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


            <a href="#" class=" box btn bg-warning mr-2"> Saiba mais </a>
          </div>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-4 my-3">
          <div class="card">
            <img src="./assets/img/hotel-3.png" class="img-fluid card-img-top" alt="...">
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
            <a href="#" class=" box btn bg-warning mr-2"> Saiba mais </a>

          </div>
        </div>
      </div>
    </div>
  </div>

  <footer>
    <div class="container pt-5 pb-5">
      <div class="row">
        <div class="col-md-6 col-12">

          <h2 class="contato">Contate-nos</h2>

          <h3><i class="fa-solid fa-phone p-2"></i>(11) 9123456789</h3>
          <h3><i class="fa-brands fa-instagram-square p-2"></i>@GulliverTraveller</h3>
          <h3><i class="fa-solid fa-envelope p-2"></i>gullivertraveller@gmail.com</h3>
        </div>
        <div class="col-md-6 col-sm-12 col-12">
          <img src="./assets/img/virtual-assistant.gif" class="col-md-9 col-sm-12 col-8" alt="assistente virtual">
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 col-sm-6 col-xs-2">
          <form action="https://formsubmit.co/annee.02021@gmail.com" method="POST"  class="formulario-contato">

            <input type="email" placeholder="Seu e-mail" class="col-lg-8 col-md-6 col-sm-12 col-12 email">

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

	<!--elemento de acessibilidade-->
	<script>
		(function(d) {
			var s = d.createElement("script");
			s.setAttribute("data-account", "1DS8M6g26o");
			s.setAttribute("src", "https://cdn.userway.org/widget.js");
			(d.body || d.head).appendChild(s);
		})(document)
	</script>
	<noscript>
		Please ensure Javascript is enabled for purposes of <a
			href="https://userway.org">website accessibility</a>
	</noscript>

</body>

</html>
