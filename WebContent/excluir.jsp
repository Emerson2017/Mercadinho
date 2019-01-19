<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>EXCLUIR PRODUTO</title>
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
		<h1>EXCLUIR PRODUTO</h1>
		<form action="executa_excluir.jsp" method="post">
			<label>Código do Produto: </label>
			<input type="text" name="codigo" value="<%=request.getParameter("codigo") %>">
		
			<label>Descrição do Produto:</label>
			<input type="text" name="descricao" value="<%=request.getParameter("descricao") %>">
			
			<label>Preço do Produto:</label>
			<input type="number" name="preco" value="<%=request.getParameter("preco") %>">
			
			<input type="submit" value="Excluir">
		</form>
		
	</body>
</html>