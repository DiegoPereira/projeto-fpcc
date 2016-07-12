library("earth")
library("dplyr")
library(monmlp)

#Fazer o experimento usando mlp, correlação de mars erandom forest e normal
# 10 rodadas, intervalo de confiança das rodadas

dados_beta <- read.csv("~/Downloads/dados_beta.csv")
tamanho_treino <- 34
tamanho_teste <- 4

#setando a semente
set.seed(42)

#obtendo as amostras aleatorias

data1 <- dados_beta[sample(nrow(dados_beta)),]
data1 <- select(data1, Quantidade.de.Pessoas, Quantidade.de.Macs)
treino <- data1[c(1:tamanho_treino),]
teste <- data1[c(tamanho_treino+1:tamanho_teste),]


calc_r2 <- function(var1, var2, dados){
  r2 <- lm(var1 ~ var2, dados)
  return(summary(r2)$r.squared )
}

#http://machinelearningmastery.com/non-linear-regression-in-r/

# Mapeando a quantidade de macs em pessoas diretamente, qual o erro?

mac_diretamente <- calc_r2(dados_beta$Quantidade.de.Pessoas, dados_beta$Quantidade.de.Macs, dados_beta)
print(mac_diretamente)


# regressao de mars

fit <- earth(Quantidade.de.Pessoas~., treino)
treino$predictions <- predict(fit, treino)

calc_r2(teste$Quantidade.de.Pessoas, teste$predictions, teste)

rmse <- mean((teste$Quantidade.de.Pessoas - predictions)^2)
print(rmse)


fit <- earth(treino$Quantidade.de.Pessoas ~ treino$Quantidade.de.Macs)


fit <- earth(Employed~., longley)
# summarize the fit
summary(fit)
# summarize the importance of input variables
evimp(fit)
# make predictions
predictions <- predict(fit, longley)
# summarize accuracy


# MLP

data1 <- dados_beta[sample(nrow(dados_beta)),]
data1 <- select(data1, Quantidade.de.Pessoas, Quantidade.de.Macs)
treino <- data1[c(1:tamanho_treino),]
teste <- data1[c(tamanho_treino+1:tamanho_teste),]
library(monmlp)
k <- 7
x <- matrix( rnorm(k*n), nr=n )
w <- rnorm(k)
y <- ifelse( logistic( x %*% w ) + rnorm(n, sd = 0.2) > 1, 0, 1 )

# Fit the model and compute the predictions
r <- monmlp.fit(treino$Quantidade.de.Pessoas, treino$Quantidade.de.Macs, hidden1=5, n.ensemble=15)
z <- monmlp.predict(x = x, weights = r)

# Compute the AUC
library(ROCR)
plot( performance( prediction( z, y ), "tpr","fpr" ) )
performance( prediction( z, y ), "auc" )@y.values[[1]]

# random forest





