-- --------------------------------------------------------
-- Servidor:                     10.0.2.119
-- Versão do servidor:           5.7.25 - MySQL Community Server (GPL)
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para dashboard
CREATE DATABASE IF NOT EXISTS `dashboard` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dashboard`;

-- Copiando estrutura para tabela dashboard.bancos
CREATE TABLE IF NOT EXISTS `bancos` (
  `numero_conta` int(11) DEFAULT NULL,
  `codigo_banco` int(11) DEFAULT NULL,
  `nome_conta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.cadpro
CREATE TABLE IF NOT EXISTS `cadpro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codfil01` int(11) DEFAULT NULL,
  `codpro01` int(11) DEFAULT NULL,
  `codgss01` int(11) DEFAULT NULL,
  `descpro01` varchar(255) DEFAULT NULL,
  `cusreal01` decimal(10,2) DEFAULT NULL,
  `prevend01` decimal(10,2) DEFAULT NULL,
  `estatu01` decimal(10,2) DEFAULT NULL,
  `qtultcom01` decimal(10,3) DEFAULT NULL,
  `dataent01` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.contas_pagar
CREATE TABLE IF NOT EXISTS `contas_pagar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codfil15` int(11) DEFAULT NULL,
  `datproc15` date DEFAULT NULL,
  `dtaceite15` date DEFAULT NULL,
  `datvenc15` date DEFAULT NULL,
  `valpag15` decimal(10,3) DEFAULT NULL,
  `datemis15` date DEFAULT NULL,
  `valpago15` decimal(10,3) DEFAULT NULL,
  `datpag15` date DEFAULT NULL,
  `datentr15` date DEFAULT NULL,
  `codforn15` int(11) DEFAULT NULL,
  `nome15` varchar(255) DEFAULT NULL,
  `txboleto15` decimal(10,3) DEFAULT NULL,
  `desconto15` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=578 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.contas_receber
CREATE TABLE IF NOT EXISTS `contas_receber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codfil60` int(11) DEFAULT NULL,
  `codcli60` int(11) DEFAULT NULL,
  `datvenc60` date DEFAULT NULL,
  `valor60` decimal(10,3) DEFAULT NULL,
  `datemis60` date DEFAULT NULL,
  `valrec60` decimal(10,3) DEFAULT NULL,
  `datrec60` date DEFAULT NULL,
  `nome60` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1150 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.despesas
CREATE TABLE IF NOT EXISTS `despesas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coddesp52` varchar(20) NOT NULL,
  `codfil52` varchar(10) NOT NULL,
  `codforn52` varchar(20) DEFAULT NULL,
  `valor52` decimal(15,2) NOT NULL,
  `descdes52` varchar(255) DEFAULT NULL,
  `datades52` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idsubgrupo` int(11) DEFAULT NULL,
  `subgrupo` varchar(50) DEFAULT NULL,
  `idgrupo` int(11) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  `iddepartamento` int(11) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `tipodesp` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.finalizadoras
CREATE TABLE IF NOT EXISTS `finalizadoras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `horario` time DEFAULT NULL,
  `data` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `operador` int(11) DEFAULT NULL,
  `cupom` int(11) DEFAULT NULL,
  `especie` varchar(50) DEFAULT NULL,
  `origem` varchar(50) DEFAULT NULL,
  `debi_cred` char(1) DEFAULT NULL,
  `cancelado` char(1) DEFAULT NULL,
  `filial` int(11) DEFAULT NULL,
  `pdv` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.finalizadoras_online
CREATE TABLE IF NOT EXISTS `finalizadoras_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `horario` time DEFAULT NULL,
  `data` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `operador` int(11) DEFAULT NULL,
  `cupom` int(11) DEFAULT NULL,
  `especie` varchar(50) DEFAULT NULL,
  `origem` varchar(50) DEFAULT NULL,
  `debi_cred` char(1) DEFAULT NULL,
  `cancelado` char(1) DEFAULT NULL,
  `filial` int(11) DEFAULT NULL,
  `pdv` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.fornecedores
CREATE TABLE IF NOT EXISTS `fornecedores` (
  `codforn02` bigint(20) NOT NULL,
  `razforn02` varchar(255) DEFAULT NULL,
  `cgcforn02` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`codforn02`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.grup_sub
CREATE TABLE IF NOT EXISTS `grup_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codfil` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `codsgr` int(11) DEFAULT NULL,
  `totvrcusto` decimal(10,2) DEFAULT NULL,
  `totvrvenda` decimal(10,2) DEFAULT NULL,
  `totcusmed` decimal(10,2) DEFAULT NULL,
  `totprodvda` int(11) DEFAULT NULL,
  `nxsubgrcup` int(11) DEFAULT NULL,
  `coddepto` int(11) DEFAULT NULL,
  `nomedepto` varchar(255) DEFAULT NULL,
  `descgss00` varchar(255) DEFAULT NULL,
  `descgrupo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_grup_sub_data` (`data`),
  KEY `idx_grup_sub_codfil_coddepto` (`codfil`,`coddepto`),
  KEY `idx_grup_sub_nxsubgrcup_codsgr` (`nxsubgrcup`,`codsgr`),
  KEY `idx_grup_sub_nomedepto_descgrupo_descgss00` (`nomedepto`,`descgrupo`,`descgss00`)
) ENGINE=InnoDB AUTO_INCREMENT=4373 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.movent
CREATE TABLE IF NOT EXISTS `movent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valcon81` decimal(10,2) DEFAULT NULL,
  `codfil81` int(11) DEFAULT NULL,
  `forncli81` int(11) DEFAULT NULL,
  `razforn02` varchar(255) DEFAULT NULL,
  `datentr81` date DEFAULT NULL,
  `transac81` varchar(1) DEFAULT NULL,
  `numnota81` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.movimento_banco
CREATE TABLE IF NOT EXISTS `movimento_banco` (
  `numero_conta` int(11) DEFAULT NULL,
  `data_mov` date DEFAULT NULL,
  `valor_mov` decimal(10,2) DEFAULT NULL,
  `deb_cred` char(1) DEFAULT NULL,
  `historico` int(11) DEFAULT NULL,
  `data_baixa` date DEFAULT NULL,
  `data_emissao` date DEFAULT NULL,
  `filial` int(11) DEFAULT NULL,
  `fornecedor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.movprods
