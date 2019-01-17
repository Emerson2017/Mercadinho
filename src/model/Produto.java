package model;

public class Produto {
	private int codigo_produto;
	private String descricao;
	private double preco;
	
	public int getCodigo_produto() {
		return this.codigo_produto;
	}
	
	public void setCodigo_produto(int codigo_produto) {
		this.codigo_produto = codigo_produto;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
	
	
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	
	public double getPreco() {
		return this.preco;
	}
	
	
	
	public void setPreco(double preco) {
		this.preco = preco;
	}
		
}
