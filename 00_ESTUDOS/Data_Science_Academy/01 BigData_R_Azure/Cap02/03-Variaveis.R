setwd("C:/Users/Prígio/Desktop/FCD/BigDataRAzure/Cap02")

#CRIANDO VARIÁVEIS
var1 = 100
var1
mode(var1) #verifica o modo da linguagem
help("mode")
sqrt(var1)

#PODEMOS ATRIBUIR O VALOR DE UMA VARIÁVEL A OUTRA VARIÁVEL
var2 = var1
var2
mode(var2)
typeof(var2)
help("typeof")

#UMA VARIÁVEL PODE SER UMA LISTA DE ELEMENTOS
var3 = c("primeiro","segundo","terceiro") # a função "C" cria um vetor.
var3
mode(var3)

#UMA VARIÁVEL PODE SER UMA FUNÇÃO
var4 = function(x){x+3}
var4
mode(var4)

#PODEMOS TAMBÉM MUDAR O MODO DO DADO
var5 = as.character(var1) # converte o mode para character
var5
mode(var5)

#ATRIBUINDO VALORES A OBJETOS
x <- c(1,2,3)
x
x1 = c(2,4,5)
x1
c(1,2,3) -> y
y

#é o mesmo que atribuir, estou atribuindo para
#a variável "x" o valor do vetor "C".
assign("x",c(6.3,4,-2))
x

#VERIFICANDO O VALOR NUMA POSIÇÃO ESPECÍFICA
x[1] # busca um elemento da LISTA.

#VERIFICAR OBJETOS
#após criar as variáveis você pode listar os objetos.
ls() 
objects()

#REMOVER OBJETOS
rm(x)
x