-- Create table
CREATE TABLE estados(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    sigla VARCHAR(2) NOT NULL,
    regiao ENUM('Norte', 'Nordeste', 'Centro-Oeste', 'Sudeste', 'Sul') NOT NULL,
    populacao DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY (nome),
    UNIQUE KEY (sigla)
);

CREATE TABLE IF NOT EXISTS cidades (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    estado_id  int UNSIGNED NOT NULL,
    area DECIMAL(10,2), 
    PRIMARY KEY (id),
    FOREIGN KEY (estado_id) REFERENCES estados (id)
);

CREATE TABLE IF NOT EXISTS prefeitos (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cidade_id INT UNSIGNED,
    PRIMARY KEY (id),
    UNIQUE KEY (cidade_id),
    FOREIGN KEY (cidade_id) REFERENCES cidades (id)
    
);

CREATE TABLE IF NOT EXISTS empresas(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cnpj int unsigned,
    PRIMARY KEY (id),
    UNIQUE KEY (cnpj)
);


CREATE TABLE IF NOT EXISTS empresas_unidades(
    empresa_id int unsigned not null,
    cidade_id int unsigned not null,
    sede TINYINT(1) NOT NULL,
    PRIMARY KEY (empresa_id, cidade_id)
);