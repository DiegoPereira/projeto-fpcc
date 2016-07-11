#Fazer o experimento usando mlp, correlação de mars erandom forest e normal
# 10 rodadas, intervalo de confiança das rodadas

dados_beta <- read.csv("~/Downloads/dados_beta.csv")
tamanho_treino <- 34
tamanho_teste <- 4

#setando a semente
set.seed(42)

#obtendo as amostras aleatorias

data1 <- dados_beta[sample(nrow(dados_beta)),]
treino <- data1[c(1:tamanho_treino),]
teste <- data1[c(tamanho_treino+1:tamanho_teste),]


http://machinelearningmastery.com/non-linear-regression-in-r/

# Mapeando a quantidade de macs em pessoas diretamente, qual o erro?

mac_diretamente <- lm(Quantidade.de.Pessoas ~ Quantidade.de.Macs, data=dados_beta)
summary(mac_diretamente)$r.squared 


# regressao linear 



# MLP


# random forest