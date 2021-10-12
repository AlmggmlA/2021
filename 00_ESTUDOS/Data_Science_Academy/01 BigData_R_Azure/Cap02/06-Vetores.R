# VETORES, OPERAÇÕES COM VETORES E VETORES NOMEADOS

# VETOR DE STRINGS
vetor_caracter = c("Data","Science","Academy")
vetor_caracter

# VETOR DE FLOATS
vetor_numerico = c(1.91,45.6,301.5)
vetor_numerico

# VETOR DE VALORES COMPLEXOS
vetor_complexo = c(5.2+3i,3.8+4i)
vetor_complexo

# VETOR DE VALORES LÓGICOS
vetor_logico = c(TRUE,FALSE,TRUE,FALSE,FALSE)
vetor_logico

# VETOR DE NÚMEROS INTEIROS
vetor_integer = c(2,4,6)
vetor_integer

# UTILIZANDO seq()
vetor1 = seq(1:10)
vetor1
is.vector(vetor1)
?seq

# UTILIZANDO rep()
vetor2 = rep(1:5)
vetor2
is.vector(vetor2)
?rep

# INDEXAÇÃO DE VETORES
a <- c(1,2,3,4,5)
a
a[1]
a[6]

b<-c("Data","Science","Academy")
b
b[0]
b[2]
b[1]
b[3]

# COMBINANDO VETORES
v1 = c(2,3,5)
v2 = c("aa","bb","cc","dd","ee")
c(v1,v2)

# OPERAÇÕES COM VETORES
x = c(1,3,5,7)
y = c(2,4,6,8)

x*5
x+y
x-y
x*y
x/y
x**y

# SOMANDO VETORES COM NÚMERO DIFERENTE DE ELEMENTOS
alfa = c(10,20,30)
beta = c(1,2,3,45,6,7,8,9,10)
alfa+beta

# VETOR NOMEADO
v = c("Aprígio","Gusmão")
v
names(v) = c("NOME","SOBRENOME") #nomeia o vetor, ou seja, nomeia a coluna.
v
v["NOME"]