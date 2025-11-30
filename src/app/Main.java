package app;

import dao.CustomerDAO;
import model.*;
import service.ViaCepService;
import util.*;
import exceptions.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Scanner;

public class Main {

    private static final Scanner sc = new Scanner(System.in);

    private static ArrayList<Customer> customers = new ArrayList<>();
    private static ArrayList<Product> products = new ArrayList<>();
    private static ArrayList<Order> orders = new ArrayList<>();

    public static void main(String[] args) {

        carregarDados();

        if (customers.isEmpty() || products.isEmpty()) {
            inicializarDadosTeste();
        }

        int opcao;

        do {
            System.out.println("\n===== MENU PRINCIPAL (E-COMMERCE) =====");
            System.out.println("1 - Cadastrar Cliente (API + Banco de Dados)");
            System.out.println("2 - Cadastrar Produto");
            System.out.println("3 - Criar Pedido");
            System.out.println("4 - Listar Clientes (Memória)");
            System.out.println("5 - Listar Produtos");
            System.out.println("6 - Listar Pedidos");
            System.out.println("7 - Gerar Relatório de Vendas (Arquivo)");
            System.out.println("0 - Sair e Salvar");
            System.out.print("Escolha: ");

            try {
                opcao = Integer.parseInt(sc.nextLine());
            } catch (NumberFormatException e) {
                opcao = -1;
            }

            switch (opcao) {
                case 1: cadastrarCliente(); break;
                case 2: cadastrarProduto(); break;
                case 3: criarPedido(); break;
                case 4: listarClientes(); break;
                case 5: listarProdutos(); break;
                case 6: listarPedidos(); break;
                case 7:
                    RelatorioGenerator.gerarRelatorio(orders);
                    System.out.println("Relatório gerado com sucesso na pasta do projeto!");
                    break;
                case 0:
                    System.out.println("Salvando dados e saindo...");
                    salvarDados();
                    break;
                default: System.out.println("Opção inválida!");
            }

        } while (opcao != 0);
    }

