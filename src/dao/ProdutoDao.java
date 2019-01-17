package dao;

import model.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import dao.ConnectionFactory;

public class ProdutoDao {

	Connection conexao;
	
	public ProdutoDao(){
		this.conexao = new ConnectionFactory().getConnection();
	}
	
	
	public void Adiciona(Produto produto) {
		String sql = "INSERT INTO produto (descricao, preco) values (?,?)";
		PreparedStatement stmt = null;
		
		try {
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, produto.getDescricao());
			stmt.setDouble(2, produto.getPreco());
			stmt.execute();
		}catch (Exception erro) {
			throw new RuntimeException("Erro ao tentar inserir produto " + erro.getMessage());
		}finally {
			try {
				stmt.close();
			}catch (Exception erro) {
				throw new RuntimeException("Erro ao tentar fechar conexao: "+erro.getMessage());
			}
		}
	}
	
	public void Atualiza(Produto produto) {
		String sql = "UPDATE produto SET descricao = ?, preco = ? WHERE codigo_produto = ?";
		PreparedStatement stmt = null;
		
		try {
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, produto.getDescricao());
			stmt.setDouble(2, produto.getPreco());
			stmt.setInt(3, produto.getCodigo_produto());
			stmt.execute();
		}catch (Exception erro) {
			throw new RuntimeException("Erro ao tentar atualizar produto " + erro.getMessage());
		}finally {
			try {
				stmt.close();
			}catch (Exception erro) {
				throw new RuntimeException("Erro ao tentar fechar conexao: "+erro.getMessage());
			}
		}
	}
	
	public void Deleta(Produto produto) {
		String sql = "DELETE from produto WHERE codigo_produto = ?";
		PreparedStatement stmt = null;
		
		try {
			stmt = conexao.prepareStatement(sql);
			stmt.setInt(1, produto.getCodigo_produto());
			stmt.execute();
		}catch (Exception erro) {
			throw new RuntimeException("Erro ao tentar deletar produto " + erro.getMessage());
		}finally {
			try {
				stmt.close();
			}catch (Exception erro) {
				throw new RuntimeException("Erro ao tentar fechar conexao: "+erro.getMessage());
			}
		}
	}
	
}