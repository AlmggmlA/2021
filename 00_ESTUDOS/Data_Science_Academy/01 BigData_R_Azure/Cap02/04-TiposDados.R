# TIPOS BÁSICOS DE DADOS EM R

# NUMERIC - todos os números criados em R são do modo numeric
#São armazenados como números decimais(double).
num1 <- 7
num1
class(num1)
mode(num1)
typeof(num1)

num2 = 16.68
num2
mode(num2)
typeof(num2)

# INTEGER
#Convertemos tipos numéricos para integer.
is.integer(num2)
y = as.integer(num2) #converte a variável do tipo double em inteiro.
class(y)
mode(y)
typeof(y)

as.integer('3.89')
as.integer("Joao")
as.integer('Joao')
as.integer(TRUE)
as.integer(FALSE)
as.integer('TRUE')

# CHARACTER
char1 = 'A'
char1
mode(char1)
typeof(char1)

char2 = "cientista"
char2
mode(char2)
typeof(char2)

char3 = c("Data","Science","Academy")
char3
mode(char3)
typeof(char3)

# COMPLEX
compl = 2.5 + 4i
compl
mode(compl)
typeof(compl)

sqrt(-1)
sqrt(-1+0i)
sqrt(as.complex(-1))

# LOGIC
x=1;y=2
z = x > y
z
class(z)

u = TRUE; v = FALSE
class(u)
u & v
u | v
!u

# OPERAÇÕES COM 0
5/0
0/5

# ERRO
'Joao'/5