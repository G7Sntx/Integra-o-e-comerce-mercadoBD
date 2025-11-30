package model;

import java.io.Serializable;

public class Address implements Serializable {
    private static final long serialVersionUID = 1L;

    private String cep;
    private String street;
    private String neighborhood;
    private String city;
    private String state;
    private String number;

    public Address() {}

    public String getCep() { return cep; }
    public String getStreet() { return street; }
    public String getNeighborhood() { return neighborhood; }
    public String getCity() { return city; }
    public String getState() { return state; }
    public String getNumber() { return number; }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public void setStreet(String street) {
        this.street = (street != null) ? street : "";
    }

    public void setNeighborhood(String neighborhood) {
        this.neighborhood = (neighborhood != null) ? neighborhood : "";
    }

    public void setCity(String city) {
        this.city = (city != null) ? city : "";
    }

    public void setState(String state) {
        this.state = (state != null) ? state : "";
    }

    public void setNumber(String number) {
        this.number = (number != null) ? number : "";
    }

    @Override
    public String toString() {
        return street + ", " + number + " - " + neighborhood + ". " + city + "/" + state + " (" + cep + ")";
    }
}