
# GLM no R: Modelo Linear Generalizado -----------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 02/03/2022 -------------------------------------------------------------------------------------------------------------------------
# Fonte: Datacamp --------------------------------------------------------------------------------------------------------------------------

# Conceito GLM -----------------------------------------------------------------------------------------------------------------------------

## Modelo Linear Generalizado (GLM) é uma generalização de uma regressão linear comum permitida
## para variáveis respostas que apresentam outra distrubuição que não a normal, como a distribuição
## Gaussiana.

# O básico do GLM --------------------------------------------------------------------------------------------------------------------------

## GLMs são modelos ajustados com a função glm(). Como no modelo linear lm(), o glm() tem fórmulas
## e dados de entrada, mas também apresenta uma família como input.

# Sintaxe do Modelo Linear Generalizado ----------------------------------------------------------------------------------------------------

glm(y ~ x, data = dados, family = "gaussian")

## A família Gaussiana é como o R se refere a distribuição normal e é o padrão da glm().

# Similaridade a Modelos Lineares ----------------------------------------------------------------------------------------------------------

## Se a família é Gaussiana, então o GLM funciona como um LM.
