<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.ProdutoDao" %>
<%@ page import="model.Produto" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
	<head>
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="css/Style.css" rel="stylesheet" type="text/css">
		<meta charset="UTF-8">
		<title>PÁGINA PRINCIPAL</title>
	</head>

	<body>
		
		<h1>Gerenciamento de Produtos</h1>
	
		<form action="index.jsp" method="post">
			<div class="inputs-rows">	
				<label>Pesquisar por Descrição: </label> 
				<input type="text" name="descricao">
				<input type="submit" value="Pesquisar" class="btn btn-success">
			</div>
		</form>
		
				<%
			try{
				ProdutoDao produtoDao = new ProdutoDao();
				
				out.print("<table class='table table-striped'>");
				
				out.print("<tr>");
				out.print("<th>Código do Produto</th>");
				out.print("<th>Descrição do Produto</th>");
				out.print("<th>Preço do Produto</th>");
				out.print("<th>Editar</th>");
				out.print("<th>Excluir</th>");
				out.print("</tr>");
				
				if(request.getParameter("descricao") == "" || request.getParameter("descricao") == null){
					ArrayList<Produto> lista = produtoDao.listarProdutos();
					
					for(int num = 0; num < lista.size(); num++){
						out.print("<tr>");
						out.print("<td>"+lista.get(num).getCodigo_produto()+"</td>");
						out.print("<td>"+lista.get(num).getDescricao()+"</td>");
						out.print("<td>"+lista.get(num).getPreco()+"</td>");
						out.print("<td><a href='alterar.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao()+"&preco="+lista.get(num).getPreco()+"'>update</a></td>");
						out.print("<td><a href='excluir.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao()+"&preco="+lista.get(num).getPreco()+"'>excluir</a></td>");
						out.print("</tr>");
					}
				}
				
				else{
					ArrayList<Produto> listaProduto = produtoDao.listarProdutosPorDescricao(request.getParameter("descricao"));
					
					for(int num = 0; num < listaProduto.size(); num++){
						out.print("<tr>");
						out.print("<td>"+listaProduto.get(num).getCodigo_produto()+"</td>");
						out.print("<td>"+listaProduto.get(num).getDescricao()+"</td>");
						out.print("<td>"+listaProduto.get(num).getPreco()+"</td>");
						out.print("<td><a href='alterar.jsp?codigo="+listaProduto.get(num).getCodigo_produto()+"&descricao="+listaProduto.get(num).getDescricao()+"&preco="+listaProduto.get(num).getPreco()+"'>update</a></td>");
						out.print("<td><a href='excluir.jsp?codigo="+listaProduto.get(num).getCodigo_produto()+"&descricao="+listaProduto.get(num).getDescricao()+"&preco="+listaProduto.get(num).getPreco()+"'>excluir</a></td>");
						out.print("</tr>");
					}					
				
				
				
				}
				

				
				
				out.print("</table>");
				
				
			}catch(Exception erro){
				throw new RuntimeException(erro.getMessage());
			}
		%>
		

		<br><a href="inserir.jsp" class="btn btn-primary">NOVO PRODUTO</a>

	<!-- imports js -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>	
	</body>
</html>
