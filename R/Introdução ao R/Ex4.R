
# Exercício - Importação e Exportação de dados ----------------------------

# Questão 1 ---------------------------------------------------------------

# O conjunto de dados 'happiness.csv' mostra métricas coletadas de 
# pesquisas feitas em vários países do mundo relacionadas a uma escala de felicidade. 

# Neste exercício, vamos importar uma tabela (em arquivo de texto) como um dataframe, fazer algumas operações
# e em seguida vamos salvar o resultado em um outro arquivo de texto.
# Antes de importar o arquivo, verifique sua estrutura (como as colunas estão separadas, se tem cabeçalho, etc.)


# a) Importe o arquivo corretamente e o armazene em uma variável.
readLines("happiness", 5)
df <- read.csv("happiness", sep = ";", header = T,
                      dec = ",", stringsAsFactors = F)
View(df)

# b) Verifique se a classe das colunas do dataframe condizem com o tipo de dado armazenado. Por exemplo, 
# a coluna dos países é um vetor de caracter?

str(df)
#R: Todas as colunas, com excessao de Country e Region, foram lidas como numeric. Country e Region foram lidas como char


# c) Crie um subset do dataframe contendo apenas as informações dos países da América Latina e Caribe.


 
latin_america <- df[df$Region == "Latin America and Caribbean", ]
View(latin_america)
# d) De acordo com o rank de felicidade, qual país da América Latina é o mais feliz?


# e) De acordo com o score de felicidade (Happiness.Score), em qual país as pessoas são mais felizes?

hap_idx = which.max(df$Happiness.Score)
happiest_country <- df[hap_idx,1]
happiest_country

# f) E em qual país as pessoas são menos felizes, com base no score de felicidade?

hap_idx = which.min(df$Happiness.Score)
happiest_country <- df[hap_idx,1]
happiest_country

# g) Ordene o dataframe de acordo com score de felicidade, de maneira decrescente. 

ordered <- df[order(df$Happiness.Score, decreasing = T),]
View(ordered)

# h) Salve o dataframe com as informações da América Latina em um arquivo de texto. Ele deve utilizar como
# separador o ';'. 
write.table(latin_america, file = "latin_america.csv", sep = ";", row.names = F, quote = F)

# Questão 2 ---------------------------------------------------------------

# O conjunto de dados 'iris' contém informações acerca de três espécies de flores Iris: 
# tamanho da sépala, largura da sépala, tamanho da pétala, largura da pétala
# e a variedade da flor.

# a) Importe-o sob a forma de um dataframe para a variável 'iris'. Use uma função de 
# importação compatível com o arquivo fornecido. 

readLines("iris", 5)
iris <- read.csv("iris", stringsAsFactors = F)
View(iris)

# b) Obtenha um data.frame contendo apenas as observações das flores da variedade 'versicolor'.

versicolor <- iris[iris$species=="Iris-versicolor", ]
View(versicolor)

# c) Salve o data.frame filtrado do item b) em um arquivo de texto com as colunas separadas 
# por vírgula na sua pasta de trabalho. 

write.csv(versicolor, file = "versicolor.csv")


