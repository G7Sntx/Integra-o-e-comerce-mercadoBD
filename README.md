# 🛒 Sistema de Vendas (E-Commerce POO)

## 👤 Integrante
* **Anderson Guilherme**

## 📄 Descrição
Sistema de vendas desenvolvido em Java que gerencia **produtos, clientes, pedidos e relatórios**. O projeto foi atualizado para utilizar persistência em **Banco de Dados (MySQL)** e integração com **API externa (ViaCEP)** para cadastro inteligente de endereços.

O código-fonte foi refatorado para o inglês (`Customer`, `Product`, `Order`), mantendo a interface de usuário em Português (PT-BR), atendendo aos requisitos da disciplina de Programação Orientada a Objetos.

## 🚀 Tecnologias Utilizadas
* **Linguagem:** Java (JDK 17+)
* **Banco de Dados:** MySQL 8.0
* **Conexão:** JDBC (MySQL Connector)
* **Integração API:** ViaCEP (HTTP Client nativo)
* **IDE Recomendada:** IntelliJ IDEA ou Eclipse

## ✨ Funcionalidades
- [x] **Cadastro de Clientes:** Preenchimento automático de endereço (Rua, Bairro, Cidade) via API ao digitar o CEP.
- [x] **Gestão de Estoque:** Controle de produtos e quantidades.
- [x] **Pedidos:** Criação de pedidos com cálculo automático de valores.
- [x] **Persistência Real:** Dados salvos em tabelas relacionais no MySQL (DAO).
- [x] **Relatórios:** Geração de arquivos de texto com histórico de vendas.
- [x] **Tratamento de Erros:** Exceções personalizadas para validações de CPF e saldo.

## ⚙️ Guia de Instalação e Execução

### 1. Configuração do Banco de Dados
1. Certifique-se de ter o MySQL instalado.
2. Crie um banco de dados chamado `mercadobd`.
3. Importe o arquivo SQL fornecido na pasta raiz: `todos_os_arquivos.sql`.
   > Isso criará as tabelas `cliente`, `produto`, `pedido`, etc.

### 2. Configuração do Projeto
1. Abra o projeto na sua IDE.
2. Adicione a biblioteca do driver MySQL (`mysql-connector-j-8.3.0.jar`) às dependências do projeto.
3. Verifique o arquivo `src/util/DatabaseConnection.java`:
    * Confirme se a senha do banco (`PASSWORD`) corresponde à sua configuração local (geralmente vazia `""` ou `"root"`).

### 3. Como Executar
1. Compile o projeto.
2. Execute a classe principal: `src/app/Main.java`.
3. Utilize o menu no terminal para interagir.

---

## 📚 Conceitos Implementados (POO)

* **Estruturas Lógicas:** Algoritmos de busca, filtros e ordenação (`RelatorioGenerator`).
* **Encapsulamento:** Atributos privados e validação via Getters/Setters (`model/`).
* **Herança e Abstração:** Classe abstrata `Person` herdada por `Customer`, `Employee` e `Supplier`.
* **Polimorfismo:** Manipulação de listas genéricas e tratamentos comuns.
* **Relacionamentos:**
    * 1:N (Loja -> Produtos)
    * N:N (Pedido -> Produtos via `OrderItem`)
* **Padrão DAO:** Separação da lógica de acesso ao banco (`CustomerDAO`).
* **Exceptions Customizadas:**
    * `exceptions.CPFInvalidoException`
    * `exceptions.InsufficientBalanceException`

## 📂 Estrutura do Projeto
* `src/model`: Classes de domínio (Customer, Product, Address...).
* `src/dao`: Acesso ao Banco de Dados.
* `src/service`: Lógica de API (ViaCepService).
* `src/util`: Conexão JDBC e Validadores.
* `src/app`: Classe Main e Menus.

## 📝 Histórico de Desenvolvimento (Commits)
* **G7Sntx:** Configuração inicial e criação da estrutura de classes (Model/Util).
* **G7Sntx:** Implementação de Herança (Person) e Polimorfismo nas listas.
* **G7Sntx:** Criação das Exceptions personalizadas e validadores de CPF.
* **G7Sntx:** Refatoração completa do código para Inglês (Requisito POO).
* **G7Sntx:** Implementação da camada DAO e conexão JDBC com MySQL.
* **G7Sntx:** Desenvolvimento do `ViaCepService` para consumo de API REST.
* **G7Sntx:** Ajustes finais no SQL e integração do cadastro de endereços.

---

## obs 
"Caso o driver não seja reconhecido automaticamente,
adicione o arquivo .jar localizado na pasta /libs
às dependências do projeto na sua IDE."
 ---

*Projeto acadêmico - 2025*