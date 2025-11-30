package model;

import java.io.Serializable;

public class OrderItem implements Serializable {

    private static final long serialVersionUID = 1L;

    private Product product;
    private int quantity;

    public OrderItem(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public double calculateSubtotal() {
        return product.getPrice() * quantity;
    }

    public Product getProduto() { return product; }
    public int getQuantity() { return quantity; }
}