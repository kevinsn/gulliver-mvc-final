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
			                	<a class="nav-link" href="#">Aluguel de Carros</a>
			              	</li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Gastronomia</a>
                            </li>
                            <li class="nav-item">
              				<a class="nav-link" href="#">Contato</a>
              				</li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    	</header>

        <div class="container my-4">
        
      	<div class="row pt-3 pb-3">
            <div class="row justify-content-center">
                <img src="./assets/img/login.png" class="logo" alt="">
            </div>

            <div class="row justify-content-center">
                <div class="col-12 col-sm-12 col-md-3 align-self-center">
                    <form method="post" action="./login" >

                        <div class="input-group mb-3 barra-login">
                            <label for="email" class="titulos">Email</label>
                            <div class="input-group mb-2">
                            <input type="email" class="form-control" id="email" name="email"
                                placeholder="Ex: seuemail@traveller.com.br" autofocus required>
                            </div>
                        </div>

                        <div class="input-group mb-3 barra-login">
                            <label for="password" class="titulos">Senha</label>
                            <div class="input-group mb-2">
                                <input type="password" class="form-control " id="password" name="password"
                                    placeholder="Ex: sua senha" required>
                            </div>
                        </div>

						<div class="text-center">
                        	<button type="submit" class="btn btn-primary botao-enviar">Efetuar Login</span></button>
                        </div>

                    </form>
                </div>
            </div>
      		</div>
        </div>
        
		<footer>
	        <div class="container-fluid p-0 m-0">
	            <div class="final-rodape">
	
	            </div>                    
	        </div>
	    </footer>
    </body>
</html>