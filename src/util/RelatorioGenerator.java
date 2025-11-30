package util;

import model.Order;
import java.util.List;

public class RelatorioGenerator {

    public static void gerarRelatorio(List<Order> lista) {
        String texto = "=== RELATORIO DE VENDAS ===\n\n";
        double totalGeral = 0;

        for (Order p : lista) {
            texto += "Data: " + p.getDate() + " | Cliente: " + p.getCustomer().getName();
            texto += " | Valor: R$ " + p.calculateTotal() + "\n";
            totalGeral += p.calculateTotal();
        }

        texto += "\nTOTAL GERAL: R$ " + totalGeral;

        ArquivoUtil.escreverRelatorio(texto, "relatorio_vendas.txt");
    }
}