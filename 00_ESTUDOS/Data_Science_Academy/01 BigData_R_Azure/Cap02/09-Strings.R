# OPERAÇÕES COM STRINGS

setwd("C:/Users/Prígio/Desktop/FCD/BigDataRAzure/Cap02")

# STRING
texto <- "Isso é uma string!"
texto

x = as.character(3.15)
x
class(x)

# CONCATENANDO STRINGS
nome = "Aprígio"; sobrenome = "Gusmão"
paste(nome,sobrenome)
cat(nome,sobrenome)

# FORMATANDO A SAÍDA
# %s -> string | %d -> decimal
sprintf("A %s é nota %d", "Data Science Academy",10)

# EXTRAINDO PARTE DA STRING
texto <- "Isso é uma string!"
substr(texto,start=12,stop = 17)
?substr

# CONTANDO O NÚMERO DE CARACTERES
nchar(texto)

# ALTERANDO A CAPITALIZAÇÃO
tolower("Histograma e Elementos de Dados")
toupper("Histograma e Elementos de Dados")

# USANGO STRINGR
library(stringr) #pacote auxiliar para estender as funcionalidades R para o tratamento de string.

# DIVIDINDO UMA STRING EM CARACTERES
strsplit("Histograma e Elementos de Dados",NULL)
?strsplit

# DIVIDINDO UMA STRING EM CARACTERES, APÓS O CARACTER ESPAÇO
strsplit("Histograma e Elementos de Dados", " ")

# TRABALHANDO COM STRINGS
string1 <- c("Primeira parte da string e primeira parte do vetor",
             "Aqui a string continua, mas será transformada no segundo vetor")
string1

string2 <- c("Testando outras strings - @???!§$",
             "Análise de Dados em R")
string2

# ADICIONANDO 2 strings
str_c(c(string1,string2),sep="")

# PODEMOS CONTAR QUANTAS VEZES UM CARACTER APARECE NO TEXTO
str_count(string2,"s")

# LOCALIZA A PRIMEIRA E ÚLTIMA POSIÇÃO EM QUE O CARACTER APARECE NA STRING
str_locate_all(string2,"s")

# SUBSTITUI A PRIMEIRA OCORRÊNCIA DE UM CARACTER
str_replace(string2,"\\s","")

# SUBSTITUI TODAS AS OCORRÊNCIAS DE UM CARACTER
str_replace_all(string2,"\\s","")

# DETECTANDO PADRÕES NAS STRINGS
string1 <- "17 jan 2001"
string2 <- "1 jan 2001"
padrao <- "jan 20"
grepl(pattern = padrao, x = string1)
padrao <- "jan20"
grepl(pattern = padrao, x = string1)













