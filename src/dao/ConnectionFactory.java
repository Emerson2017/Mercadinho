package dao;

import java.sql.Connection;
import java.sql.DriverManager;

//classe de conexao ao banco de dados
public class ConnectionFactory{
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/mercado", "root", "1q2w3e4r");
		}catch(Exception e) {
			throw new RuntimeException("Erro ao tentar se conectar com o banco de dados: "+e.getMessage()); 
		}

	}
}