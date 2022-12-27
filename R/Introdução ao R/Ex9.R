# Exercício 9 - apply, lapply, sapply ----------------------------------------------------------

# Abaixo, algumas funções da família dos apply():

# -- apply(): Aplica uma função às "margens" de um array ou matriz e retorna um vetor, uma matriz ou uma lista de valores.
#         apply(X, MARGIN, FUN, ...)

# -- lapply(): Aplica uma função a uma lista e sempre retorna uma nova lista de mesmo tamanho da lista de entrada.
# SINTAXE:
#         lapply(X, FUN, ...)

# -- sapply(): Aplica uma função a uma lista e tenta retornar um objeto o mais simplificado possível.
# SINTAXE:
#         sapply(X, FUN, ..., simplify = TRUE, USE.NAMES = TRUE)



# Questão 1 ---------------------------------------------------------------

# Todas as questões do bloco 1 podem ser resolvidas com a função apply().
set.seed(1)
mt <- matrix(rnorm(50), 5, 10)



??average



# Calcule a média das colunas da matriz mt.

apply(X = mt, FUN = mean, MARGIN = 2)

# Retorne os menores e maiores valores de cada coluna da matriz mt.
apply(X = mt, FUN = max, MARGIN = 2)
apply(X = mt, FUN = min, MARGIN = 2)


# Calcule o somatório de cada linha da matriz mt.
apply(X = mt, FUN = sum, MARGIN = 1)


# Calcule o produtório de cada linha da matriz mt.

apply(X = mt, FUN = prod, MARGIN = 1)



# Questão 2 ---------------------------------------------------------------

# Refaça a questão 1 do exercício anterior (exercício 8), usando as funções de loop aprendidas na aula. 

# Crie uma função chamada 'describe()' para descrever alguns parâmetros das colunas 
# numéricas de um dataframe. A função irá retornar um outro dataframe contendo
# a média, os valores mínimo e máximo, o número de ocorrências únicas de cada valor, 
# e o número de NAs de cada coluna. 

# Exemplo:
# Input:
# > describe(airquality)


airquality <- airquality

describe <- function( df1 ) {

  mediac = data.frame(apply(X= df1, FUN = mean, MARGIN = 2, na.rm = T))
  maximo = data.frame(apply(X= df1, FUN = max, MARGIN = 2, na.rm = T))
  minimo = data.frame(apply(X= df1, FUN = min, MARGIN = 2, na.rm = T))
  uni_values = lapply(X= df1, FUN = unique, MARGIN = 2, na.rm = T)
  n_uni_values = as.data.frame(t(data.frame(lapply(X= uni_values, FUN = length)
  )))
  nas = data.frame(apply(X= df1, FUN = is.na, MARGIN = 2))
  n_nas = data.frame(apply(X = nas, FUN  = sum,MARGIN =  2))

  
  desc<-data.frame(media=mediac[,1], 
                   min = minimo[,1],
                   max = maximo[,1],
                   n_unique = n_uni_values[,1],
                   n_nas = n_nas[,1])
  
  row.names(desc) <- colnames(df1)
  return(desc)
  
  
}




describe(airquality)  

  




# Obs.: O output poderá ser desta maneira:

#             media   min  max    n_unique n_nas
# Ozone    42.129310  1.0 168.0       68    37
# Solar.R 185.931507  7.0 334.0      118     7
# Wind      9.957516  1.7  20.7       31     0
# Temp     77.882353 56.0  97.0       40     0
# Month     6.993464  5.0   9.0        5     0
# Day      15.803922  1.0  31.0       31     0

# Ou desta: 

# Ozone  Solar.R      Wind     Temp    Month      Day
# media     42.12931 185.9315  9.957516 77.88235 6.993464 15.80392
# minimo     1.00000   7.0000  1.700000 56.00000 5.000000  1.00000
# maximo   168.00000 334.0000 20.700000 97.00000 9.000000 31.00000
# n_unique  68.00000 118.0000 31.000000 40.00000 5.000000 31.00000
# n_nas     37.00000   7.0000  0.000000  0.00000 0.000000  0.00000
