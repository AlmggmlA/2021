# Lista de Exercícios - Capítulo 3

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/Users/Prígio/Desktop/FCD/BigDataRAzure/Cap03")
getwd()

# Exercício 1 - Pesquise pela função que permite listar todos os arquivo no diretório de trabalho
?list.files
list.files()


# Exercício 2 - Crie um dataframe a partir de 3 vetores: um de caracteres, um lógico e um de números
vetCaracteres <- c("kuen","luen","muen")
vetLogicos <- c(TRUE,FALSE,TRUE)
vetNumeros <- c(1,2,3)

dfVetoresMistos <- data.frame(vetCaracteres,vetLogicos,vetNumeros)
dfVetoresMistos


# Exercício 3 - Considere o vetor abaixo. 
# Crie um loop que verifique se há números maiores que 10 e imprima o número e uma mensagem no console.
# Criando um Vetor
vec1 <- c(12, 3, 4, 19, 34,11)
vec1


for(i in vec1){
  if(i>10)
    print(paste("O número maior que 10 encontrado foi: ", i)) # também pode usar cat()
}


#SOLUÇÃO PROFESSOR 03:
for(j in 1:length(vec1)){
  if(vec1[j]>10){
    print(vec1[j])
    print('Este elemento do vetor é maior que 10')
  }else{
    print(vec1[j])
    print('Este elemento do vetor é menor que 10')
  }
}


# Exercício 4 - Conisdere a lista abaixo. Crie um loop que imprima no console cada elemento da lista
lst2 <- list(2, 3, 5, 7, 11, 13)
lst2

for(i in lst2)
  print(i)

#SOLUÇÃO PROFESSOR 04:
for(j in 1:length(lst2)){
  print(lst2[[j]])
}

# Exercício 5 - Considere as duas matrizes abaixo. 
# Faça uma multiplicação element-wise e multiplicação normal entre as materizes
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
mat2 <- t(mat1)
mat2

# Multiplicação element-wise
mat3 <- mat1*mat2
mat3
# Multiplicação de matrizes
mat4 <- mat1%*%mat2
mat4

#DICA DO PROFESSOR: www.mathwarehouse.com/algebra/matrix

# Exercício 6 - Crie um vetor, matriz, lista e dataframe e faça a nomeação de cada um dos objetos
?names

vetor <- c(1,2)
names(vetor) <- c("num01","num02")
vetor

matriz <- matrix(c(4:7),nrow = 2)
dimnames(matriz) <- list(c("lin01","lin2"),c("col01","col02"))
matriz

lista <- list("abc",123,c(4,5,6))
names(lista) <- c("letra","número","vetor")
lista

dataFrame <- data.frame("kuen","luen","muen",1,2,3)
names(dataFrame) <- c("nom01","nom02","nom03","val01","val02","val03")
dataFrame

#SOLUÇÃO PROFESSOR 06:
dataFrame <- data.frame(c("A","B","C"),c(4.5,3.9,7.2),c(TRUE,TRUE,FALSE))
colnames(dataFrame) <- c("CARACTERES","FLOAT","LOGICO")
rownames(dataFrame) <- c("obs01","obs02","obs03")
dataFrame

# Exercício 7 - Considere a matriz abaixo. Atribua valores NA de forma aletória para 50 elementos da matriz
# Dica: use a função sample()
mat2 <- matrix(1:90, 10)
mat2

?sample
?sample_n
?replace

 amostra <- sample(mat2,50)
 amostra
 
 novaMatriz <- replace(mat2,amostra,NA)
 novaMatriz

#SOLUÇÃO PROFESSOR 07:
mat2[sample(1:50,10)] = NA
mat2

# Exercício 8 - Para a matriz abaixo, calcule a soma por linha e por coluna
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1

?apply

somaLINHA <- apply(mat1,1,sum)
somaLINHA

somaColuna <- apply(mat1,2,sum)
somaColuna

#SOLUÇÃO PROFESSOR 08:
rowSums(mat1)
colSums(mat1)


# Exercício 9 - Para o vetor abaixo, ordene os valores em ordem crescente
a <- c(100, 10, 10000, 1000)
a

?order
?sort

sort(a)
order(a)

#SOLUÇÃO PROFESSOR 09:
a[order(a)]


# Exercício 10 - Imprima no console todos os elementos da matriz abaixo que forem maiores que 15
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1

?is.na
?matrix

matriz <- matrix()
i=1
for(i in mat1){
  if(mat1[i]>15){
    matriz[[i]] <- mat1[i]
    print(matriz[[i]])
    i = i+1
  }
}

semNA <- na.omit(matriz)

resultado <- matrix(semNA,nrow = 5,byrow = T)
resultado

#OU

resultado02 <- matrix(matriz,nrow = 5)
resultado02

#SOLUÇÃO PROFESSOR 10:
for(i in mat1){
  if(i>15){
    print(i)
  }
}