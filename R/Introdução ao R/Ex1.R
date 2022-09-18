# Exercício 01 - Introdução ao R ------------------------------------------

# Vetores ----

# Em R, os vetores são um dos tipos mais básicos de objetos. Eles são parecidos com os vetores que vimos na matemática
# A diferença é que aqui podemos ter vetores não só de números, mas também de letras (caracteres). 

# Um vetor de números pode ser construído assim:

num <- c(1,2,3,4) 

# Se você executar essa linha acima terá criado um vetor com o nome de "num" 
# e que contém os elementos 1,2,3 e 4.
# Em R, para criarmos um vetor, utilizamos a função "c()".

## Questão 1 ----

# Experimente fazer um vetor chamado "num2" e que contenha os seguintes 
# elementos: 1,a,3,b. Depois veja qual a classe dos elementos desse vetor
# Usando a função class(). 
# OBS: Não esqueça que letras e palavras tem de ser colocadas entre aspas.

num2 <- c(1, 'a', 3, 'b')
class(num2) #class character

# Agora crie um vetor num3 com os elementos: 1,2,3,4,5. Use a função class() 
# para saber qual a classe dos elementos desse vetor:

num3 <- c(1, 2, 3, 4, 5)
class(num3) #class numeric

# Por que a classe dos vetores 'num2' e 'num3' é diferente?

#R: Por possuir elementos do tipo character e numeric juntos, os elementos do tipo numeric sao convertidos em character, pela ordem de hierarquia.
# O vetor num3 consta como numeric pois todos seus elementos sao do tipo numeric.

## Questão 2 ----

# José e Paulo adoram jogar basquete nas suas horas livres. Eles mantém uma
# competição entre si e por isso decidiram registrar todos os pontos que eles
# marcam durante as partidas.
# Até agora foram 8 partidas e José fez 8, 10, 12, 9, 15, 16, 11, 7 cestas.
# Paulo fez 5, 11, 13, 14, 23, 14, 9, 10 cestas.

# Crie dois objetos que contenham o número de cestas que cada um fez:

c_jose <- c(8, 10, 12, 9, 15, 16, 11, 7)
c_paulo <- c(5, 11, 13, 14, 23, 14, 9, 10)

# Verifique a que classe de cada um dos objetos:

class(c_jose)  #class numeric
class(c_paulo) #class numeric

# Com a utilização da ajuda do R, procure por uma função que possibilite o cálculo de médias.
# Com ela, calcule as médias de cestas dos dois jogadores e atribua estes valores
# a objetos diferentes:

help(mean)
media_jose <- mean(c_jose)
media_paulo <- mean(c_paulo)
  
# Compare os valores das médias calculadas usando os operadores lógicos ">" e "<".
# Quem teve um desempenho médio melhor?

media_jose > media_paulo
media_jose < media_paulo 
#R: Paulo obteve um desempenho medio melhor 


