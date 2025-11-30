package model;
import java.io.Serializable;

public class Customer extends Person implements Serializable {

    private static final long serialVersionUID = 1L;

    private String codeClient;

    public Customer() {
        super();
    }

    public Customer(String name, String cpf, String email, String phone, Address address, String codeClient) {
        super(name, cpf, email, phone, address);
        setCodeClient(codeClient);
    }

    public String getCodeClient() {
        return codeClient;
    }

    public void setCodeClient(String codeClient) {
        if (codeClient == null || codeClient.isBlank()) {
            throw new IllegalArgumentException("Código inválido.");
        }
        this.codeClient = codeClient;
    }


    @Override
    public String getIdentification() {
        return getType() + ": " + getName() + " (Cód: " + codeClient + ")";
    }
    public void displayDetails() {
        System.out.println("Sou um Cliente VIP: " + getName());
    }
    public String getType() {
        return "Cliente";
    }
}