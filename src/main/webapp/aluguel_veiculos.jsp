<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="./assets/css/aluguel_veiculos.css">
    <title>Gulliver Traveller</title>
</head>
<body>

    <header>
        <div class="container-fluid p-0">
	        <span class="position-absolute trigger">
			    <!-- hidden trigger to apply 'stuck' styles -->
			</span>
	        <nav class="navbar navbar-expand-lg navbar-light nav-color sticky-top">
              <div class="container-fluid">
                <a class="navbar-brand" href="#"><img src="./assets/img/logo1.svg" alt=""></a>
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

    </header>

<img src="./assets/img/blob_14-4-37340.svg" alt="" class="blob">

<img src="./assets/img/blob_13-3-399940.svg" alt="" class="blob-2">
    <main>
        <section class="locadoras container">
            <h1><em class="loc-emphasis">Locadoras de carro</em> mais procuradas</h1>

            <div class="locadoras-procuradas d-flex flex-row justify-content-evenly">
                <img src="./assets/img/foco_aluguel.jpg" alt="">
                <img src="./assets/img/alamo.png" alt="">
                <img src="./assets/img/localiza.png" alt="">
                <img src="./assets/img/avis.png" alt="">
            </div>

            <h1><em class="loc-emphasis-2">Aproveite a viagem</em> com o melhor carro para a sua aventura </h1>

            <div>
                <form action="" class="busca-veiculo">
                    <div class="d-flex flex-row justify-content-evenly mb-5 pt-5">
    
                        <span>
                            <div class="d-flex felx-row">

                                <i class="fa-solid fa-car" style="color:white; padding-right:10px; font-size:24px;"></i>
                                <p>Local de Retirada</p>
                            </div>
                            <input type="text">
                        </span>

                        <span>
                            <div class="d-flex flex-row">

                                <i class="fa-solid fa-clock " style="color:white; padding-right:10px; font-size:24px;"></i>
                                <p>Retirar|Horas</p>
                            </div>
                            <input type="text">
                        </span>
                        <span>
                            <div class="d-flex flex-row">
                                <i class="fa-solid fa-clock" style="color:white; padding-right:10px; font-size:24px;"></i>

                                <p>Devolver|Horas</p>
                            </div>
                            <input type="text">
                        </span>
                    </div>
                    <button>Buscar Carros</button>
                </form>

            </div>
            <div class="filtro-veiculos d-flex flex-row">

                <div class="tipo-veiculo d-flex flex-row align-items-center">
                  <div>
                    <img src="./assets/img/pngegg (1).png" alt="">

                  </div>
                  <div class="ps-3">
 
                    <h5>Compacto</h5>
                    <p>A partir de R$185</p>
                  </div>

                  <div>
                    <i class="fa-solid fa-plus" style="color: white; font-size:20px; margin-left: 30px; margin-top: 15px;"></i>
                  </div>
                </div>

                <div class="tipo-veiculo d-flex flex-row align-items-center">
                  <div>

                    <img src="./assets/img/pngwing.com (1).png" alt="">
                  </div>
                  <div class="ps-3">

                    <h5>Econômico</h5>
                    <p>A partir de R$85</p>
                    
                  </div>

                  <div>
                    <i class="fa-solid fa-plus" style="color: white; font-size:20px; margin-left: 30px; margin-top: 15px;"></i>
                  </div>
                </div>
                <div class="tipo-veiculo d-flex flex-row align-items-center">
                  <div>
                    
                    <img src="./assets/img/pngwing.com (2).png" alt="">
                  </div>

                  <div class="ps-3">

                    <h5>Utilitário</h5>
                    <p>A partir de R$100</p>
                  </div>
                  <div>
                    <i class="fa-solid fa-plus" style="color: white; font-size:20px; margin-left: 30px; margin-top: 15px;"></i>
                  </div>
                </div>
                
            </div>
        </section>

        <section class="veiculos container">

            <div class="card-veiculos d-flex">

              <img src="./assets/img/Volkswagen-Saveiro-PNG-Image.png" alt="Volkswagen Saveiro@nicepng.com" class="img-veiculo">
                <div class="descricao-veiculos d-flex flex-column">
                    <h2>Volkswagen Saveiro</h2>
                    <p>ou semelhante da categoria Compactos</p>
    
                    <div class="icones-veiculo">
                        <span><i class="fa-solid fa-user"></i>2 pessoas</span>
                        <span>Automático</span>
                        <span>Ilimitada</span>
                    </div>
    
                    <div class="retirada-veiculo">
                        <img src="./assets/img/localiza.png" alt="" class="logo-locadora">
                        <span><i class="fa-solid fa-location-dot"></i>Retire em Luz,SP</span>
                    </div>
                </div>
                <div class="retangulo"></div>
                <div class="valor-veiculo ">
                    <h2>Preço total por dia</h2>
                    <h2>R$ 200</h2>

                    <button class="btn-alugar">Alugar Veículo</button>
                </div>
            </div>

            <div class="card-veiculos d-flex">

                <img src="./assets/img/pngwing.com.png" alt="" class="img-veiculo">
                <div class="descricao-veiculos d-flex flex-column">
                    <h2>Strada, Saveiro</h2>
                    <p>ou semelhante da categoria Utilitário</p>
    
                    <div class="icones-veiculo">
                        <span><i class="fa-solid fa-user"></i>2 pessoas</span>
                        <span>Manual</span>
                        <span>Ilimitada</span>
                    </div>
    
                    <div class="retirada-veiculo">
                        <img src="./assets/img/alamo.png" alt="" class="logo-locadora">
                        <span><i class="fa-solid fa-location-dot"></i>Retire em Paulista, SP</span>
                    </div>
                </div>
                <div class="retangulo"></div>
                <div class="valor-veiculo ">
                    <h2>Preço total por dia</h2>
                    <h3>R$ 120</h3>
                    <h2>R$108</h2>

                    <button class="btn-alugar">Alugar Veículo</button>
                </div>
                
            </div>

            <div class="card-veiculos d-flex">

              <img src="./assets/img/hyundai_PNG11241.png" alt="" class="img-veiculo">
              <div class="descricao-veiculos d-flex flex-column">
                  <h2>Hyundai ix35</h2>
                  <p>ou semelhante da categoria Utilitário</p>
  
                  <div class="icones-veiculo">
                      <span><i class="fa-solid fa-user"></i>4 pessoas</span>
                      <span>Automático</span>
                      <span>Ilimitada</span>
                  </div>
  
                  <div class="retirada-veiculo">
                      <img src="./assets/img/localiza.png" alt="" class="logo-locadora">
                      <span><i class="fa-solid fa-location-dot"></i>Retire em Luz,SP</span>
                  </div>
              </div>
              <div class="retangulo"></div>
              <div class="valor-veiculo ">
                  <h2>Preço total por dia</h2>
                  <h3>R$ 190</h3>
                  <h2>R$ 178</h2>

                  <button class="btn-alugar">Alugar Veículo</button>
              </div>
              
          </div>

            
        </section>

        <div class="div-barra-azul">

        </div>

        <section class="aval-usuarios container">

          <h1>Recomendações dos outros viajantes</h1>

          <div class="card-aval-usuarios d-flex">
            <div class="d-flex flex-row">
              <img src="./assets/img/photo-1494790108377-be9c29b29330.avif" alt="">
            </div>
            <div>
             <p>Amei o serviço, utilizei a locadora “Localiza”, atendimento perfeito! </p>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
           </div>
          </div> 

        </section>

        <section class="destinos-mais-procurados container-fluid">
          <div class="container">
            <h1>Destinos muito procurados para <em>aluguel de carro</em></h1>
            
            <div class="row row-cols-1 row-cols-md-2 g-4 ">
              <div class="col">
                <div class="card card-destinos-mais-procurados">
                  <div class="imagem-card-destinos-mais-procurados">
                    
                    <img src="./assets/img/gabrielle-roncarate-m4XfNZG1GwQ-unsplash.jpg" class="card-img-top" alt="...">
                  </div>
                </div>
                <div class="card-body">
                  <h4 class="card-title">Liberdade</h4>
                  <h5> <i class="fa-solid fa-car" style="color:white; padding-right:10px; font-size:24px;"></i>A partir de R$ 180 por dia </h5>
                  <p class="card-text">Saber mais sobre os alugueis de carro na Liberdade</p>
                </div>
              </div>
              <div class="col">
                <div class="card card-destinos-mais-procurados">
                  <div class="imagem-card-destinos-mais-procurados">
                    
                    <img src="./assets/img/gabriel-ramos-l-vnys1p6l4-unsplash.jpg" class="card-img-top" alt="...">
                  </div>
                </div>
                <div class="card-body">
                  <h4 class="card-title">Paulista</h4>
                  <h5> <i class="fa-solid fa-car" style="color:white; padding-right:10px; font-size:24px;"></i>A partir de R$ 195 por dia </h5>
                  <p class="card-text">Saber mais sobre os alugueis de carro na Paulista</p>
                </div>
              </div>
              <div class="col">
                <div class="card card-destinos-mais-procurados">
                  <div class="imagem-card-destinos-mais-procurados">
                    
                    <img src="./assets/img/mariana-santos-MR0rOOI72NU-unsplash.jpg" class="card-img-top" alt="...">
                  </div>
                </div>
                <div class="card-body">
                  <h4 class="card-title">Ibirapuera</h4>
                  <h5> <i class="fa-solid fa-car" style="color:white; padding-right:10px; font-size:24px;"></i>A partir de R$ 115 por dia </h5>
                  <p class="card-text">Saber mais sobre os alugueis de carro na Liberdade</p>
                </div>
              </div>
              <div class="col">
                <div class="card card-destinos-mais-procurados">
                  <div class="imagem-card-destinos-mais-procurados">
                    
                    <img src="./assets/img/brunno-tozzo-D_-4GxA6cJA-unsplash (1).jpg" class="card-img-top" alt="...">
                  </div>
                </div>
                <div class="card-body">
                  <h4 class="card-title">Sé</h4>
                  <h5> <i class="fa-solid fa-car" style="color:white; padding-right:10px; font-size:24px;"></i>A partir de R$ 105 por dia </h5>
                  <p class="card-text">Saber mais sobre os alugueis de carro na Sé</p>
                </div>
              </div>
                </div>
              </div>
            </div>
          </div>
        </section>

    </main>

    <footer>

    </footer>

    
    <script src="./src/js/index.js"></script>
  <!-- Script para incrementar plugin de libras no site-->
    <div vw class="enabled">
    <div vw-access-button class="active mx-3"></div>
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
