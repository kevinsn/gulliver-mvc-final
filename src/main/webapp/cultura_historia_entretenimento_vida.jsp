<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="pt-br">
		
	<head>
	    <!-- Required meta tags -->
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <!-- Bootstrap CSS -->
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
	        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	    crossorigin="anonymous" referrerpolicy="no-referrer" />
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
		</script>
	    <link rel="stylesheet" href="./assets/css/styles.css">
	
	    <title>Gulliver Traveller</title>
	</head>
	
	

  <header>
    <div class="container-fluid p-0">
    	<span class="position-absolute trigger">
		    <!-- hidden trigger to apply 'stuck' styles -->
		</span>
        <nav class="navbar navbar-expand-lg navbar-light nav-color sticky-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"><img src="imgs/logo1 (2).svg" alt=""></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <div class="ms-auto"></div>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link"  href="#hospedagem">Hospedagem</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#alugarcarro">Alugar Carros</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#gastronomialocal">Gastronomia</a>
              </li>

              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                  aria-expanded="false">
                  Mais
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#comochegar">Como Chegar</a></li>
                  <li><a class="dropdown-item" href="#vidanoturna">Vida Noturna</a></li>
                  <li><a class="dropdown-item" href="#cultura">Cultura</a></li>
                  <li><a class="dropdown-item" href="#entretenimento">Entretenimento</a></li>
                  <li><a class="dropdown-item" href="#dicasuteis">Dicas Úteis</a></li>
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

          <a href="pagina.html">
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
	
	<body>
	
	

    
    
    
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
    
    
	
	</body>
	
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
          <img src="./assets/img/call-center (1).gif" class="assistant-virtual col-12 img-fluid" alt="assistente virtual">
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
    (function (d) {
      var s = d.createElement("script");
      s.setAttribute("data-account", "1DS8M6g26o");
      s.setAttribute("src", "https://cdn.userway.org/widget.js");
      (d.body || d.head).appendChild(s);
    })(document)
  </script><noscript>Please ensure Javascript is enabled for purposes of <a href="https://userway.org">website
      accessibility</a></noscript>
	
	</html>
	
