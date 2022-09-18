setwd("C:\\ova\\dsa\\BA\\C2\\Cap02\\R\\dados")
library(ggplot2)


# Análise Descritiva em R

# Carregando os dados
carros <- read.csv("carros.csv", stringsAsFactors = FALSE)
View(carros)

# Sumário da estrutura do dataset
str(carros)
names(carros) <- c('Ano', 'Modelo', 'Preco', 'Kilometragem', 'Cor', 'Transmissao')
View(carros)

##### Explorando Variáveis Numéricas ##### 

# Sumário
summary(carros$Ano)
summary(carros[c("Preco", "Kilometragem")])
#Kilometragem possui uma diferença muito grande entre media e mediana
#indica distribuição assimétrica e presença de outliers

#Calculando medias
mean(carros$Preco) # media de preço
mean(carros$Kilometragem) #media kilometragem

#calculando medianas
median(carros$Preco) #mediana preço
median(carros$Kilometragem) #mediana kilometragem

#Range min-max
range(carros$Preco)
range(carros$Kilometragem)

#diferença entre extremos

diff(range(carros$Preco))
diff(range(carros$Kilometragem))

# calculo de IQR ou AIQ

IQR(carros$Preco)
quantile(carros$Preco, seq(from=0, to=1, by=0.20))

#BoxPlot

boxplot(carros$Preco, main="Boxplot Preços", ylab = "Preço")
boxplot(carros$Kilometragem, main = "Boxplot KM", ylab="Kilometragem")

#histograma

hist(carros$Preco, main="Distribuição Preço", xlab="Preço")
hist(carros$Kilometragem, main="Distribuição KM", xlab="KM")

#Assimetria e Curtose

library(e1071)

skewness(carros$Preco)  # dados levementes assimetricos 
kurtosis(carros$Preco)

skewness(carros$Kilometragem)   
kurtosis(carros$Kilometragem)

#desvio padrao
sd(carros$Preco) #indica dados dispersos
sd(carros$Kilometragem)  #dados EXTREMAMENTE dispersos
mean(carros$Kilometragem)

#scatter plot

plot(x=carros$Preco, y=carros$Kilometragem, xlab="Preço", 
     ylab="KM", main="Scatteplot Km e Preço")

#verificando correlação entre variáveis


cor(carros$Preco, carros$Kilometragem) #Forte correlação negativa
#quanto maior os preços, menor a Kilometragem

cor(carros$Ano, carros$Kilometragem)
#maior o ano, ou seja, quanto mais novo, menor a kilometragem

cor(carros$Preco, carros$Ano)#Forte correlação positiva
#quanto mais novo, maior o valor do carro


#####   Trabalhando com variáveis categóricas    ####


table(carros$Ano)
table(carros$Modelo)
table(carros$Cor)

#verificando em percentuais

round(prop.table(table(carros$Modelo)) * 100, digits=1)
round(prop.table(table(carros$Cor)) * 100, digits=1)

##visualizando graficamente

ggplot( data=carros, aes(x=as.factor(Transmissao))) + 
      geom_bar(aes(y=(..count..))) +
      labs(x="Transmissão", y="Contagem")

