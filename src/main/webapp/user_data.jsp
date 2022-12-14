<!doctype html>
<jsp:useBean id="User" type="model.User" scope="session"/> 
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
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
		</script>
	    <link rel="stylesheet" href="./assets/css/styles.css">
		<script type="text/javascript" src="./assets/js/script.js"></script>
	    <title>Traveller MVC</title>
	</head>

    <body>
        <header>
        <div class="container-fluid p-0">
            <span class="position-absolute trigger">
			    <!-- hidden trigger to apply 'stuck' styles -->
			</span>
	        <nav class="navbar navbar-expand-lg navbar-light nav-color sticky-top">
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
            <div class="text-center mb-5">
                <img src="${User.photo}" class="logo" alt="">
                <h2 class="my-1">Bem vindo <c:out value="${User.name}"/>!</h2>
                <p><c:out value="${User.email}"/></p>
            </div>

            <p class="p-3 conteudo text-light alterar">Dados da conta
                <button class="btn btn-outline-light " id="alterar"  onclick="habilitarCampos()"> <i class="fas fa-user-edit"></i> Alterar seus dados</button>
            </p>
            

            <form method="post" id="dados-conta" action="./update_account">
                
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-5">
                        <div class="form-group ">
                            <label for="nome" class="titulos">Nome</label>
                            <input type="text" class="form-control alterar" id="nome" name="nome" value="<c:out value="${User.name}"/>"
                                disabled required>
                        </div>
                    </div>

                    <div class="col-12 col-sm-12 col-md-3">
                        <div class="form-group">
                            <label for="email" class="titulos alterar">Email</label>
                             <input type="email" class="form-control alterar" id="email" name="email" value="<c:out value="${User.email}"/>"
                                disabled required>
                        </div>
                    </div>
                    
                	<div class="col-12 col-sm-12 col-md-2">
                        <div class="form-group">
                            <label for="cpf" class="titulos">CPF</label>
                            <div class="input-group mb-2">
                                <input type="text" class="form-control alterar" id="cpf" name="cpf" value="<c:out value="${User.cpf}"/>" disabled>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-2">
                        <div class="form-group">
                            <label for="telefone" class="titulos">Celular</label>
                            <input class="form-control alterar" id="telefone" name="telefone"
                                value="<c:out value="${User.phone}"/>" disabled required>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 col-sm-12 col-md-2">
                        <div class="form-group">
                            <label for="data_nascimento" class="titulos">Data de Nascimento</label>
                            <input type="date" class="form-control alterar" id="data_nascimento" name="data_nascimento"
                                value="<c:out value="${User.birthDate}"/>" disabled required>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-2">
                        <div class="form-group">
                            <label for="cep" class="titulos">CEP</label>
                            <input class="form-control alterar" id="cep" name="cep"
                                value="<c:out value="${User.address.postalCode}"/>" disabled required>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-1">
                        <div class="form-group">
                            <label for="estado" class="titulos">Estado</label>
                            <input class="form-control alterar" id="estado" name="estado"
                                value="<c:out value="${User.address.state}"/>" disabled required>
                        </div>
                    </div>
					<div class="col-12 col-sm-12 col-md-4">
                        <div class="form-group">
                            <label for="cidade" class="titulos">Cidade</label>
                            <input class="form-control alterar" id="cidade" name="cidade"
                                value="<c:out value="${User.address.city}"/>" disabled required>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-3">
                        <div class="form-group">
                            <label for="bairro" class="titulos">Bairro</label>
                            <input class="form-control alterar" id="bairro" name="bairro"
                                value="<c:out value="${User.address.neighborhood}"/>" disabled required>
                        </div>
                    </div>
                </div>

                <div class="row">
                    
					<div class="col-12 col-sm-12 col-md-3">
                        <div class="form-group">
                            <label for="logradouro" class="titulos">Logradouro</label>
                            <input class="form-control alterar" id="logradouro" name="logradouro"
                                value="<c:out value="${User.address.publicArea}"/>" disabled required>
                        </div>
                    </div>
					<div class="col-12 col-sm-12 col-md-1">
                        <div class="form-group">
                            <label for="numero" class="titulos">Numero</label>
                            <input class="form-control alterar" id="numero" name="numero"
                                value="<c:out value="${User.address.number}"/>" disabled required>
                        </div>
                    </div>
					<div class="col-12 col-sm-12 col-md-2">
                        <div class="form-group">
                            <label for="complemento" class="titulos">Complemento</label>
                            <input class="form-control alterar" id="complemento" name="complemento"
                                value="<c:out value="${User.address.additionalInfo}"/>" disabled required>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-3	">
						<div class="form-group disabled">
							<label for="senha" class="titulos">Digite sua senha</label>
							<div class="input-group mb-2">
								<input type="password" class="form-control alterar" id="senha" name="senha"
									disabled required>
							</div>
						</div>
					</div>              
					<div class="col-12 col-sm-12 col-md-3">
						<div class="form-group disabled">
							<label for="confirmar_senha" class="titulos">Redigite sua senha</label>
							<div class="input-group mb-2">
								<input type="password" class="form-control alterar" id="confirma_senha" name="confirma_senha"
									disabled required>
							</div>
						</div>
					</div>  
                </div>

                <div class="d-flex justify-content-end">
                    <button type="submit" class="btn gravar" id="gravar" disabled>Gravar Alteracoes</button>
                </div>

            </form>
        </div>

        <footer>
	        <div class="container-fluid p-0 m-0">
	            <div class="final-rodape">
	
	            </div>                    
	        </div>
	    </footer>

        <script src="./assets/js/show_password.js"></script>
        <script src="./assets/js/permite_alterar_dados.js"></script>

    </body>
</html>