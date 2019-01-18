<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
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
	
		<form action="executa_inserir.jsp" method="post">
			<label>Descrição do Produto:</label>
			<input type="text" name="descricao">
			
			<label>Preço do Produto:</label>
			<input type="number" name="preco">
			
			<input type="submit" value="cadastrar">
		</form>
		
	</body>
</html>