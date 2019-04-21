CREATE TABLE IF NOT EXISTS User(
    email Varchar(50),
    cpf Varchar(50),
    idUser INT UNSIGNED NOT NULL AUTO_INCREMENT,
    senha varchar(50) NOT NULL,
    name Varchar(50),
    address Varchar(50),
    PRIMARY KEY (idUser)

)
