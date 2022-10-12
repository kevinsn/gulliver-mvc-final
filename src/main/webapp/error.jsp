<!doctype html>
<jsp:useBean id="ErrorMessage" type="java.lang.String" scope="request"></jsp:useBean>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
	    <link rel="stylesheet" href="./assets/css/styles.css">
	
	    <title>Traveller MVC</title>
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

        <div class="container my-5">        
      		<div class="row pt-5 pb-5">
	            <div class="row justify-content-center px-3">
	                <img src="./assets/img/login.png" class="logo" alt="">
	            </div>
      		</div>
            <div class="row justify-content-center px-4">
                <div class="col-12 col-sm-12 col-md-4 align-self-center">
      				<h3> <c:out value="${ErrorMessage}"/></h3>	
                </div>
            </div>
            
			<div class="text-center">
            	<a href="login.jsp" class="btn btn-primary botao-enviar">Tentar novamente</span></a>
            </div>
        </div>
        
		<footer>
	        <div class="container-fluid p-0 m-0">
	            <div class="final-rodape">
	
	            </div>                    
	        </div>
	    </footer>

        <script src="./assets/js/show_password.js"></script>
    </body>
</html>