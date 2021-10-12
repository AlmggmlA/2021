# LISTAS - operações com listas e listas nomeadas.

#Use list() para criar listas

# LISTA DE STRINGS
lista_caracter1 = list('A','B','C')
lista_caracter1
lista_caracter2 = list(c('V','V'),'B','C')
lista_caracter2
lista_caracter3 = list(matrix(c('M','M','M','M'), nr=2),'B','C')
lista_caracter3

# LISTA DE NÚMEROS INTEIROS
lista_inteiros = list(2,3,4)
lista_inteiros

# LISTA DE FLOATS
lista_numerico = list(1.90,45.3,300.5)
lista_numerico

# LISTA DE NÚMEROS COMPLEXOS
lista_complexos = list(5.2+3i,2.4+8i)
lista_complexos

# LISTA DE VALORES LÓGICOS
lista_logicos = list(TRUE,FALSE,TRUE)
lista_logicos

# LISTAS COMPOSTAS
lista_composta1 = list("A",3,TRUE)
lista_composta1

lista1 <- list(1:10,c("João","José","Maria"), rnorm(10))
lista1

?rnorm #representa a distribuição normal

# FATIAMENTO(slicing) DA LISTA
lista1[1] # 1ª dimensão
lista1[2] # 2ª dimensão
lista1[[2]][1] # retorna o elemento daquela dimensão e daquela posição.
lista1[[2]][1] = "KUEN"
lista1

# LISTA NOMEADAS - para nomear os elementos de cada dimensão
names(lista1) <- c("inteiros","caracteres","numéricos")
lista1

#nomeando a lista no momento da sua criação.
vec_num <- 1:4
vec_char <- c("A","B","C","D")

lista2 <- list(Numeros = venc_num, Letras = vec_char)
lista2

# NOMEAR OS ELEMENTOS DIRETAMENTE
lista2 <- list(elemento1 = 3:5, elemento2 = c(7.2,3.5))
lista2

# TRABALHANDO COM ELEMENTOS ESPECÍFICOS DA LISTA
names(lista1) <- c("inteiros","caracteres","numéricos")
lista1

lista1$caracteres
length(lista1$inteiros)
lista1$inteiros

# VERIFICAR O COMPRIMENTO DA LISTA
length(lista1)

#Podemos extrair um elemento específico dentro de cada nível da lista
lista1$caracteres[2]

# MODE DOS ELEMENTOS
mode(lista1$numéricos)
mode(lista1$caracteres)

# COMBINANDO 2 LISTAS
lista3 <- c(lista1,lista2)
lista3

# TRANSFORMANDO UM VETOR EM LISTA
v = c(1:3)
v
l = as.list(v)
l

# UNINDO 2 ELEMENTOS NUMA LISTA
mat = matrix(1:4, nrow = 2)
mat
vec = c(1:9)
vec
lst = list(mat,vec)
lst








