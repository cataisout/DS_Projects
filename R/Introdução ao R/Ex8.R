

# Exercício 8 -------------------------------------------------------------

# Questão 1 ---------------------------------------------------------------

# Crie uma função chamada 'describe()' para descrever alguns parâmetros das colunas 
# numéricas de um dataframe. A função irá retornar um outro dataframe contendo
# a média, os valores mínimo e máximo, o número de ocorrências únicas de cada valor, 
# e o número de NAs de cada coluna. 

# Exemplo:
# Input:
# > describe(airquality)

df <- airquality

describe <- function(df) {
  desc<-data.frame(media=c(0), 
                 min = c(0),
                 max = c(0),
                 n_unique = c(0),
                 n_nas = c(0))
  
  
  for (i in 1:length(df[1, ])) {
  
    coluna_analisada = df[ ,i]
    media = mean(x=coluna_analisada, na.rm = T)
    maximo = max(coluna_analisada, na.rm = T)
    minimo = min(coluna_analisada, na.rm = T)
    uni_values = length (unique(coluna_analisada))
    nas = sum(is.na(coluna_analisada))
    desc[i, 1] = media
    desc[i, 2] = maximo
    desc[i, 3] = minimo
    desc[i, 4] = uni_values
    desc[i, 5] = nas
  
  }
  rownames(desc) <- colnames(df)
  return(desc)
  
}

describe(airquality)
# Output:
#             media   min  max    n_unique n_nas
# Ozone    42.129310  1.0 168.0       68    37
# Solar.R 185.931507  7.0 334.0      118     7
# Wind      9.957516  1.7  20.7       31     0
# Temp     77.882353 56.0  97.0       40     0
# Month     6.993464  5.0   9.0        5     0
# Day      15.803922  1.0  31.0       31     0



# Questão 2 ---------------------------------------------------------------

# Crie uma função que retorne uma lista de tamanho 2, contendo uma matriz em cada posição. 

# A primeira matriz da lista é uma matriz quadrada (o número de linhas é igual ao número de colunas) 
# com cada posição da matriz sendo um número inteiro sorteado de 1 a 1000 (use a função 'sample()'). 

# A segunda matriz terá as mesmas dimensões da primeira, mas irá atribuir 
# a cada posição o valor 0, se aquela posição na primeira matriz for par, ou 1, se aquela posição na primeria 
# matriz for ímpar. 

# A função terá um único argumento, que determinará as dimensões da matriz.

faz_matriz <- function(n) {
  m1 = matrix(data = sample(1:100, n^2,replace = T), nrow = n, ncol = n)
  m2 = matrix(data=2, nrow = n, ncol = n)
  
  for(coluna in 1:n){
    for(linha in 1:n){
      if (m1[linha, coluna]%%2 == 0) {
        m2[linha, coluna] = 0
      }else{
        m2[linha, coluna] = 1
      }
    }
  }
  
  lista = list(m1, m2)
  return(lista)
}

# Input:
faz_matriz(n = 2)

# Output:
# $matriz1
#      [,1] [,2]
# [1,]  354  121
# [2,]  580  422
# 
# $matriz2
#       [,1] [,2]
# [1,]    0    1
# [2,]    0    0

