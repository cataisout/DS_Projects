
# Exercício 7 -------------------------------------------------------------


# Questão 1 ---------------------------------------------------------------

# Crie uma função que receba os valores de a, b e c de um polinômio de 2 grau e verifique
# se este polinômio possui: (i) duas raízes reais distintas (ii) duas raízes reais iguais ou
# (iii) não possui raízes reais. A função também deve imprimir as raízes do polinômio, se existirem.

# Exemplo:
# > calc_raizes(1, -2, -3)
# O polinômio possui duas raízes reais diferentes.
# Raízes: 3 -1

# > calc_raizes(1, 2, 3)
# O polinômio não possui raízes reais.

# > calc_raizes(1, 8, 16)
# O polinômio possui duas raízes reais iguais.
# Raiz: -4


calc_raizes <- function(a, b, c) {
  delta <- ((b^2) - 4*a*c)
  
  if (delta < 0) {
    print("O polinômio não possui raízes reais.")
    return()
  }
  x1 <- (-1*b + sqrt(delta))/2*a
  x2 <- (-1*b - sqrt(delta))/2*a
  
  if(x1==x2){ 
    print("o polinômio possui duas raizes reais iguais.")
    print(c("raiz: ", x1))
  }else if(x1!=x2){
    print("o polinômio possui duas raizes reais diferentes.")
    print(c("raizes: ", x1, x2))
  }
}

calc_raizes(1, -2, -3)
calc_raizes(1, 8, 16)
calc_raizes(1, 2, 3)


# # Questão 2 -------------------------------------------------------------

# Uma empresa decidiu aumentar o salário dos seus empregados, de acordo 
# com a tabela abaixo:

######################################
# Salário           Taxa de reajuste
######################################
# 0 - 400.00            15%
# 400.01 - 800.00       12%
# 800.01 - 1200.00      10%
# 1200.01 - 2000.00     7%
# Acima de 2000.00      4%
######################################

# Exemplo:
# > calc_salario(salario = 400)
# O novo salário é 460 reais.
# O reajuste foi de 60 reais, correspondendo a 15 % de reajuste.

calc_salario <- function(salario){
  
  if (salario < 400){
    print("Entrada inválida")
    return()
  }else if (salario>=0 && salario <=400){
    reajuste <- salario*0.15
    novo_salario <- salario + reajuste
    
    print(c("o novo salario é", novo_salario))
    print(c("o reajuste foi de ", reajuste, "reais, correspondendo a 15% de reajuste"))
      
  }else if(salario>=400.01 && salario <=800){
    reajuste <- salario*0.12
    novo_salario <- salario + reajuste
    
    print(c("o novo salario é", novo_salario))
    print(c("o reajuste foi de ", reajuste, "reais, correspondendo a 12% de reajuste"))
    
  }else if(salario>=800.01 && salario <=1200){
    reajuste <- salario*0.10
    novo_salario <- salario + reajuste
    
    print(c("o novo salario é", novo_salario))
    print(c("o reajuste foi de ", reajuste, "reais, correspondendo a 10% de reajuste"))
    
    
  }else if(salario>=1200.01 && salario <=2000){
    reajuste <- salario*0.07
    novo_salario <- salario + reajuste
    
    print(c("o novo salario é", novo_salario))
    print(c("o reajuste foi de ", reajuste, "reais, correspondendo a 7% de reajuste"))
    
  }else{
    reajuste <- salario*0.04
    novo_salario <- salario + reajuste
    
    print(c("o novo salario é", novo_salario))
    print(c("o reajuste foi de ", reajuste, "reais, correspondendo a 4% de reajuste"))
    
  }
}

calc_salario(salario = 400)

# Questão 3 ---------------------------------------------------------------

# Explique o resultado da operação abaixo:
x <- 1:10
if (length(x)) "A" else "B"

#a condição utilizada pelo if vai retornar um numero inteiro, que sera considerado 
# como true (desde que seja diferente de zero), sempre. Dessa maneira, sempre reotrnará "A".


# Questão 4 ---------------------------------------------------------------

# Considere novamente o vetor x:
x <- 1:10

# Agora, veja as seguintes expressões:
if(x > 5) {
  print("Maior que 5")
} else {
  print("Menor que 5")
}

ifelse(x > 5, "Maior que 5", "Menor que 5")

# Qual das duas expressões permite uma avaliação vetorizada da condição x > 5?
#R: A expressão ifelse permite avaliação vetorizada da condição

# E em relação à expressão que não permite, como ela avalia a condição?
#R: Ela avalia de maneira singular, por exemplo, se fosse passado como parâmetro um elemento
#do vetor, ela funcionaria.


# Questão 5 ---------------------------------------------------------------

# Crie uma função que calcule e imprima a soma dos objetos de um vetor passado por parâmetro.
# Sua funcao deve verificar se os objetos passados sao do tipo 'numeric'. Caso não sejam, deve
# retornar a mensagem personalizada "A classe dos objetos a, b, c, d,... deve ser numeric".
#

person_soma <- function(c()) {
  
}


# Input:
# > person_soma(1, 2, 98, -6, "1", "a", T)
# Output:
# [1] "A classe dos objetos deve ser numeric"
#
# Input: 
# > person_soma(1,2,3,4)
# Output:
# [1] 27
# [1] "A soma é positiva"
# 
# Input: 
# > person_soma(-3,-5,-8,3)
# Output: 
# [1] -8
# [1] "A soma é negativa"
#
# Input: 
# > person_soma(-8,8,-16,16)
# Output:
# [1] 0
# [1] "A soma é neutra"



