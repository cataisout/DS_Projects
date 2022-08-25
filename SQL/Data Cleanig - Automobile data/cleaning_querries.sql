#ENCONTREI VALORES NULOS PARA QUANTIDADE DE PORTAS

SELECT DISTINCT num_of_doors
FROM `novo-350520.cars.info` 

#DELETANDO ESSAS LINHAS

DELETE 
  `novo-350520.cars.info`
WHERE
  num_of_doors IS NULL

#VALORES REPETIDOS EM DRIVE-WHEELS

SELECT
  DISTINCT drive_wheels
FROM
  `novo-350520.cars.info`

#VERIFICANDO QUE A DUPLICIDADE SE DÁ EM FUNÇÃO DE UM ESPAÇO

SELECT 
  DISTINCT drive_wheels,LENGTH(drive_wheels) AS tamanho
FROM
  `novo-350520.cars.info`
WHERE
  drive_wheels LIKE "%4wd%"

#REMOVENDO ESPAÇOS

UPDATE
  `novo-350520.cars.info`
SET 
  drive_wheels = TRIM(drive_wheels)
WHERE
  TRUE
#VERIFICANDO TIPOS DE NÚMEROS DE CILINDROS

SELECT
  DISTINCT num_of_cylinders
FROM
  `novo-350520.cars.info`

#CORRIGINDO ERRO DE ESCRITA

UPDATE
  `novo-350520.cars.info`
SET
  num_of_cylinders = 'two'
WHERE
  num_of_cylinders = 'tow'

#ENCONTRANDO VALORES FORA DO ESCOPO DELIMITADO

SELECT
  MAX(compression_ratio) AS max_comp_ratio,
  MIN(compression_ratio) AS min_comp_ratio
FROM
  `novo-350520.cars.info`

#APAGANDO VALORES FORA DO ESCOPO

DELETE
  `novo-350520.cars.info`

WHERE
  compression_ratio > 23

#ENCONTRANDO PREÇO FORA DO ESCOPO DELIMITADO

SELECT 
  MAX(price) AS max_P,
  MIN(price) AS min_P
FROM
  `novo-350520.cars.info`

#DELETANDO LINHAS COM PREÇO = 0 


DELETE
  `novo-350520.cars.info`

WHERE
  price = 0