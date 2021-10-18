# ESTRUTURAS DE CONTROLE

# IF-ELSE
x = 25
if(x<30){"Esse número é menor que 30"}

# As chaves não são obrigatórias, mas são altamente recomendáveis.
if(x<30)"Esse número é menor que 30"

# ELSE
if (x<7){"Esse número é menor que 7"} else{"Este número não é menor que 7"}

# Comandos podem ser aninhados
x=7
if (x<7){
  "Esse número é menor que 7"
} else if(x==7){
    "Este é o número 7"
} else{
    "Este número não é menor que 7"}

# IFELSE
x = 5
ifelse(x<6,"Correto!",NA)
x = 9
ifelse(x<6,"Correto!",NA)

# EXPRESSÕES IFELSE ANINHADAS
x = c(7,5,4)
ifelse(x<5,"Menor que 5",
       ifelse(x==5,"Igual a 5","Maior que 5"))

# ESTRUTURAS IF DENTRO DE FUNÇÕES
func1 <- function(x,y){
  ifelse(y<7,x+y,"Não encontrado")
}

func1(4,2)
func1(40,7)

# REP
# rnorm -> cria uma distribuição normal
rep(rnorm(10),5) # faz a repetição

# REPEAT
x = 1
repeat{
  x = x+3
  if(x>99)
    break
  print(x)}

# LOOP FOR
for(i in 1:20){print(i)}
for(q in rnorm(10)){print(q)}

# IGNORA ALGUNS ELEMENTOS DENTRO DO LOOP
for(i in 1:22){
  if(i==13 | i==15)
    next # pula o valor e não imprime.
  print(i)}

# INTERROMPE O LOOP
for(i in 1:22){
  if(i==13)
    break
  print(i)}

# LOOP WHILE
x = 1
while(x<5){
  x = x+1
  print(x)}

# O loop while não será executado
y = 6
while (y<5) {
  y = y+10
  print(y)
}



