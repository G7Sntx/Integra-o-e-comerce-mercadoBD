-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: mercadobd
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `idCargo` int NOT NULL AUTO_INCREMENT,
  `nomeCargo` varchar(100) NOT NULL,
  PRIMARY KEY (`idCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Gerente Geral'),(2,'Gerente de Setor'),(3,'Supervisor de Loja'),(4,'Caixa'),(5,'Repositor'),(6,'Estoquista'),(7,'Balconista'),(8,'Açougueiro'),(9,'Peixeiro'),(10,'Padeiro'),(11,'Auxiliar de Limpeza'),(12,'Segurança'),(13,'Fiscal de Caixa'),(14,'Conferente'),(15,'Entregador');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `nomeCategoria` varchar(100) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `logradouro` varchar(150) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `uf` varchar(50) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Lucas Almeida','111.111.111-11','(81)99999-0001',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Mariana Silva','111.111.111-12','(81)99999-0002',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Pedro Santos','111.111.111-13','(81)99999-0003',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Ana Oliveira','111.111.111-14','(81)99999-0004',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Carlos Pereira','111.111.111-15','(81)99999-0005',NULL,NULL,NULL,NULL,NULL,NULL),(6,'Beatriz Costa','111.111.111-16','(81)99999-0006',NULL,NULL,NULL,NULL,NULL,NULL),(7,'Ricardo Rocha','111.111.111-17','(81)99999-0007',NULL,NULL,NULL,NULL,NULL,NULL),(8,'Fernanda Lima','111.111.111-18','(81)99999-0008',NULL,NULL,NULL,NULL,NULL,NULL),(9,'Mateus Sousa','111.111.111-19','(81)99999-0009',NULL,NULL,NULL,NULL,NULL,NULL),(10,'Júlia Fernandes','111.111.111-20','(81)99999-0010',NULL,NULL,NULL,NULL,NULL,NULL),(11,'Rafael Gomes','111.111.111-21','(81)99999-0011',NULL,NULL,NULL,NULL,NULL,NULL),(12,'Patrícia Martins','111.111.111-22','(81)99999-0012',NULL,NULL,NULL,NULL,NULL,NULL),(13,'Bruno Dias','111.111.111-23','(81)99999-0013',NULL,NULL,NULL,NULL,NULL,NULL),(14,'Carla Mendes','111.111.111-24','(81)99999-0014',NULL,NULL,NULL,NULL,NULL,NULL),(15,'André Nascimento','111.111.111-25','(81)99999-0015',NULL,NULL,NULL,NULL,NULL,NULL),(16,'Sofia Rocha','111.111.111-26','(81)99999-0016',NULL,NULL,NULL,NULL,NULL,NULL),(17,'Thiago Araujo','111.111.111-27','(81)99999-0017',NULL,NULL,NULL,NULL,NULL,NULL),(18,'Larissa Pinto','111.111.111-28','(81)99999-0018',NULL,NULL,NULL,NULL,NULL,NULL),(19,'Eduardo Alves','111.111.111-29','(81)99999-0019',NULL,NULL,NULL,NULL,NULL,NULL),(20,'Daniela Barros','111.111.111-30','(81)99999-0020',NULL,NULL,NULL,NULL,NULL,NULL),(21,'Vitor Campos','111.111.111-31','(81)99999-0021',NULL,NULL,NULL,NULL,NULL,NULL),(22,'Aline Castro','111.111.111-32','(81)99999-0022',NULL,NULL,NULL,NULL,NULL,NULL),(23,'Gustavo Melo','111.111.111-33','(81)99999-0023',NULL,NULL,NULL,NULL,NULL,NULL),(24,'Isabela Duarte','111.111.111-34','(81)99999-0024',NULL,NULL,NULL,NULL,NULL,NULL),(25,'Fábio Ribeiro','111.111.111-35','(81)99999-0025',NULL,NULL,NULL,NULL,NULL,NULL),(26,'Mariele Santos','111.111.111-36','(81)99999-0026',NULL,NULL,NULL,NULL,NULL,NULL),(27,'Leandro Silva','111.111.111-37','(81)99999-0027',NULL,NULL,NULL,NULL,NULL,NULL),(28,'Paula Nunes','111.111.111-38','(81)99999-0028',NULL,NULL,NULL,NULL,NULL,NULL),(29,'Rodrigo Vieira','111.111.111-39','(81)99999-0029',NULL,NULL,NULL,NULL,NULL,NULL),(30,'Letícia Ramos','111.111.111-40','(81)99999-0030',NULL,NULL,NULL,NULL,NULL,NULL),(31,'gui','15058847485','8798156846','56520000','','','Buíque','PE','5'),(32,'test','15054485447','879662587','65656565','test','test','test','test','te');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entradaestoque`
--

DROP TABLE IF EXISTS `entradaestoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entradaestoque` (
  `idEntrada` int NOT NULL AUTO_INCREMENT,
  `idProduto` int NOT NULL,
  `quantidade` int NOT NULL,
  `dataEntrada` date NOT NULL,
  PRIMARY KEY (`idEntrada`),
  KEY `idProduto` (`idProduto`),
  CONSTRAINT `entradaestoque_ibfk_1` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entradaestoque`
--

LOCK TABLES `entradaestoque` WRITE;
/*!40000 ALTER TABLE `entradaestoque` DISABLE KEYS */;
INSERT INTO `entradaestoque` VALUES (1,1,50,'2025-01-10'),(2,2,30,'2025-02-12'),(3,3,40,'2025-03-05'),(4,4,100,'2025-01-20'),(5,5,60,'2025-04-02'),(6,6,45,'2025-05-15'),(7,7,70,'2025-06-10'),(8,8,120,'2025-07-01'),(9,9,20,'2025-02-20'),(10,10,50,'2025-03-18'),(11,11,40,'2025-04-25'),(12,12,30,'2025-05-03'),(13,13,25,'2025-06-18'),(14,14,60,'2025-07-22'),(15,15,20,'2025-08-05'),(16,16,100,'2025-09-10'),(17,17,50,'2025-10-01'),(18,18,30,'2025-06-30'),(19,19,40,'2025-05-20'),(20,20,200,'2025-04-12'),(21,21,80,'2025-03-30'),(22,22,20,'2025-02-28'),(23,23,45,'2025-01-15'),(24,24,60,'2025-05-08'),(25,25,10,'2025-03-12'),(26,26,35,'2025-07-09'),(27,27,90,'2025-08-20'),(28,28,40,'2025-09-14'),(29,29,25,'2025-10-05'),(30,30,70,'2025-11-01');
/*!40000 ALTER TABLE `entradaestoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque` (
  `idEstoque` int NOT NULL AUTO_INCREMENT,
  `idProduto` int NOT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`idEstoque`),
  KEY `idProduto` (`idProduto`),
  CONSTRAINT `estoque_ibfk_1` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,1,120),(2,2,80),(3,3,50),(4,4,200),(5,5,160),(6,6,90),(7,7,140),(8,8,300),(9,9,70),(10,10,95),(11,11,110),(12,12,60),(13,13,45),(14,14,85),(15,15,40),(16,16,250),(17,17,130),(18,18,55),(19,19,70),(20,20,400),(21,21,150),(22,22,35),(23,23,60),(24,24,88),(25,25,25),(26,26,72),(27,27,200),(28,28,90),(29,29,55),(30,30,120),(31,31,95),(32,32,48),(33,33,160),(34,34,20),(35,35,140),(36,36,75),(37,37,180),(38,38,90),(39,39,65),(40,40,110);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formapagamento`
--

DROP TABLE IF EXISTS `formapagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formapagamento` (
  `idFormaPagamento` int NOT NULL AUTO_INCREMENT,
  `nomeForma` varchar(50) NOT NULL,
  `taxaPercentual` decimal(5,2) NOT NULL,
  PRIMARY KEY (`idFormaPagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formapagamento`
--

LOCK TABLES `formapagamento` WRITE;
/*!40000 ALTER TABLE `formapagamento` DISABLE KEYS */;
INSERT INTO `formapagamento` VALUES (1,'Dinheiro',0.00),(2,'Cartão Débito',1.20),(3,'Cartão Crédito',2.50),(4,'PIX',0.00),(5,'Vale Refeição',0.00),(6,'Boleto',0.50),(7,'Transferência',0.30),(8,'Cheque',0.10),(9,'App Pagamento',1.00),(10,'Crédito Loja',0.00);
/*!40000 ALTER TABLE `formapagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `idFornecedor` int NOT NULL AUTO_INCREMENT,
  `nomeFornecedor` varchar(100) NOT NULL,
  `cnpj` varchar(18) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idFornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Distribuidora Alfa','12.345.678/0001-11','(81)4000-0001'),(2,'Atacadão Bella','12.345.678/0001-12','(81)4000-0002'),(3,'Mercosul','12.345.678/0001-13','(81)4000-0003'),(4,'ForneceMais','12.345.678/0001-14','(81)4000-0004'),(5,'Frutas&Cia','12.345.678/0001-15','(81)4000-0005'),(6,'Carnes Premium','12.345.678/0001-16','(81)4000-0006'),(7,'Padaria Central','12.345.678/0001-17','(81)4000-0007'),(8,'Laticínios Nacionais','12.345.678/0001-18','(81)4000-0008'),(9,'Congelados Nordeste','12.345.678/0001-19','(81)4000-0009'),(10,'LimpezaTotal','12.345.678/0001-20','(81)4000-0010'),(11,'PetDistrib','12.345.678/0001-21','(81)4000-0011'),(12,'Molhos e Temperos Ltda','12.345.678/0001-22','(81)4000-0012'),(13,'Orgânicos do Campo','12.345.678/0001-23','(81)4000-0013'),(14,'Bebidas Express','12.345.678/0001-24','(81)4000-0014'),(15,'Embalagens Já','12.345.678/0001-25','(81)4000-0015');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `idFuncionario` int NOT NULL AUTO_INCREMENT,
  `nomeFuncionario` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `idCargo` int NOT NULL,
  PRIMARY KEY (`idFuncionario`),
  KEY `idCargo` (`idCargo`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`idCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'João Silva','222.222.222-01','(81)98888-0001',1),(2,'Marcos Pereira','222.222.222-02','(81)98888-0002',2),(3,'Patrícia Alves','222.222.222-03','(81)98888-0003',3),(4,'Renato Costa','222.222.222-04','(81)98888-0004',4),(5,'Elisa Ramos','222.222.222-05','(81)98888-0005',5),(6,'Bruno Lima','222.222.222-06','(81)98888-0006',6),(7,'Camila Souza','222.222.222-07','(81)98888-0007',7),(8,'Fábio Santos','222.222.222-08','(81)98888-0008',8),(9,'Renata Melo','222.222.222-09','(81)98888-0009',9),(10,'Igor Fernandes','222.222.222-10','(81)98888-0010',10),(11,'Vanessa Pinto','222.222.222-11','(81)98888-0011',11),(12,'Alex Costa','222.222.222-12','(81)98888-0012',12),(13,'Sérgio Rocha','222.222.222-13','(81)98888-0013',13),(14,'Marta Dias','222.222.222-14','(81)98888-0014',14),(15,'Paulo Henrique','222.222.222-15','(81)98888-0015',15),(16,'Rosa Carvalho','222.222.222-16','(81)98888-0016',1),(17,'Victor Nunes','222.222.222-17','(81)98888-0017',2),(18,'Helena Moraes','222.222.222-18','(81)98888-0018',3),(19,'Diego Barros','222.222.222-19','(81)98888-0019',4),(20,'Lívia Gomes','222.222.222-20','(81)98888-0020',5);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemvenda`
--

DROP TABLE IF EXISTS `itemvenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemvenda` (
  `idItemVenda` int NOT NULL AUTO_INCREMENT,
  `idVenda` int NOT NULL,
  `idProduto` int NOT NULL,
  `quantidade` int NOT NULL,
  `precoUnitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idItemVenda`),
  KEY `idVenda` (`idVenda`),
  KEY `idProduto` (`idProduto`),
  CONSTRAINT `itemvenda_ibfk_1` FOREIGN KEY (`idVenda`) REFERENCES `venda` (`idVenda`),
  CONSTRAINT `itemvenda_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemvenda`
--

LOCK TABLES `itemvenda` WRITE;
/*!40000 ALTER TABLE `itemvenda` DISABLE KEYS */;
INSERT INTO `itemvenda` VALUES (1,1,4,2,6.00),(2,1,11,1,3.50),(3,2,2,2,3.99),(4,3,3,4,12.50),(5,3,9,2,18.90),(6,4,11,2,3.50),(7,5,25,1,20.00),(8,6,8,3,12.00),(9,7,1,5,4.50),(10,8,6,4,5.50),(11,9,11,1,3.50),(12,10,13,2,12.00),(13,11,21,1,22.00),(14,12,12,2,6.20),(15,13,30,1,12.00),(16,14,5,2,2.50),(17,15,11,1,3.50),(18,16,3,2,12.50),(19,17,33,1,160.00),(20,18,7,2,4.20),(21,19,20,6,2.00),(22,20,10,3,4.30),(23,21,2,1,3.99),(24,22,11,2,3.50),(25,23,9,5,18.90),(26,24,16,1,250.00),(27,25,4,2,6.00),(28,26,14,1,25.00),(29,27,27,2,200.00),(30,28,18,3,55.00),(31,29,7,1,4.20),(32,30,1,4,4.50),(33,31,11,2,3.50),(34,32,23,1,25.00),(35,33,15,2,20.00),(36,34,29,1,12.00),(37,35,31,2,22.00),(38,35,11,1,3.50),(39,34,13,1,12.00),(40,33,8,2,12.00),(41,32,19,1,70.00);
/*!40000 ALTER TABLE `itemvenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `idMarca` int NOT NULL AUTO_INCREMENT,
  `nomeMarca` varchar(100) NOT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Alfa'),(2,'Bella'),(3,'CampoVerde'),(4,'DeliMais'),(5,'Essência'),(6,'FrescoVida'),(7,'GranPão'),(8,'HappyPet'),(9,'ItaMix'),(10,'Jardim'),(11,'Kombu'),(12,'LactoBom'),(13,'Moinho'),(14,'NaturaFood'),(15,'Orgânico+'),(16,'Prime'),(17,'Quali'),(18,'Rural'),(19,'SaborCasa'),(20,'TopLine');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `idPagamento` int NOT NULL AUTO_INCREMENT,
  `idVenda` int NOT NULL,
  `idFormaPagamento` int NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `dataPagamento` date NOT NULL,
  PRIMARY KEY (`idPagamento`),
  KEY `idVenda` (`idVenda`),
  KEY `idFormaPagamento` (`idFormaPagamento`),
  CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`idVenda`) REFERENCES `venda` (`idVenda`),
  CONSTRAINT `pagamento_ibfk_2` FOREIGN KEY (`idFormaPagamento`) REFERENCES `formapagamento` (`idFormaPagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,1,2,45.60,'2025-01-10'),(2,2,4,23.90,'2025-01-12'),(3,3,3,120.00,'2025-02-01'),(4,4,1,15.30,'2025-02-15'),(5,5,1,78.20,'2025-03-03'),(6,6,4,32.50,'2025-03-20'),(7,7,2,56.00,'2025-04-11'),(8,8,3,95.40,'2025-04-20'),(9,9,1,10.00,'2025-05-05'),(10,10,2,210.80,'2025-05-25'),(11,11,1,64.50,'2025-06-03'),(12,12,4,34.90,'2025-06-18'),(13,13,3,89.00,'2025-07-01'),(14,14,2,47.20,'2025-07-10'),(15,15,4,19.80,'2025-07-22'),(16,16,1,140.00,'2025-08-02'),(17,17,5,55.50,'2025-08-15'),(18,18,6,33.30,'2025-09-01'),(19,19,7,77.70,'2025-09-11'),(20,20,8,28.80,'2025-09-25');
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idProduto` int NOT NULL AUTO_INCREMENT,
  `nomeProduto` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `validade` date NOT NULL,
  `idCategoria` int NOT NULL,
  `idMarca` int NOT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `idCategoria` (`idCategoria`),
  KEY `idMarca` (`idMarca`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`),
  CONSTRAINT `produto_ibfk_2` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Maçã Kg',4.50,'2026-01-15',1,3),(2,'Leite Integral 1L',3.99,'2026-06-30',2,12),(3,'Filé de Frango 1kg',12.50,'2026-02-10',3,6),(4,'Pão Francês 10un',6.00,'2025-11-30',4,7),(5,'Água Mineral 1.5L',2.50,'2027-01-01',5,16),(6,'Cerveja Long Neck 355ml',5.50,'2026-08-01',6,16),(7,'Detergente 500ml',4.20,'2028-01-01',7,10),(8,'Sabonete 85g',1.80,'2027-03-01',8,5),(9,'Arroz 5kg',18.90,'2027-09-01',9,13),(10,'Milho enlatado 350g',4.30,'2028-02-01',10,4),(11,'Chocolate 90g',3.50,'2026-12-01',11,20),(12,'Aveia 500g',6.20,'2027-05-01',12,1),(13,'Pizza Congelada 400g',12.00,'2026-11-01',13,9),(14,'Ração Adulto 2kg',25.00,'2027-07-01',14,8),(15,'Vitamina C 60caps',29.90,'2028-06-01',15,11),(16,'Papel Higiênico 12un',15.50,'2030-01-01',16,17),(17,'Molho de Tomate 340g',3.20,'2027-04-01',17,4),(18,'Sementes de Chia 200g',9.80,'2027-08-01',18,15),(19,'Fraldas M 40un',45.00,'2026-10-01',19,14),(20,'Esponja Multiuso',2.00,'2030-01-01',20,19),(21,'Banana Kg',3.80,'2025-12-10',1,3),(22,'Queijo Mussarela 500g',22.00,'2026-03-15',2,12),(23,'Carne Bovina - Acém 1kg',28.50,'2026-02-20',3,6),(24,'Bolo Padrão 1kg',20.00,'2025-11-25',4,7),(25,'Suco Natural 1L',6.50,'2026-05-01',5,2),(26,'Vinho Tinto 750ml',35.00,'2028-01-01',6,16),(27,'Álcool Gel 500ml',7.00,'2028-06-01',7,10),(28,'Creme Dental 90g',4.40,'2027-02-01',8,5),(29,'Feijão Carioca 1kg',8.50,'2027-12-01',9,13),(30,'Azeitona 200g',6.00,'2027-06-01',10,4),(31,'Sorvete 2L',18.00,'2026-09-01',13,9),(32,'Petisco Canino 500g',12.00,'2027-11-01',14,8),(33,'Ômega 3 60caps',39.90,'2029-01-01',15,11),(34,'Guardanapo 50un',6.50,'2030-01-01',16,17),(35,'Tempero Completo 200g',5.50,'2028-05-01',17,20),(36,'Granola 400g',10.50,'2027-10-01',12,1);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saidaestoque`
--

DROP TABLE IF EXISTS `saidaestoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saidaestoque` (
  `idSaida` int NOT NULL AUTO_INCREMENT,
  `idProduto` int NOT NULL,
  `quantidade` int NOT NULL,
  `dataSaida` date NOT NULL,
  PRIMARY KEY (`idSaida`),
  KEY `idProduto` (`idProduto`),
  CONSTRAINT `saidaestoque_ibfk_1` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saidaestoque`
--

LOCK TABLES `saidaestoque` WRITE;
/*!40000 ALTER TABLE `saidaestoque` DISABLE KEYS */;
INSERT INTO `saidaestoque` VALUES (1,1,10,'2025-01-15'),(2,2,5,'2025-02-20'),(3,3,8,'2025-03-10'),(4,4,30,'2025-01-25'),(5,5,25,'2025-04-05'),(6,6,12,'2025-05-20'),(7,7,20,'2025-06-15'),(8,8,60,'2025-07-05'),(9,9,7,'2025-02-25'),(10,10,15,'2025-03-20'),(11,11,18,'2025-04-30'),(12,12,10,'2025-05-06'),(13,13,5,'2025-06-25'),(14,14,22,'2025-07-29'),(15,15,10,'2025-08-10'),(16,16,50,'2025-09-15'),(17,17,20,'2025-10-05'),(18,18,12,'2025-06-30'),(19,19,15,'2025-05-25'),(20,20,120,'2025-04-20'),(21,21,30,'2025-03-31'),(22,22,8,'2025-03-05'),(23,23,20,'2025-01-20'),(24,24,25,'2025-05-12'),(25,25,5,'2025-03-16'),(26,26,18,'2025-07-11'),(27,27,60,'2025-08-25'),(28,28,35,'2025-09-20'),(29,29,12,'2025-10-10'),(30,30,40,'2025-11-05');
/*!40000 ALTER TABLE `saidaestoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `idVenda` int NOT NULL AUTO_INCREMENT,
  `idCliente` int NOT NULL,
  `idFuncionario` int NOT NULL,
  `dataVenda` date NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idVenda`),
  KEY `idCliente` (`idCliente`),
  KEY `idFuncionario` (`idFuncionario`),
  CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `venda_ibfk_2` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,1,4,'2025-01-10',45.60),(2,2,4,'2025-01-12',23.90),(3,3,5,'2025-02-01',120.00),(4,4,6,'2025-02-15',15.30),(5,5,7,'2025-03-03',78.20),(6,6,8,'2025-03-20',32.50),(7,7,9,'2025-04-11',56.00),(8,8,10,'2025-04-20',95.40),(9,9,11,'2025-05-05',10.00),(10,10,12,'2025-05-25',210.80),(11,11,13,'2025-06-03',64.50),(12,12,14,'2025-06-18',34.90),(13,13,15,'2025-07-01',89.00),(14,14,16,'2025-07-10',47.20),(15,15,17,'2025-07-22',19.80),(16,16,18,'2025-08-02',140.00),(17,17,19,'2025-08-15',55.50),(18,18,20,'2025-09-01',33.30),(19,19,1,'2025-09-11',77.70),(20,20,2,'2025-09-25',28.80),(21,21,3,'2025-10-02',99.90),(22,22,4,'2025-10-12',15.20),(23,23,5,'2025-10-20',205.00),(24,24,6,'2025-11-01',60.00),(25,25,7,'2025-11-03',12.50),(26,26,8,'2025-11-05',88.00),(27,27,9,'2025-11-06',45.00),(28,28,10,'2025-11-07',130.00),(29,29,11,'2025-11-08',22.00),(30,30,12,'2025-11-09',59.60),(31,1,13,'2025-11-10',75.00),(32,2,14,'2025-11-11',44.40),(33,3,15,'2025-11-12',98.20),(34,4,16,'2025-11-13',16.75),(35,5,17,'2025-11-14',200.00),(36,6,18,'2025-11-15',34.30);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-30  9:27:22
