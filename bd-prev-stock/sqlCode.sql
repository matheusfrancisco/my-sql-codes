CREATE TABLE IF NOT EXISTS Users(
    email Varchar(50),
    cpf Varchar(50) NOT NULL ,
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    senha varchar(50) NOT NULL,
    nome Varchar(50),
    endereco Varchar(50),
    balance DECIMAL(10, 2),
    PRIMARY KEY (id),
    UNIQUE KEY (cpf),
    UNIQUE KEY (email)
);


CREATE TABLE IF NOT EXISTS Plans(
    remainingInstallments integer,
    numberOfInstallments integer,
    monthsOfGracePeriod integer,
    value_plan Decimal(10,2), 
    id_user int unsigned,
    paymentAmount Decimal(10,2),
    payday Date,
    id int UNSIGNED NOT NULL AUTO_INCREMENT ,
    PRIMARY KEY (id),
    startDateUser Date,
    FOREIGN KEY(id_user) REFERENCES Users(id)
);



CREATE TABLE IF NOT EXISTS AccountController(
    pay_value DECIMAL(10,2),
    payday Date,
    id int UNSIGNED NOT NULL AUTO_INCREMENT ,
    id_user int unsigned,
    id_plan int unsigned, 
    FOREIGN KEY(id_user) REFERENCES Users(id),
    FOREIGN KEY(id_plan) REFERENCES Plans(id),
    PRIMARY KEY(id)

)
