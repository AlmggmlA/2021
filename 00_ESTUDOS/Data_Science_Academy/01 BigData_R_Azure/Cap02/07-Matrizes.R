# MATRIZES, OPERAÇÕES COM MATRIZES E MATRIZES NOMEADAS

# CRIANDO MATRIZES

#NÚMERO DE LINHAS - nr
matrix(c(1,2,3,4,5,6), nr = 2)
matrix(c(1,2,3,4,5,6), nr = 3)
matrix(c(1,2,3,4,5,6), nr = 6)


#NÚMERO DE COLUNAS - nc
matrix(c(1,2,3,4,5,6), nc = 2)
matrix(c(1,2,3,4,5,6), nc = 3)
matrix(c(1,2,3,4,5,6), nc = 6)

#HELP
?matrix

#As matrizes precisam ter um número de elementos que seja
#múltiplo do número de linhas.
matrix(c(1,2,3,4,5), nc = 2)
matrix(c(1,2,3,4,5), nc = 5)

#Criando matrizes a partir de vetores e preenchendo a partir das linhas
meusDados = c(1:10)
#byrow ---> preenchimento por linha | T = TRUE
#por padrão o preenchimento é por coluna!
matrix(data = meusDados, nrow = 5, ncol = 2, byrow = T) 
matrix(data = meusDados, nrow = 5, ncol = 2)

#FATIANDO A MATRIZ [linha,coluna]
mat <- matrix(c(2,3,4,5), nrow = 2)
mat
mat[1,2]
mat[2,2]
mat[1,3]
mat[,2] # exibe todas as linhas da coluna 02

#CRIANDO UMA MATRIZ DIAGONAL
#conceito: é aquela onde todos os elementos são iguais a zero, exceto na diagonal.
matriz = 1:3 #cria-se um vetor
diag(matriz) #coloca o vetor na diagonal de uma matriz preenchida com zero.

#EXTRAINDO VETOR DE UMA MATRIZ DIAGONAL
vetor = diag(matriz) #alimenta o objeto "vetor"
diag(vetor) #traz apenas os elementos que compõe a diagonal

#TRANSPOSTA DA MATRIZ
#conceito: é quando transformamos linhas em colunas.
w <- matrix(c(2,48,8,12), nrow = 2, ncol = 2)
w
t(w) # A função t() cria a matriz transposta
u <- t(w)
u

#MATRIZ INVERSA
#conceito: é uma matriz que contém o mesmo número de linhas e colunas (matriz quadrada), chamada de identidade.
solve(w)

#MULTIPLICAÇÃO DE MATRIZES
mat1 <- matrix(c(2,3,4,5), nr=2)
mat1
mat2 <- matrix(c(6,7,8,9), nr=2)
mat2
mat1*mat2
mat1/mat2
mat1+mat2
mat1-mat2

#MULTIPLICANDO MATRIZ COM VETOR
x = c(1:4)
x
y <- matrix(c(2,3,4,5), nr=2)
x * y

#NOMEANDO A MATRIZ
mat3 <- matrix(c('Terra','Marte','Saturno','Netuno'), nr=2)
mat3
dimnames(mat3) = (list(c('Linha1','Linha2'), c('Coluna1','Coluna2')))
mat3

#Identificando linhas e colunas no momento de criação da matriz
matrix(c(1,2,3,4), nr=2,nc=2,dimnames = list(c("Linha 01","Linha 02"),c("Coluna 01","Coluna 02")))

#COMBINANDO MATRIZES
mat4 <- matrix(c(2,3,4,5), nr=2)
mat4
mat5 <- matrix(c(6,7,8,9),nr=2)
mat5
cbind(mat4,mat5) #ligando por coluna
rbind(mat4,mat5) #ligando por linha

#DESCONSTRUINDO A MATRIZ
c(mat4) #imprime a desconstrução da matriz, sem alterar a matriz. Transforma a matriz em vetor apenas.


















