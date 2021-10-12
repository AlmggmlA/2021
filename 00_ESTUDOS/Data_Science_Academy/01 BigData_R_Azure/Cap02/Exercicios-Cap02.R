# Lista de Exercícios - Capítulo 2

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/Users/Prígio/Desktop/FCD/BigDataRAzure/Cap02")
getwd()

# Exercício 1 - Crie um vetor com 30 números inteiros

vetor1 <- rep(1:30)
vetor1

vetor2 <- seq(1:30)
vetor2
#outra solução dada pelo professor: vetor <- c(1:30)


# Exercício 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros

matriz = matrix(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), nrow = 4, ncol = 4)
matriz
#outra solução dada pelo professor: matriz <- matrix(c(1:16),nrow=4,ncol=4)


# Exercício 3 - Crie uma lista unindo o vetor e matriz criados anteriormente

lista = list(vetor1,matriz)
lista

# Exercício 4 - Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat

df = data.frame(read.table("http://data.princeton.edu/wws509/datasets/effort.dat"))
df

# Exercício 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")

colnames(df) <- c("config", "esfc", "chang")
df
#outra solução dada pelo professor: names(df) = c("config", "esfc", "chang")


# Exercício 6 - Imprima na tela o dataframe iris, verifique quantas dimensões existem no dataframe iris e imprima um resumo do dataset

View(iris)
iris
dim(iris)
summary(iris)
#outra solução dada pelo professor: str(iris)


# Exercício 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris

plot(iris$Sepal.Length,iris$Sepal.Width)

# Exercício 8 - Usando a função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()

dfSubSet <- subset(iris,Sepal.Length > 7)
dfSubSet

# Exercícios 9 (Desafio) - Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: Você vai ter que instalar e carregar o pacote dplyr
# Dica 2: Consulte o help para aprender como usar a função slice()

install.packages("dplyr")
library("dplyr")

dfIris <- data.frame(iris)
dfIris
slice(dfIris, 1:15)
?slice
#outra solução dada pelo professor: novoIris <- iris


# Exercícios 10 - Use a função filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: Use o RSiteSearch para aprender como usar a função filter

filter(dfIris,dfIris$Sepal.Length>6)
#outra solução dada pelo professor: filter(novoIris, Sepal.Length>6) | RSiteSearch('filter')

