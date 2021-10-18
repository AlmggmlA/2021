# FUNÇÕES ESPECIAIS

# UNLIST()
# produz um vetor com os elementos da lista
?unlist

lst1 <- list(6,"b",15)
lst1
class(lst1)

unlist(lst1)
vec1 <- unlist(lst1)
class(vec1)
vec1

lst2 <- list(v1 = 6, v2 = list(381,2190), v3 = c(30,217))
lst2

unlist(lst2)

mean(unlist(lst2))
round(mean(unlist(lst2)))

# DO.CALL()
# Executa uma função num objeto.

# ***ATENÇÃO***
# As funções da família apply aplicam uma função a cada elemento de um objeto 
# (substitui um loop).
# A função do.call aplica uma função ao objeto inteiro e não a cada elemento individualmente.
?do.call

data <- list()
N <- 100

for(n in 1:N){
  data[[n]] = data.frame(index = n, char = sample(letters,1),z = rnorm(1))
}

head(data)

View(do.call(rbind,data))
View(do.call(cbind,data))
class(do.call(rbind,data))

# lappy() x do.call()
y <- list(1:3,4:6,7:9)
y

lapply(y,sum)
do.call(sum,y)

# O resultado da função lapply() pode ser obtido de outras formas
# Pacote plyr

install.packages("plyr")
library(plyr)

y <- list(1:3,4:6,7:9)
y

ldply(y,sum)

# STRSPLIT()
# Divide uma string ou vetor de caracteres

texto <- "Data Science Academy"
strsplit(texto," ")

texto <- "Data Science Academy"
strsplit(texto,"")

dates <- c("1998-05-23","2008-12-30","2009-11-29")
temp <- strsplit(dates,"-")
temp
class(temp)

# Transforma a lista em matriz, fazendo antes um UNLIST()
matrix(unlist(temp), ncol=3,byrow=TRUE)

Names <- c("Brin, Sergey","Page, Larry", 
           "Dorsey, Jack", "Glass, Noah",
           "Williams, Evan","Stone, Biz")

temp <- strsplit(Names, ", ")
temp

##Cofounded <- rep(c("Google","Twitter"),c(2,4))


frase <- "Muitas vezes temos que repetir algo diversas vezes e essas diversas vezes parecem algo estranho"
palavras <- strsplit(frase," ")[[1]] #[[]] -> acessa um elemento da lista, indica a indexação dentro de uma lista.
palavras
unique(tolower(palavras))

# STRSPLIT() COM DATAFRAMES
antes = data.frame(attr = c(1,30,4,6), tipo = c('pao_e_agua','pao_e_agua_2'))
antes
strsplit(as.character(antes$tipo),'_e_') # gera como saída uma LISTA

library(stringr)
str_split_fixed(antes$tipo, "_e_",2) # gera como saída uma MATRIZ

# USANDO DO.CALL()
antes = data.frame(attr = c(1,30,4,6), tipo = c('pao_e_agua','pao_e_agua_2'))
antes
depois <- strsplit(as.character(antes$tipo),'_e_')
depois
do.call(rbind,depois)

# USANDO dplyr e tidyr
install.packages("dplyr")
install.packages("tidyr")
library(dplyr)
library(tidyr)

antes <- data.frame(attr = c(1,30,4,6),
                    tipo = c('pao_e_agua','pao_e_agua_2'))

# %>% caracter de concatenação
antes %>% separate(tipo, c("pao","agua"),"_e_")
