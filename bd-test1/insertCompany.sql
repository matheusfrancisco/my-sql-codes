INSERT INTO empresas
    (nome, cnpj)
VALUES
    ('Bradesco', 89819828911928),
    ('Vale', 12312312321313),
    ('Cielo', 1231313213123);

ALTER TABLE empresas MODIFY cnpj VARCHAR(14);



select * from empresas

insert into empresas_unidades
    (empresa_id, cidade_id, sede)
VALUES
    (1, 1, 1),
    (1, 2, 0),
    (2, 1, 0),
    (2, 2, 1);