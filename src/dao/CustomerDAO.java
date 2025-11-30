package dao;

import model.Customer;
import util.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CustomerDAO {

    public void save(Customer customer) {
        String sql = "INSERT INTO cliente (nomeCliente, cpf, telefone, cep, logradouro, bairro, cidade, uf, numero) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        Connection conn = DatabaseConnection.getConnection();

        if (conn == null) {
            System.err.println("❌ Erro crítico: Não foi possível conectar ao banco de dados!");
            return;
        }

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, customer.getName());
            stmt.setString(2, customer.getCpf());
            stmt.setString(3, customer.getPhone());

            if (customer.getAddress() != null) {
                stmt.setString(4, customer.getAddress().getCep());
                stmt.setString(5, customer.getAddress().getStreet());
                stmt.setString(6, customer.getAddress().getNeighborhood());
                stmt.setString(7, customer.getAddress().getCity());
                stmt.setString(8, customer.getAddress().getState());
                stmt.setString(9, customer.getAddress().getNumber());
            } else {
                stmt.setString(4, "");
                stmt.setString(5, "");
                stmt.setString(6, "");
                stmt.setString(7, "");
                stmt.setString(8, "");
                stmt.setString(9, "");
            }

            stmt.executeUpdate();
            System.out.println("✅ Cliente salvo no Banco de Dados com sucesso!");

        } catch (SQLException e) {
            System.err.println("Erro ao salvar cliente: " + e.getMessage());
        } finally {
            try {
                if (conn != null && !conn.isClosed()) {
                    conn.close();
                }
            } catch (SQLException e) {
                System.err.println("Erro ao fechar conexão: " + e.getMessage());
            }
        }
    }
}