# FATORES

vec1 <- c("Macho","Femea","Macho","Macho")
vec1
fac_vec1 <- factor(vec1)
fac_vec1
class(vec1)
class(fac_vec1)

# VARIÁVEIS CATEGÓRICAS NOMINAIS
#não existe uma ordem implícita

animais <- c("Zebra","Pantera","Rinoceronte","Macaco","Tigre")
animais
class(animais)
fac_animais <- factor(animais)
fac_animais
class(fac_animais)
levels(fac_animais)

# VARIÁVEIS CATEGÓRICAS ORDINAIS
#possuem um ordem natural

grad <- c("Mestrado","Doutorado","Bacharelado","Mestrado","Mestrado")
grad
fac_grad <- factor(grad, order=TRUE, levels = c("Doutorado","Mestrado","Bacharelado")) #indico como quero ordenar
fac_grad
levels(fac_grad)

# SUMARIZAR OS DADOS FORNECE UMA VISÃO GERAL SOBRE O CONTEÚDO DAS VARIÁVEIS
summary(fac_grad)
summary(grad)

vec2 <- c("M","F","F","M","M","M","F","F","M","M","M","F","F","M","M")
vec2
fac_vec2 <- factor(vec2)
fac_vec2
levels(fac_vec2) <- c("Femea","Macho")
fac_vec2
summary(fac_vec2)
summary(vec2)

#MAIS EXEMPLOS
data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata = factor(data)
fdata

rdata = factor(data,labels = c("I","II","III"))
rdata

# FATORES NÃO-ORDENADOS
set1 <- c("AA","B","BA","CC","CA","AA","BA","CC","CC")
set1

# TRANSFORMANDO OS DADOS.
# R apenas criou os níveis, o que não significa que exista uma hierarquia.

f.set1 <- factor(set1)
f.set1
class(f.set1)
is.ordered(f.set1)

# FATORES ORDENADOS
o.set1 <- factor(set1, levels = c("CA","BA","AA","CC","B"), ordered = TRUE)
o.set1
is.ordered(o.set1)

as.numeric(o.set1)
table(o.set1)

# FATORES E DATAFRAMES
df <- read.csv2("etnias.csv", sep=',')
df

# VARIÁVEIS DO TIPO FATOR
str(df)


# NÍVEIS DOS FATORES
# Internamente, o R armazena valores inteiros e faz um mapeamento para as strings (em ordem alfabética)
# e agrupa as estatísticas por níveis. Agora, se fizermos sumarização de estatísticas, é possível
# visualizar a contabilização para cada categoria.
levels(df$Etnia)
summary(df$Etnia)

# PLOT
# Agora se fizermos um plot, temos um BOXPLOT para estas variáveis categóricas
# O til "~" representa uma fórumala em linguagem R, no caso eu quero colocar as 
# variáveis no mesmo gráfico.
plot(df$Idade~df$Etnia,xlab='Etnia',ylab = 'Idade', main='Idade por Etnia')

# REGRESSÃO
# lm -> linear model
summary(lm(Idade~Etnia,data=df)) # procura verificar a relação entre as variáveis.

# CONVERTENDO UMA COLUNA EM VARIÁVEL CATEGÓRICA. ISSO CRIARÁ UM FATOR NÃO-ORDENADO.
df
str(df)
df$Estado_Civil.cat <- factor(df$Estado_Civil,labels=c("Solteiro","Casado","Divorciado"))
df
str(df)
