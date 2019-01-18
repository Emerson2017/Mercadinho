<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				ProdutoDao produtoDao = new ProdutoDao();
				
				if(request.getParameter("descricao").equals("") || request.getParameter("preco").equals("")){
					response.sendRedirect("index.jsp");
				}
				
				produtoDao.Deleta(Integer.parseInt(request.getParameter("codigo")));
				response.sendRedirect("index.jsp");	
				
			}catch(Exception erro){
				throw new RuntimeException(erro.getMessage());
			}
		
		
		%>
		
	</body>
</html>