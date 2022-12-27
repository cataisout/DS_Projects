install.packages("dplyr")
# Exercício 3 -------------------------------------------------------------


# Questão 1 ---------------------------------------------------------------

# Considere o seguinte vetor:
x <- 1:18

# Com este vetor, construa uma matriz de 6 linhas e 3 colunas de duas maneiras diferentes.

y<-matrix(x,6,3)
dim(X)<-c(6, 3)
y

# Adicione o seguinte vetor como um coluna da matriz:
v <- letters[1:6]
y <-cbind(v, y)
y

# O que acontece quando juntamos este vetor à matriz?

#R: o vetor se torma uma coluna da nova matriz

# Atribua nomes às colunas e às linhas:

coln <- c("col1", "col2", "col3", "col4")
rown <- c("row1", "row2", "row3", "row4", "row5", "row6")

colnames(y) <- coln
row.names(y) <- rown

# Questão 2 ---------------------------------------------------------------

# Considere a seguinte matriz:
set.seed(1)
m <- matrix(sample(1:100, 20), nrow = 4, ncol = 5)
m
# Ordene, de maneira crescente, as linhas da matriz de acordo com os valores da coluna 1.

help("order_by")

arrange(m[,1], m)
# Exclua as colunas 2 e 4 desta matriz. 

m <- m[-c(2, 4),]

# Crie um outro objeto para guardar o valor da soma das colunas desta matriz. 

col_s <- colSums(m)
col_s
# Questão 3 ---------------------------------------------------------------

# Considere o objeto 'x':
x <- list(list(list()))

# A função 'str()' mostra a estrutura de um objeto.
str(x) 

# A função 'is.recursive()' indica se um objeto é recursivo
is.recursive(x) 


# Agora conside a seguinte lista:
ls <- list(list(1, 2), 1:10, letters[1:5])
ls

# Como os objetos da classe das listas diferem dos vetores atômicos?

#R: os elementos de ls são listas recursivas, listas que contém outras listas
#vetores atômicos, apesar de semelhante, contém apenas 1 tipo de dado, não podendo
#conter outros vetores atômicos.

# Use a função 'length' na lista 'ls' acima. O que ela retorna?
length(ls)
#R: retorna o numero 3, pois é uma lista composta de 3 listas

# Qual a classe de cada elemento desta lista? 

#R: os elementos são da classe list

# Atribua nomes a cada um elementos desta lista.

lnames <- c("n1", "n2", "n3")
names(ls) <- lnames

# Qual é a diferença entre as saídas dos dois comandos abaixo?
ls[2]
ls[[2]]

#R: no primeiro comando retornamos uma lista
# já no segundo, retornamos um objeto interno

# Obtenha os valores (acesse os elementos de duas formas diferentes):
## 1) do 3º elemento da 2ª posição da lista:

ls[[c(2,3)]]      

## 2) os elementos 1 ao 4 da terceira posição da lista.

ls[[3]][1:4]


# Questão 4 ---------------------------------------------------------------

# Considere o vetor:
b <- 1:12

# Com este vetor, crie dois objetos do tipo 'array', usando duas abordagens diferentes. 

a <- array(b)
BB <- c(b)