CREATE TABLE IF NOT EXISTS `movprods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codfil05` int(11) DEFAULT NULL,
  `codpro05` int(11) DEFAULT NULL,
  `qtdemov05` decimal(10,2) unsigned DEFAULT NULL,
  `preco05` decimal(10,2) DEFAULT NULL,
  `custo05` decimal(10,2) DEFAULT NULL,
  `datamov05` date DEFAULT NULL,
  `descpro01` varchar(255) DEFAULT NULL,
  `e_s05` char(1) DEFAULT NULL,
  `tipomov05` char(1) DEFAULT NULL,
  `numnota05` int(11) DEFAULT NULL,
  `forncli05` int(11) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `subgrupo` varchar(50) DEFAULT NULL,
  `idmarca` int(11) DEFAULT NULL,
  `descmarca` varchar(50) DEFAULT NULL,
  `idsubgrupo` int(11) DEFAULT NULL,
  `idgrupo` int(11) DEFAULT NULL,
  `iddepartamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4001 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.movtrocas
CREATE TABLE IF NOT EXISTS `movtrocas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forncli` int(11) DEFAULT NULL,
  `codfil` int(11) DEFAULT NULL,
  `codpro` int(11) DEFAULT NULL,
  `datamov` date DEFAULT NULL,
  `qtdemov` decimal(10,2) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `e_s` char(1) DEFAULT NULL,
  `tipomov` varchar(50) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `descpro01` varchar(255) DEFAULT NULL,
  `idsubgrupo` int(11) DEFAULT NULL,
  `subgrupo` varchar(50) DEFAULT NULL,
  `idmarca` int(11) DEFAULT NULL,
  `descmarca` varchar(50) DEFAULT NULL,
  `idgrupo` int(11) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  `iddepartamento` int(11) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.vendas_faturamento
CREATE TABLE IF NOT EXISTS `vendas_faturamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datemis83` date DEFAULT NULL,
  `valcon83` decimal(10,2) DEFAULT NULL,
  `especie83` char(3) DEFAULT NULL,
  `codfil83` int(11) DEFAULT NULL,
  `numnota83` int(11) DEFAULT NULL,
  `transac83` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.vendas_mes
CREATE TABLE IF NOT EXISTS `vendas_mes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `totvrvenda` decimal(10,2) DEFAULT NULL,
  `nclientes` int(11) DEFAULT NULL,
  `codfil` varchar(10) DEFAULT NULL,
  `totvrcusto` decimal(10,2) DEFAULT NULL,
  `totprodvda` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
-- Copiando estrutura para tabela dashboard.venprod
CREATE TABLE IF NOT EXISTS `venprod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data17` date DEFAULT NULL,
  `codpro17` int(11) DEFAULT NULL,
  `qtdeven17` decimal(10,2) DEFAULT NULL,
  `prevend17` decimal(10,2) DEFAULT NULL,
  `filial17` int(11) DEFAULT NULL,
  `descpro01` varchar(255) DEFAULT NULL,
  `cusmedio17` decimal(10,2) DEFAULT NULL,
  `cusreal17` decimal(10,2) DEFAULT NULL,
  `descgss00` varchar(255) DEFAULT NULL,
  `codgss01` int(11) DEFAULT NULL,
  `idmarca` int(11) DEFAULT NULL,
  `descmarca` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_venprod_data17` (`data17`),
  KEY `idx_venprod_filial_codgss_codpro_descpro` (`filial17`,`codgss01`,`codpro17`,`descpro01`),
  KEY `idx_venprod_valores` (`qtdeven17`,`prevend17`,`cusreal17`),
  KEY `idx_venprod_group` (`filial17`,`codgss01`,`codpro17`,`descpro01`),
  KEY `idx_venprod_sum` (`qtdeven17`,`prevend17`,`cusreal17`),
  KEY `idx_venprod_data_filial_codgss_codpro` (`data17`,`filial17`,`codgss01`,`codpro17`,`descpro01`)
) ENGINE=InnoDB AUTO_INCREMENT=24364 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
