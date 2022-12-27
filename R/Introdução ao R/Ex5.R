
# Exercício - Regras de Escopo ----------------------------

# Questão 1 ---------------------------------------------------------------

# Um ambiente no R pode ser entendido como uma coleção de objetos (funções evariáveis, por exemplo) 
# que existe assim que iniciamos nossa sessão no R. 

# O ambiente de mais alto nível disponível é o ambiente global, chamado R_GlobalEnv, ele também pode ser referenciado
# como .GlobalEnv nos códigos em R que escrevemos.

# Vimos na aula que podemos usar a 'função ls()' para mostrar os objetos do ambiente atual.
# Além disso, podemos usar a função 'environment()', que irá nos retornar o ambiente atual.
# Se rodarmos a função environment() no ambiente global, a função retornará que o ambiente atual
# é o próprio ambiente global. 
environment()

# Crie uma função chamada de 'f1' que possua uma outra função 'f2', esta definida dentro do escopo de 'f1'.
# 1. A função interna ('f2') deve fazer duas coisas:
# - Imprimir no console o ambiente atual com a função 'environment()'
# - Imprimir os objetos pertencentes ao seu escopo com a função 'ls()'.

# 2. A função externa ('f1') deve fazer 3 coisas:
# - Deve chamar a função 'f2'
# - Imprimir no console o ambiente atual com a função 'environment()'
# - Imprimir os objetos pertencentes ao seu escopo com a função 'ls()'.

# Uma vez definidas estas funções, chame a função externa e responda: os ambientes exibidos são os mesmos? Justifique.

funcao1 <- function(){
  funcao2 <- function(){
    print("Escopo da função 2")
    print(environment())
    print(ls())
  }
  
  funcao2()
  print("Escopo de função 1")
  print(environment())
  print(ls())
  
}

funcao1()


#R: Os ambientes são diferentes, uma vez que que as funções tem escopos diferentes, sendo a função 1 mais "global" que a função 2




# Questão 2 ---------------------------------------------------------------

# Com base nas regras de escopo do R, justifique o resultado das chamadas das funções abaixo:
# Ex.:1
x <- 12
f1 <- function(y) {
  x <- 10
  f2 <- function() {
    print(x + y)
  }
  f2()
}
f1(4)

9
#A função f1 recebe um valor de y, e passa para f2 o valor de y recebido, e um valor de x (determinado pela função),
# f2 é executada, imprimindo a soma de 10 + valor de y passado, sem receber nenhum argumento, 
#ela trabalha apenas com os valores existentes em f1, uma vez que é permitido pelo seu escopo.




# Ex.:2
z <- 10
f3 <- function(x, y) {
  x * y * z
}
f3(1, 2)


#f3 ao ser chamada, não recebeu nenhum argumento como valor de z, por isso ela busca no escopo global a variável mais
# próxima para utilizar como valor de z.


