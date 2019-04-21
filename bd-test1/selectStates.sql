SELECT * FROM estados;

SELECT nome as 'Nome do Estado', sigla from estados
WHERE regiao = 'Sul';

SELECT nome , regiao , sigla from estados
WHERE populacao >= 10
order by populacao desc


SELECT 
    sigla,
    nome as 'Nome do Estado'
from estados
WHERE regiao = 'Sul';