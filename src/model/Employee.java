package model;

public class Employee extends Person {

    private static final long serialVersionUID = 1L;
    private int id;
    private String jobTitle;
    private double salary;

    public Employee() {
        super();
    }

    public Employee(String name, String cpf, String jobTitle, double salary) {
        super(name, cpf, "");
        this.jobTitle = jobTitle;
        setSalary(salary);
    }

    public Employee(String nome, String cpf, String email, String jobTitle, double salary) {
        super(nome, cpf, email);
        this.jobTitle = jobTitle;
        setSalary(salary);
    }

    @Override
    public String getIdentification() {
        return "Funcionário: " + getName() + " (" + jobTitle + ")";
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public void displayDetails() {
        System.out.println("Sou um Funcionário. Matrícula: " + getId());
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        if (salary < 0) {
            throw new IllegalArgumentException("Salário não pode ser negativo.");
        }
        this.salary = salary;
    }
}