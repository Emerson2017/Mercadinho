package test;

import java.sql.Connection;

import dao.ConnectionFactory;

public class TestaConcexao {

	public static void main(String[] args) {

		try {
			 Connection conexao = new ConnectionFactory().getConnection();
			System.out.println("Conexao aberta !!");
			conexao.close();
		}catch (Exception e) {
			throw new RuntimeException("erro na conexao: "+ e.getMessage());
		}
	}

}
