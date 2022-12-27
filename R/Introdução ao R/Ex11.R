
# Exercício 11 ------------------------------------------------------------

# Questão 1 ---------------------------------------------------------------

# Vamos usar novamente o dataset 'DNase'. Crie um gráfico de dispersão da concentração
# contra a densidade das 3 primeiras corridas (coluna 'Run'). Especifique cada corrida
# com pontos diferentes no gráfico.

run1 <- DNase[DNase$Run == 1,]
run2 <- DNase[DNase$Run == 2,]
run3 <- DNase[DNase$Run == 3,]

View(DNase)
plot(run1$conc, run1$density, col = "red",
     pch = 15, xlab = "Concentracao", ylab = "Densidade", main="Densidade x Concentração")
points(run2$conc, run2$density, col = "blue", 
       pch = 16)
points(run3$conc, run3$density, col = "peachpuff2", 
       pch = 16)

legend(x = "topleft", col = c("red", "blue", "peachpuff2"), pch = c(16, 17),
       legend = c("Run 1", "Run 2", "Run 3"))

colors()
# Questão 2 ---------------------------------------------------------------

# Com o dataset 'mtcars', crie um gráfico de barras com os pesos dos carros (mtcars$wt). 
# adicione uma linha horizontal que represente a mediana dos pesos. Utilize a linha 
# pontilhada de espessura 4 na cor vermelha (veja os argumentos 'lty' e 'lwd' da função 'par()').

View(mtcars)
mediana = median(mtcars$wt, na.rm = T)
barplot(mtcars$wt, names.arg = mtcars$wt, las=2, cex.names = 0.8, col = "thistle")
abline(h = mediana, lty= 3, lwd = 4,col = 'maroon4')

colors()
# Questão 3 ---------------------------------------------------------------

# Crie um boxplot comparando a distribuição dos pesos dos carros (coluna 'wt') 
# em função do número de cilindros dos carros (coluna 'cyl'). Customize pelo menos 4
# elementos gráficos de sua escolha. 

boxplot(formula = mtcars$wt ~ mtcars$cyl, main = "Distribuição Peso x Cilindros",
        xlab = "Cilindros", ylab = "Peso", 
        col = "turquoise3", border = "violetred2")

# Questão 4 ---------------------------------------------------------------

# Crie um histograma da distribuição da variável 'Solar.R' do dataset 'airquality'. 
# Adicione uma linha de referência para marcar a média da distribuição.
media = mean(airquality$Solar.R, na.rm = T)
hist(airquality$Solar.R, col = 'skyblue')
abline(v = media, col = 'maroon4')

# Questão 5 ---------------------------------------------------------------

# Plote as distribuições das variáveis numéricas 'Ozone', 'Solar.R', 'Wind' e 'Temp'   
# do dataset 'airquality', por meio de boxplots, em cada mês (variável 'Month'). 

# Plote os 4 gráficos em um mesmo painel, usando os argumentos 'mfrow' ou 'mfcol',
# da função par. Consulte a documentação da função. 

View(airquality)

png(filename="figura1.png", height=20, width=20, unit="cm", res=300)
par(mfrow=c(2,2), mar=c(3,3,2,2), oma=c(3,3,2,2))

boxplot(formula = airquality$Ozone ~ airquality$Month, main = "Distribuição Ozone x Mês",
        xlab = "Mês", ylab = "Ozone", 
        col = "turquoise3", border = "violetred2")


boxplot(formula = airquality$Solar.R ~ airquality$Month, main = "Distribuição Solar.R x Mès",
        xlab = "Mês", ylab = "Solar.R", 
        col = "turquoise3", border = "violetred2")

boxplot(formula = airquality$Wind ~ airquality$Month, main = "Distribuição Vento x Mês",
        xlab = "Mês", ylab = "Vento", 
        col = "turquoise3", border = "violetred2")

boxplot(formula = airquality$Temp ~ airquality$Month, main = "Distribuição Temperatura x Mês",
        xlab = "Mês", ylab = "Temperatura", 
        col = "turquoise3", border = "violetred2")

mtext(side=1, text=" eixo X ", outer=T)
mtext(side=2, text=" eixo Y ", outer=T)

dev.off()




