#Fazer o experimento usando mlp, correlação de mars erandom forest e normal
# 10 rodadas, intervalo de confiança das rodadas

dados_beta <- read.csv("~/Downloads/dados_beta.csv")

# Mapeando a quantidade de macs em pessoas diretamente, qual o erro?

mac_diretamente <- lm(Quantidade.de.Pessoas ~ Quantidade.de.Macs, data=dados_beta)
summary(mac_diretamente)$r.squared 


# regressao linear 



# MLP


# random forest