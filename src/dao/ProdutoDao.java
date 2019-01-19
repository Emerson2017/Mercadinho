package dao;

import model.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import dao.ConnectionFactory;
import java.sql.ResultSet;
import java.util.ArrayList;


public class ProdutoDao {

	private Connection conexao;
	private PreparedStatement stmt = null;
	private ArrayList<Produto> listaProdutos = new ArrayList<>();
	private ResultSet rs;
	
	public ProdutoDao(){
		this.conexao = new ConnectionFactory().getConnection();
	}
	
	
	public void Adiciona(Produto produto) {
		String sql = "INSERT INTO produto (descricao, preco) values (?,?)";
		
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
	
	public void Deleta(int codigo) {
		String sql = "DELETE from produto WHERE codigo_produto = "+codigo;
		
		try {
			stmt = conexao.prepareStatement(sql);
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
	
	
	public ArrayList<Produto> listarProdutos(){
		String sql = "SELECT * FROM produto";
		
		try {
			stmt = conexao.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				Produto produto = new Produto();
				produto.setCodigo_produto(rs.getInt("codigo_produto"));
				produto.setDescricao(rs.getString("descricao"));
				produto.setPreco(rs.getDouble("preco"));
				listaProdutos.add(produto);
			}
			
			return listaProdutos;
			
		}catch (Exception erro) {
			throw new RuntimeException("Erro ao pegar todos os produtos: "+erro);
		}
	}
	
	public ArrayList<Produto> listarProdutosPorDescricao(String descricao){
		String sql = "SELECT * FROM produto WHERE descricao LIKE '%"+descricao+"%' ";
		
		try {
			stmt = conexao.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				Produto produto = new Produto();
				produto.setCodigo_produto(rs.getInt("codigo_produto"));
				produto.setDescricao(rs.getString("descricao"));
				produto.setPreco(rs.getDouble("preco"));
				listaProdutos.add(produto);
			}
			
			return listaProdutos;
			
		}catch (Exception erro) {
			throw new RuntimeException("Erro ao pegar todos os produtos: "+erro);
		}
	}
	
	
	
	
	
	
	
	
	
	
}