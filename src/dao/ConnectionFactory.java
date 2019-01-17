package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	public Connection getConnection() {	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/mercado", "root", "1q2w3e4r");
		}catch (Exception error) {
			throw new RuntimeException("Erro ao estabelecer conexao com o banco: " + error);
		}
	}
}
