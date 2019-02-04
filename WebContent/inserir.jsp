<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="css/Style.css" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" 
		integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
		<title>PAGE INSERIR</title>
	</head>

	<body>
		<style>
			html{
				width: 100%;
				height: 100%;
			}
		
			body{
				height: 100%;
				margin: 0 !important;
				display: flex;
				justify-content: center;
				align-items: center;
			}
		
			form{
				display: flex;
				flex-direction: column;
				width: 20%;
				justify-content: center !important;
				align-items: center;				
			}
			
			input, label{
				margin-top: 10px;
			}
			
			input[type="submit"]{
				width: 50%;
			}
		</style>
	
		<h1>Criar Produto <i class="fas fa-plus-circle"></i> </h1>
		<form action="executa_inserir.jsp" method="post">
			<label>Descrição do Produto:</label>
			<input type="text" name="descricao" required>
			
			<label>Preço do Produto:</label>
			<input type="number" name="preco" required>
			
			<input type="submit" value="cadastrar">
		</form>
		
	</body>
</html>