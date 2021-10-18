# EXPRESSÕES REGULARES



# FUNÇÕES QUE PODEMOS UTILIZAR COM EXPRESSÕES REGULARES:
#
# grep(pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE, fixed = FALSE, useBytes = FALSE, invert = FALSE)
# grepl(pattern, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# sub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gsub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# regexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gregexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)


str <- c("Expressões", "regulares", "em linguagem R", 
         "permitem a busca de padrões", "e exploração de textos",
         "podemos buscar padrões em dígitos",
         "como por exemplo",
         "10992451280")
length(str)
str


# GREP()
?grep
# busca pelo padrão "ex" no vetor.
grep("ex", str, value = F) # qdo FALSE ele apresenta a posição.
grep("ex", str, value = T) # qdo TRUE ele apresenta o texto.

# \\d busca dígitos dentro do texto.
grep("\\d", str,value = F) 
grep("\\d", str,value = T)


# GREPL()
?grepl
# retorna TRUE ou FALSE
grepl("\\d+",str) # \\d+ busca dígito e qualquer coisa depois.
grepl("\\D",str) # \\D busca tudo o que não é dígito.


# GSUB
?gsub
# encontra o padrão e o substitui pelo que eu determinar.
gsub("em","***",str)
gsub("ex", "Ex", str, ignore.case = T)


# SUB()
sub("em","EM",str)


# REGEXPR()
frase <- "Isso é uma string."
regexpr(pattern = "u",frase)


# GREGEXPR()
gregexpr(pattern = "u",frase)


str2 <- c("2678 é maior que 45 - @???!§$","Vamos escrever 14 scripts R")
str2

# GSUB()
gsub("\\d","",str2) # onde tiver número eu irei remover
gsub("\\D","",str2) # onde tiver letra eu irei remover
gsub("\\s","",str2) # onde tiver espaço eu irei remover
gsub("[iot]","Q",str2) # onde tiver "i","o","t" eu irei substituir por Q
gsub("[[:punct:]]","",str2) # onde tiver pontuação eu irei remover









