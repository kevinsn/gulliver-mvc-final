<!doctype html>
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
			                  <li><a class="dropdown-item" href="dicas_parques_e_como_chegar.jsp">Dicas �teis</a></li>
			                  <li><a class="dropdown-item" href="dicas_parques_e_como_chegar.jsp">Parques</a></li>
			                  <li><a class="dropdown-item" href="dicas_parques_e_como_chegar.jsp">Como Chegar</a></li>
			                  <li><a class="dropdown-item" href="cultura_historia_entretenimento_vida.jsp">Cultura</a></li>
			                  <li><a class="dropdown-item" href="cultura_historia_entretenimento_vida.jsp">Hist�ria</a></li>
			                  <li><a class="dropdown-item" href="cultura_historia_entretenimento_vida.jsp">Entretenimento</a></li>
			                  <li><a class="dropdown-item" href="cultura_historia_entretenimento_vida.jsp">Vida Noturna</a></li>
			                </ul>
			            </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
 	
    <main class="container">
      <div class="row conteudo pt-5 pb-5">
        <div class="col-12 col-md-4 offset-md-1">
          <img class="img-fluid" src="./assets/img/janela.png">
        </div>
        <div class="col-12 col-md-7">
          <div class="texto col-md-9">
            <h1>Bem-Vindo(a)!</h1>
            <p> Gulliver Traveller conta todas as suas aventuras e desbravamentos pelos confins do mundo trazendo,
              para seus leitores, dicas de viagens e de lugares pouco explorados pelos turistas menos experientes. Em
              seu blog, os viajantes encontram indica��es de hoteis para alugarem, alugar carro e gastronomia.</p>

             <form method="post" action="login.jsp" >
            	<button type="submit"  class="login">Login</button>
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
  <!--Como chegar-->
    <section class="chegar">
      <section class="chegar-card container">
        <h1 class="title-chegar">COMO CHEGAR A S�O PAULO </h1>
        <section class="pt-4">
          <img class="sp-img" src="/imgs/image 37.svg">
          <div class="container px-lg-5">
            <!-- Page-->
            <div class="card-group col-12">
              <div class=" sp-conteudo card-ch row gx-lg-5">
                <div class="col-lg-6 col-xxl-4 mb-5">
                  <div class="card-sp border-0 h-100">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                      <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"></div>


                      <p class="mb-1">Quem deseja visitar a capital paulista n�o encontrar� dificuldade para chegar at�
                        l�. A cidade oferece dois aeroportos
                        principais: Aeroporto de Congonhas e Aeroporto Internacional de S�o Paulo, em Guarulhos.</p>

                      <p class="mb-1">Para quem chega de carro, os principais acessos para a capital paulista s�o:
                        Anchieta (SP-150) e Imigrantes (SP-160),
                        que fazem liga��o com o Porto de Santos; Bandeirantes (SP-348), que liga a cidade a Campinas;
                        Castelo Branco (SP-280),
                        para o interior de S�o Paulo; Anhanguera (SP-330), para quem vem de Uberl�ndia e Distrito
                        Federal; Fern�o Dias (BR-381),
                        que faz liga��o com o sul de Minas; Ayrton Senna (SP-070) e Presidente Dutra (BR-116), para
                        percursos at� o Rio de
                        Janeiro; e a R�gis Bittencourt (BR-116) para conex�es com cidades do Sul.</p>

                    </div>
                  </div>
                </div>
              </div>
            </div>

        </section>

      </section>
    </section>


    <section class="dicas">
      <div class="container col-12 col-lg-8">
        <div class="row gx-2 justify-content-center">
          <h1 class="dicas-uteis">DICAS �TEIS </h1>
          <a class="cardi">
            <div class="inneri">
              <h2 class="title">Transporte em S�o Paulo</h2>
              <time class="subtitle"> No geral, S�o Paulo oferece um bom sistema de transporte p�blico. O metr� � o meio
                mais pr�tico para turistas, j� que
                leva �s principais regi�es da cidade e tem paradas pr�ximas a pontos tur�sticos.<time>
            </div>
          </a>

          <a class="cardi card2">
            <div class="inneri">
              <h2 class="title">Quando ir a S�o Paulo</h2>
              <time class="subtitle">Conhecida como Terra de Garoa, S�o Paulo costuma ter o clima de v�rias esta��es em
                um �nico dia. � comum sentir frio de
                manh�, passar calor na hora do almo�o, curtir uma tarde amena e pegar uma chuvinha no final da tarde.

                A melhor �poca para viajar a S�o Paulo sempre vai depender das prefer�ncias de cada viajante.<time>
            </div>
          </a>

          <a class="cardi card3">
            <div class="inneri">
              <h2 class="title">PONTOS TUR�STICOS EM S�O PAULO</h2>
              <time class="subtitle"> Para seu final de semana que tal um passeio pelo Centro de S�o Paulo?
                Tamb�m h� o Viaduto do ch�, a Igreja da S�, os pr�dios do Terra�o It�lia e o da Bovespa.
                Uma dica � ficar atento e ir somente durante o dia. De prefer�ncia no s�bado que ainda tem bastante
                gente andando pelas ruas. Afinal, estes conselhos n�o podem faltar nas dicas de S�o Paulo para turistas,
                n�o?<time>
            </div>
          </a>

        </div>
      </div>
    </section>

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