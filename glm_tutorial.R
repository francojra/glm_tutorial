
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

# Erros ou distribuições não-normais -------------------------------------------------------------------------------------------------------

## Modelos lineares generalizados podem ter erros ou distribuições não-normais. Entretanto, 
## existem limitações para as possíveis distribuições. Por exemplo, você pode usar a família Poisson
## para dados de contagem, ou você pode usar a família binomial para dados binomiais.

## Exemplo dados binários: sobrevivência (morto ou vivo);
## Exemplo dados de contagem: número de indivíduos ou espécies.

# Link de funções não-lineares -------------------------------------------------------------------------------------------------------------

## GLMs também tem links de funções não-lineares, os quais ligam os coeficientes de regressão
## para a distribuição e permite que o modelo linear generalize.

# GLM com Poisson --------------------------------------------------------------------------------------------------------------------------

glm(y ~ x, data = dat, family = 'poisson')

## A distribuição de Poisson não deve ser usada quando os dados não forem de contagem ou
## não forem positivos, quando a amostra de área e tempo não forem constantes, quando a média
## for maior que ou aproximadamente igual a 30, quando os dados apresentarem sobre-dispersão 
## e quando ouver dados com zeros inflacionados.

## Os coeficientes da GLM de Poisson estão na escala log.
