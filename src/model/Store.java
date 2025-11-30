package model;

import java.io.Serializable;
import java.util.ArrayList;

public class Store implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    private int id;
    private String name;
    private String cnpj;
    private ArrayList<Product> products;
    
    public Store() {
        this.products = new ArrayList<>();
    }
    
    public Store(int id, String name, String cnpj) {
        this();
        setId(id);
        setName(name);
        setCnpj(cnpj);
    }
    
    public void addProduct(Product product) {
        if (product == null) {
            throw new IllegalArgumentException("Produto não pode ser nulo.");
        }
        products.add(product);
        System.out.println("Produto '" + product.getName() + "' adicionado à loja " + this.name);
    }
    
    public void removeProduct(int productId) {
        boolean removed = false;
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == productId) {
                System.out.println("Produto '" + products.get(i).getName() + "' removido da loja.");
                products.remove(i);
                removed = true;
                break;
            }
        }
        if (!removed) {
            System.out.println("Produto com ID " + productId + " não encontrado.");
        }
    }
    
    public Product findProductById(int id) {
        for (Product p : products) {
            if (p.getId() == id) {
                return p;
            }
        }
        return null;
    }
    
    public ArrayList<Product> findProductsByName(String name) {
        ArrayList<Product> foundProducts = new ArrayList<>();
        for (Product p : products) {
            if (p.getName().toLowerCase().contains(name.toLowerCase())) {
                foundProducts.add(p);
            }
        }
        return foundProducts;
    }
    
    public void listProducts() {
        if (products.isEmpty()) {
            System.out.println("A loja " + name + " não possui produtos cadastrados.");
            return;
        }
        
        System.out.println("\n=== Produtos da Loja: " + name + " ===");
        for (Product p : products) {
            System.out.println("ID: " + p.getId() + " | " + p.getName() +
                             " | R$ " + p.getPrice() + " | Estoque: " + p.getStock());
        }
        System.out.println("Total de produtos: " + products.size());
    }
    
    public double calculateTotalStockValue() {
        double total = 0;
        for (Product p : products) {
            total += p.getPrice() * p.getStock();
        }
        return total;
    }
    
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        if (id <= 0) {
            throw new IllegalArgumentException("ID da loja deve ser positivo.");
        }
        this.id = id;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        if (name == null || name.isBlank()) {
            throw new IllegalArgumentException("Nome da loja não pode ser vazio.");
        }
        this.name = name;
    }
    
    public String getCnpj() {
        return cnpj;
    }
    
    public void setCnpj(String cnpj) {
        if (cnpj == null || cnpj.length() != 14) {
            throw new IllegalArgumentException("CNPJ deve ter 14 dígitos.");
        }
        this.cnpj = cnpj;
    }
    
    public ArrayList<Product> getProducts() {
        return products;
    }
    
    @Override
    public String toString() {
        return "Loja: " + name + " (CNPJ: " + cnpj + ") - " + products.size() + " produtos";
    }
}
