package model;

import java.io.Serializable;

public abstract class Person implements Serializable {


    private String name;
    private String cpf;
    private String email;
    private String phone;
    private Address address;


    public Person() {
    }

    public Person(String name, String cpf, String email) {
        setName(name);
        setCpf(cpf);
        setEmail(email);
    }

    public Person(String name, String cpf, String email, String phone, Address address) {
        this(name, cpf, email);
        setPhone(phone);
        setAddress(address);
    }

    public abstract String getIdentification();


    public String getName() {
        return name;
    }

    public void setName(String name) {
        if (name == null || name.isBlank()) {
            throw new IllegalArgumentException("Nome não pode estar vazio.");
        }
        this.name = name;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        if (cpf == null || cpf.length() != 11) {
            throw new IllegalArgumentException("CPF deve ter 11 dígitos numéricos.");
        }
        this.cpf = cpf;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        if (email == null || !email.contains("@")) {
            throw new IllegalArgumentException("Email inválido (precisa ter @).");
        }
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Nome: " + name + " | CPF: " + cpf;
    }
}