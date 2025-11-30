package model;

public class Supplier extends Person {

    private static final long serialVersionUID = 1L;

    private String tradeName;
    private String cnpj;

    public Supplier() {
        super();
    }

    public Supplier(String name, String cpf, String email, String tradeName, String cnpj) {
        super(name, cpf, email);

        this.tradeName = tradeName;
        this.cnpj = cnpj;
    }

    @Override
    public String getIdentification() {

        return "Supplier: " + tradeName + " (cnpj: " + cnpj + ")";
    }

    public String getTradeName() {
        return tradeName;
    }

    public void setTradeName(String tradeName) {
        this.tradeName = tradeName;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }
}