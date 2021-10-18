# FAMÍLIA APPLY - uma forma elegante de fazer loops.


  #  apply() - arrays e matrizes
  # tapply() - os vetores podem ser divididos em diferentes subsets
  # lapply() - vetores e listas
  # sapply() - versão amigável da lapply
  # vapply() - similar a sapply, com valor de retorno modificado
  # rapply() - similar a lapply()
  # eapply() - gera uma lista
  # mapply() - similar a sapply, multivariada
  #       by - forma de fazer agregação com os dados que queira fazer algum tipo de loop


#Se você estiver trabalhando com os objetos:

# list, numeric, character (list/vector) => sapply ou lapply
# matrix,data.frame(agregado por coluna) => by/tapply
# operações por linha ou operações específicas => apply

# Usando um loop
lista1 <- list(a=(1:20),b=(35:67))

# Calculando o total de cada elemento da lista com loop for
valor_a = 0
valor_b = 0

for (i in lista1$a){
  valor_a = valor_a + i
}

for (i in lista1$b){
  valor_b = valor_b + i
}

print(valor_a)
print(valor_b)

# CALCULANDO CADA ELEMENTO DA LISTA COM SAPPLY
?sapply
sapply(lista1, sum)

# APLICANDO FUNÇÕES COM SAPPLY
sapply(lista1,mean)

# apply
?apply

x <- matrix(c(20,13,65,32,45,12,76,49,82), nr=3,byrow=T)
x

apply(x,mean)
apply(x, 1,mean)  # valor 1 indica a linha
apply(x,2,mean)   # valor 2 indica a coluna
apply(x,1,plot)

resultapply <- apply(x,1,mean)
resultapply

# APLICANDO apply() A UM DATAFRAME
escola <- data.frame(Aluno=c('Bob','Tereza','Marta','Felipe','Zacarias','José'),
                     Fisica=c(91,82,75,97,62,74),
                     Matematica=c(99,100,86,92,91,87),
                     Quimica=c(56,72,49,68,59,77))
escola
escola$Matematica

# CALCULANDO A MÉDIA POR ALUNO
escola$Media= NA
escola

escola$Media = apply(escola[ ,c(2,3,4)],1,mean) #c(2,3,4) => colunas selecionadas
escola
escola$Media = round(escola$Media)
escola

# tapply()
?gl # níveis de fator
tabelaBasquete <- data.frame(equipe = gl(5,5,labels=paste("Equipe",LETTERS[1:5])), # defino os níveis e os labels
                             jogador = sample(letters,25), # pego uma amostra de 25 letras aleatórias do conjunto de dados
                             num_cestas = floor(runif(25,min=0,max=50))) # gero valores aleatórios do número de cestas.
View(tabelaBasquete)
summary(tabelaBasquete)

# como calcular o total de cestas por equipe?

# tapply() vs sqldf
install.packages('sqldf')
library('sqldf')

sqldf("SELECT equipe,SUM(num_cestas) FROM tabelaBasquete GROUP BY equipe")

?tapply
# a primeira coluna é a que eu quero realizar a operação. Depois indico como quero agrupar.
tapply(tabelaBasquete$num_cestas,tabelaBasquete$equipe,sum)
tapply(tabelaBasquete$num_cestas,tabelaBasquete$equipe,mean)


# by
View(iris)

dat <- data.frame(species = c(rep(c(1,2,3),each=5)), 
                  petal.length = c(rnorm(5,4.5,1),
                                   rnorm(5,4.5,1),
                                   rnorm(5,5.5,1)),
                  petal.width = c(rnorm(5,2.5,1),
                                  rnorm(5,2.5,1),
                                  rnorm(5,4,1)))

dat$species <- factor(dat$species)
View(dat)

by(dat,
   dat$species, # a coluna que irei utilizar para fazer o agrupamento
   function(x){
     #calcular o comprimento médio da pétala para cada espécie
     mean.pl <- mean(x$petal.length)
     }
   )


# lapply()
?lapply

lista1 <- list(a = (1:10),b = (45:77))
lista1
lapply(lista1,sum)
sapply(lista1,sum)

# vapply()
?vapply
?fivenum
vapply(lista1,
       fivenum,
       c(Min. = 0,"1stQu." = 0,Median = 0,"3rd Qu." = 0,Max = 0))

# replicate
?replicate # aplica uma função a uma lista ou vetor.
replicate(7,runif(10))

# mapply()
?mapply # aplica uma função a múltiplos argumentos de uma lista ou vetor.
mapply(rep,1:4,4:1)

# rapply()
?rapply # recursivamente (chamada a si própria) aplica uma função a uma lista.

lista2 <- list(a = c(1:5), b = c(6:10))
lista2

rapply(lista2, sum)
rapply(lista2,sum,how = "list") # how -> defino como será impresso na tela.






