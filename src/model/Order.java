package model;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

public class Order implements Serializable {

    private static final long serialVersionUID = 1L;

    private int id;
    private Customer customer;
    private LocalDate data;
    private ArrayList<OrderItem> items = new ArrayList<>();

    public Order() {
    }

    public Order(int id, Customer customer, LocalDate data) {
        this.id = id;
        this.customer = customer;
        this.data = data;
    }

    public void addItem(OrderItem item) {
        items.add(item);
    }

    public double calculateTotal() {
        double total = 0;
        for (OrderItem i : items) {
            total += i.calculateSubtotal();
        }
        return total;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public LocalDate getDate() {
        return data;
    }

    public void setData(LocalDate data) {
        this.data = data;
    }

    public ArrayList<OrderItem> getItems() {
        return items;
    }

    @Override
    public String toString() {
        String formattedDate = (data != null) ? data.format(DateTimeFormatter.ofPattern("dd/MM/yyyy")) : "Sem data";

        return "Pedido #" + id +
                "\nData: " + formattedDate +
                "\nCliente: " + customer.getName() +
                "\nQtd Itens: " + items.size() +
                "\nTotal: R$ " + String.format("%.2f", calculateTotal());
    }
}