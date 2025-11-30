package model;

public class Manager extends Employee {
    private static final long serialVersionUID = 1L;
    private double annualBonus;


    public Manager() {
        super();
    }


    public Manager(String name, String cpf, String jobTitle, double salary, double annualBonus) {
        super(name, cpf, jobTitle, salary);
        this.annualBonus = annualBonus;
    }

    public double getAnnualBonus() {
        return annualBonus;
    }

    public void setAnnualBonus(double annualBonus) {
        if (annualBonus < 0) {
            throw new IllegalArgumentException("Bônus não pode ser negativo");
        }
        this.annualBonus = annualBonus;
    }

    @Override
    public String getIdentification() {
        return "Gerente: " + getName() + " (Cargo: " + getJobTitle() + ")";
    }

    public double calculateSalaryWithBonus() {
        return getSalary() + (annualBonus / 12);
    }
}