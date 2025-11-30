package model;
import java.io.Serializable;

public class Product implements Serializable {

    private static final long serialVersionUID = 1L;

    private int id;
    private String nome;
    private double preco;
    private int estoque;

    public Product() {
    }

    public Product(int id, String nome, double preco, int estoque) {
        setId(id);
        setNome(nome);
        setPreco(preco);
        setEstoque(estoque);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        if (id <= 0) throw new IllegalArgumentException("ID inválido.");
        this.id = id;
    }

    public String getName() {
        return nome;
    }

    public void setNome(String nome) {
        if (nome == null || nome.isBlank())
            throw new IllegalArgumentException("Nome inválido.");
        this.nome = nome;
    }

    public double getPrice() {
        return preco;
    }

    public void setPreco(double preco) {
        if (preco <= 0) throw new IllegalArgumentException("Preço inválido.");
        this.preco = preco;
    }

    public int getStock() {
        return estoque;
    }

    public void setEstoque(int estoque) {
        if (estoque < 0) throw new IllegalArgumentException("Estoque inválido.");
        this.estoque = estoque;
    }

    @Override
    public String toString() {
        return "Produto: " + nome +
                "\nID: " + id +
                "\nPreço: R$" + preco +
                "\nEstoque: " + estoque;
    }
}