    private static void cadastrarCliente() {
        try {
            System.out.println("\n--- Cadastro de Cliente ---");
            System.out.print("Nome: ");
            String nome = sc.nextLine();

            System.out.print("CPF (11 dígitos): ");
            String cpf = sc.nextLine();

            if (!ValidadorCPF.validar(cpf)) {
                throw new CPFInvalidoException("CPF inválido! O cálculo dos dígitos não confere.");
            }

            System.out.print("Email: ");
            String email = sc.nextLine();
            System.out.print("Telefone: ");
            String tel = sc.nextLine();
            System.out.print("Código do cliente: ");
            String cod = sc.nextLine();

            System.out.print("Digite o CEP para buscar o endereço: ");
            String cep = sc.nextLine();

            ViaCepService viaCep = new ViaCepService();
            Address address = viaCep.getAddress(cep);

            if (address != null) {
                System.out.println("Endereço Encontrado: " + address.getStreet() + ", " + address.getCity() + "-" + address.getState());
                System.out.print("Número da Casa: ");
                String numero = sc.nextLine();
                address.setNumber(numero);
            } else {
                System.out.println("CEP não encontrado ou erro na API. Cadastre manualmente.");
                address = new Address();
                address.setCep(cep);
                System.out.print("Rua: "); address.setStreet(sc.nextLine());
                System.out.print("Bairro: "); address.setNeighborhood(sc.nextLine());
                System.out.print("Cidade: "); address.setCity(sc.nextLine());
                System.out.print("Estado (UF): "); address.setState(sc.nextLine());
                System.out.print("Número: "); address.setNumber(sc.nextLine());
            }

            Customer c = new Customer(nome, cpf, email, tel, address, cod);

            customers.add(c);

            CustomerDAO dao = new CustomerDAO();
            dao.save(c);

        } catch (CPFInvalidoException e) {
            System.out.println("ERRO DE VALIDAÇÃO: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("Erro genérico ao cadastrar: " + e.getMessage());
            e.printStackTrace();
        }
    }

    private static void cadastrarProduto() {
        try {
            System.out.println("\n--- Cadastro de Produto ---");
            System.out.print("ID: ");
            int id = Integer.parseInt(sc.nextLine());
            System.out.print("Nome: ");
            String nome = sc.nextLine();
            System.out.print("Preço: ");
            double preco = Double.parseDouble(sc.nextLine());
            System.out.print("Estoque: ");
            int est = Integer.parseInt(sc.nextLine());

            Product p = new Product(id, nome, preco, est);
            products.add(p);
            System.out.println("Produto cadastrado!");
        } catch (NumberFormatException e) {
            System.out.println("Erro: Digite valores numéricos válidos para Preço/Estoque/ID.");
        }
    }

    private static void criarPedido() {
        System.out.println("\n--- Criar Pedido ---");

        if (customers.isEmpty() || products.isEmpty()) {
            System.out.println("Erro: Cadastre pelo menos 1 cliente e 1 produto antes.");
            return;
        }

        try {
            System.out.print("ID do pedido: ");
            int id = Integer.parseInt(sc.nextLine());

            System.out.println("Escolha o cliente pelo índice:");
            for (int i = 0; i < customers.size(); i++) {
                System.out.println(i + " - " + customers.get(i).getName());
            }
            int idxCliente = Integer.parseInt(sc.nextLine());

            if (idxCliente < 0 || idxCliente >= customers.size()) {
                System.out.println("Índice de cliente inválido.");
                return;
            }

            Order order = new Order(id, customers.get(idxCliente), LocalDate.now());

            int op = -1;
            do {
                System.out.println("\nAdicionar produtos:");
                for (int i = 0; i < products.size(); i++) {
                    System.out.println(i + " - " + products.get(i).getName() + " (R$ " + products.get(i).getPrice() + ")");
                }

                System.out.print("Escolha o produto pelo índice (ou -1 para finalizar): ");
                try {
                    op = Integer.parseInt(sc.nextLine());
                } catch(Exception e) { op = -1; }

                if (op >= 0 && op < products.size()) {
                    System.out.print("Quantidade: ");
                    int qtd = Integer.parseInt(sc.nextLine());

                    Product prodSelecionado = products.get(op);

                    try {
                        OrderItem item = new OrderItem(prodSelecionado, qtd);
                        order.addItem(item);
                        System.out.println("Item adicionado!");
                    } catch (Exception e) {
                        System.out.println("Erro ao adicionar item: " + e.getMessage());
                    }
                }

            } while (op != -1);

            if (!order.getItems().isEmpty()) {
                orders.add(order);
                System.out.println("Pedido criado com sucesso!");
            } else {
                System.out.println("Pedido cancelado (nenhum item adicionado).");
            }

        } catch (NumberFormatException e) {
            System.out.println("Erro: Entrada inválida. Digite números.");
        }
    }

    private static void listarClientes() {
        System.out.println("\n--- Lista de Clientes ---");
        if (customers.isEmpty()) System.out.println("Nenhum cliente cadastrado.");
        for (Customer c : customers) {
            System.out.println(c.getIdentification() + " | CPF: " + c.getCpf());
        }
    }

    private static void listarProdutos() {
        System.out.println("\n--- Lista de Produtos ---");
        if (products.isEmpty()) System.out.println("Nenhum produto cadastrado.");
        for (Product p : products) {
            System.out.println(p);
        }
    }

    private static void listarPedidos() {
        System.out.println("\n--- Lista de Pedidos ---");
        if (orders.isEmpty()) System.out.println("Nenhum pedido realizado.");
        for (Order p : orders) {
            System.out.println("ID: " + p.getId() + " | Data: " + p.getDate() + " | Cliente: " + p.getCustomer().getName() + " | Total: R$ " + String.format("%.2f", p.calculateTotal()));
        }
    }

    private static void salvarDados() {
        ArquivoUtil.salvar(customers, "clientes.db");
        ArquivoUtil.salvar(products, "produtos.db");
        ArquivoUtil.salvar(orders, "pedidos.db");
    }

    @SuppressWarnings("unchecked")
    private static void carregarDados() {
        try {
            Object c = ArquivoUtil.carregar("clientes.db");
            if (c != null) customers = (ArrayList<Customer>) c;

            Object p = ArquivoUtil.carregar("produtos.db");
            if (p != null) products = (ArrayList<Product>) p;

            Object ped = ArquivoUtil.carregar("pedidos.db");
            if (ped != null) orders = (ArrayList<Order>) ped;

            System.out.println("Dados carregados com sucesso.");
        } catch (Exception e) {
            System.out.println("Iniciando com base de dados vazia.");
        }
    }

    private static void inicializarDadosTeste() {
        System.out.println("Gerando dados de teste automáticos (Histórico de 6 meses)...");

        Address addr1 = new Address();
        addr1.setStreet("Rua A"); addr1.setNumber("123"); addr1.setCity("São Paulo"); addr1.setState("SP");

        Address addr2 = new Address();
        addr2.setStreet("Rua B"); addr2.setNumber("456"); addr2.setCity("Rio de Janeiro"); addr2.setState("RJ");

        Customer c1 = new Customer("Ana Souza", "11122233344", "ana@gmail.com", "9999-9999", addr1, "C01");
        Customer c2 = new Customer("Carlos Lima", "55566677788", "carlos@hotmail.com", "8888-8888", addr2, "C02");
        customers.add(c1);
        customers.add(c2);

        Product p1 = new Product(1, "Smartphone", 1500.00, 20);
        Product p2 = new Product(2, "Fone Bluetooth", 200.00, 50);
        Product p3 = new Product(3, "Capa Protetora", 50.00, 100);
        products.add(p1);
        products.add(p2);
        products.add(p3);

        Order ped1 = new Order(101, c1, LocalDate.now().minusMonths(5));
        ped1.addItem(new OrderItem(p1, 1));
        orders.add(ped1);

        Order ped2 = new Order(102, c2, LocalDate.now().minusMonths(3));
        ped2.addItem(new OrderItem(p2, 2));
        ped2.addItem(new OrderItem(p3, 1));
        orders.add(ped2);

        Order ped3 = new Order(103, c1, LocalDate.now());
        ped3.addItem(new OrderItem(p3, 5));
        orders.add(ped3);

        System.out.println("Dados de teste gerados!");
    }
}