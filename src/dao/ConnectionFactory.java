package dao;

import java.sql.Connection;
import java.sql.DriverManager;

//classe de conexão ao banco de dados
public class ConnectionFactory{
	
	// metodo do tipo Connection que retorna a conexão 
	public Connection getConnection() {
		
		// Tratativa de possíveis erros na conexão com o bloco Try/Catch 
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/mercado", "root", "1q2w3e4r");
		}catch(Exception e) {
			throw new RuntimeException("Erro ao tentar se conectar com o banco de dados: "+e.getMessage()); 
		}

	}
}