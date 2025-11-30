package service;

import model.Address;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.io.IOException;

public class ViaCepService {

    public Address getAddress(String cep) {
        Address address = new Address();
        try {
            String cleanCep = cep.replace("-", "").trim();
            String url = "https://viacep.com.br/ws/" + cleanCep + "/json/";

            HttpClient client = HttpClient.newHttpClient();
            HttpRequest request = HttpRequest.newBuilder().uri(URI.create(url)).build();
            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                String jsonBody = response.body();

                if (jsonBody.contains("\"erro\": \"true\"") || jsonBody.contains("\"erro\": true")) {
                    System.out.println("CEP not found.");
                    return null;
                }

                address.setStreet(extractValue(jsonBody, "logradouro"));
                address.setNeighborhood(extractValue(jsonBody, "bairro"));
                address.setCity(extractValue(jsonBody, "localidade"));
                address.setState(extractValue(jsonBody, "uf"));
                address.setCep(cleanCep); // Alterado aqui

                return address;
            }
        } catch (IOException | InterruptedException e) {
            System.err.println("Error fetching API: " + e.getMessage());
        }
        return null;
    }

    private String extractValue(String json, String key) {
        try {
            String pattern = "\"" + key + "\": \"";
            int startIndex = json.indexOf(pattern);
            if (startIndex == -1) return "";
            startIndex += pattern.length();
            int endIndex = json.indexOf("\"", startIndex);
            return json.substring(startIndex, endIndex);
        } catch (Exception e) {
            return "";
        }
    }
}