# FUNÇÕES

# HELP
?sample
args(sample) # amostra
args(mean)
args(sd) #sd -> standard desviation (desvio padrão)

# FUNÇÕES BUILT-IN
abs(-43) # valor absoluto
sum(c(1:5))
mean(c(1:5)) # média
round(c(1.1:5.8))
rev(c(1:5)) # reverso
seq(1:5)
sort(rev(c(1:5)))
append(c(1:5),6) # adiciona elemento ao final de uma lista

vec1 <- c(1.5,2.5,8.4,3.7,6.3)
vec2 <- rev(vec1)
vec2

# FUNÇÕES DENTRO DE FUNÇÕES
plot(rnorm(10))
mean(c(abs(vec1),abs(vec2)))

# CRIANDO FUNÇÕES
minhaFuncao <- function(x){x+x}
minhaFuncao(10)
class(minhaFuncao)

minhaFuncao2 <- function(a,b){
  valor = a^b
  print(valor)
}

minhaFuncao2(3,2)

jogandoDados <- function(){
  num <- sample(1:6,size = 1) # variável local
  num
}

jogandoDados()

# ESCOPO
print(num)
num <- c(1:6)
num # variável global

# FUNÇÕES SEM NÚMERO DEFINIDO DE ARGUMENTOS
vec1 <- (10:13)
vec2 <- c("a","b","c","d")
vec3 <- c(6.5,9.2,11.9,5.1)

# (...) -> os três pontos indica que não tem número fixo de parâmetros para passar.
minhaFuncao3 <- function(...){
  df = data.frame(cbind(...))
  print(df)
}

minhaFuncao3(vec1)
minhaFuncao3(vec2,vec3)
minhaFuncao3(vec1,vec2,vec3)

# FUNÇÕES BUILT-IN (não reivente a roda!)
# Comparação de eficiência entre função vetorizada e função "vetorizada no R"

x <- 1:1000000

# Função que calcula a raiz quadrada de cada elemento de um vetor de números
minhaRaiz <- function(numeros){
  resp <- numeric(length(numeros))
  for(i in seq_along(numeros)){
    resp[i] <- sqrt(numeros[i])
  }
  return(resp)
}

system.time(x2a <- minhaRaiz(x))
system.time(x2b <- sqrt(x))

# nossa máquina pode apresentar resultado diferente por conta da precisão de cálculo do processo
identical(x2a,x2b)









