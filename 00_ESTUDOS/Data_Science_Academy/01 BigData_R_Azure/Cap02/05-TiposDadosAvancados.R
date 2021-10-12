# TIPOS AVANÇADOS DE DADOS EM R

# VETOR: possui 1 dimensão e 1 tipo de dado
vetor1 <- c(1:20)
vetor1
length(vetor1)
mode(vetor1)
class(vetor1)
typeof(vetor1)

# MATRIZ: possui 2 dimensões e 1 tipo de dado
matriz1 <- matrix(1:20,nrow = 2)
matriz1
length(matriz1)
mode(matriz1)
class(matriz1)
typeof(matriz1)

# ARRAY: possui 2 ou mais dimensões e 1 tipo de dado
array1 <- array(1:5,dim = c(3,3,3))
array1
length(array1)
mode(array1)
class(array1)
typeof(array1)

# DATA FRAMES: dados de diferentes tipos
#Data Frames nada mais são do que uma matriz com diferentes tipos de dados.
View(iris) # o iris é apenas um dataset que vem junto com a linguagem R.
length(iris)
mode(iris)
class(iris)
typeof(iris)

# LISTAS: coleção de diferentes objetos
#Diferentes tipos de objetos são possíveis e comuns
lista1 <- list(a = matriz1,b=vetor1)
lista1
length(lista1)
mode(lista1)
class(lista1)
typeof(lista1)

# FUNÇÕES também são vistas como objetos em R
#Elas não são tipos de dados!
func1 <- function(x){
  var1 <- x*x
  return(var1)
}

func1(5)
class(func1)

#REMOVENDO OBJETOS
objects()
rm(array1,func1)
objects()

