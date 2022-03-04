
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

# Comparando modelos glm com gaussian e poisson --------------------------------------------------------------------------------------------

dat <- datasets::ChickWeight
dat

mod_poisson <- glm(weight ~ Time, data = dat, family = 'poisson')
mod_gaussian <- glm(weight ~ Time, data = dat, family = 'gaussian')

summary(mod_poisson)
summary(mod_gaussian)

## Os modelos com o summary promovem mais detalhes: resíduos dos desvios (ajuda a entender 
## o ajuste do modelo), coeficientes (p,estimate, error, and t ou z value, os desvios dos 
## modelos nulos e reasíduos, e AIC). Também indica se o modelo apresenta sobre-dispersão
## (ter mais variância ou zeros que o modleo sugere).
## Os modelos podem apresentar diferentes valores de p e AIC.
## Nesse caso, o melhor modelo é o gaussiano devido a peso ser um dado numérico contínuo.

# Comparação de interceptos versus médias --------------------------------------------------------------------------------------------------

mod_gaussian_1 <- glm(weight ~ Time, data = dat, family = 'gaussian')
mod_gaussian_2 <- glm(weight ~ Time - 1, data = dat, family = 'gaussian')

summary(mod_gaussian_1)
summary(mod_gaussian_2)

## Podemos observar que os estimates mudaram, no segundo modelo não é adicionado
## o valor do intercepto, havendo apenas a comparação ao longo do tempo.

# Verificar coeficientes de regressão, estatísticas e intervalos de confiança ---------------------------------------------------------------

coef(mod_gaussian)
confint(mod_gaussian)

library(broom)
tidy(mod_gaussian)

# Previsões com glm ------------------------------------------------------------------------------------------------------------------------

gaussian_mod <- predict(object = mod_gaussian, type = "response")
print(gaussian_mod)

## Essa função encontra a média do peso para cada tempo. Isso pode ser uma ferramenta para datascience.

