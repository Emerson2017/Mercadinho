<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Produto" %>
<%@ page import="dao.ProdutoDao" %>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP PAGE UPDATE</title>
	</head>
	
	<body>
		<% 
		
			try{
				Produto produto = new Produto();
				ProdutoDao produtoDao = new ProdutoDao();
				
				if(request.getParameter("descricao").equals("") || request.getParameter("preco").equals("")){
					response.sendRedirect("index.jsp");
				}
				
				produto.setDescricao(request.getParameter("descricao"));
				produto.setPreco(Double.parseDouble(request.getParameter("preco")));
				produto.setCodigo_produto(Integer.parseInt(request.getParameter("codigo")));
				
				produtoDao.Atualiza(produto);
				response.sendRedirect("index.jsp");
				
			}catch(Exception erro){
				throw new RuntimeException(erro.getMessage());
			}
		
		
		%>
		
	</body>
</html>