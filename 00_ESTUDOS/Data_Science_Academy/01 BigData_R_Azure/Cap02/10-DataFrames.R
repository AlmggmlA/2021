# DATAFRAMES E OPERAÇÕES COM DATAFRAMES

# CRIANDO UM DATAFRAME VAZIO
df <- data.frame()
class(df)
df

# CRIANDO VETORES VAZIOS
nomes <- character()
idades <- numeric()
itens <- numeric()
codigos <- integer()

df <- data.frame(c(nomes,idades,itens,codigos))
df

# CRIANDO VETORES
pais = c("Portugal","Inglaterra","Irlanda","Egito","Brasil")
nome = c("Bruno","Tiago","Amanda","Bianca","Marta")
altura = c(1.88,1.76,1.53,1.69,1.68)
codigo = c(5001,2183,4702,7965,8890)

# CRIANDO UM DATAFRAME DE DIVERSOS VETORES
pesquisa = data.frame(pais,nome,altura,codigo) # poderia passar a função C também
pesquisa

# ADICIONANDO UM NOVO VETOR A UM DATAFRAME EXISTENTE
olhos = c("verde","azul","azul","castanho","castanho")
pesq = cbind(pesquisa,olhos) # cbind -> faz uma ligação entre 2 objetos pela coluna.
pesq

# INFORMAÇÕES SOBRE O DATAFRAME
str(pesq)
dim(pesq) # qtd de dimensões
length(pesq)

# OBTENDO UM VETOR DE UM DATAFRAME
pesq$pais
pesq$nome
pesq$altura
pesq$olhos

# EXTRAINDO UM ÚNICO VALOR
pesq[1,1]
pesq[3,2]

# NÚMERO DE LINHAS E COLUNAS
nrow(pesq)
ncol(pesq)

# PRIMEIROS ELEMENTOS DO DATAFRAME
head(pesq) # retorna as 5 primeiras linhas
head(mtcars) # é um dataset que vem junto com o R

# ÚLTIMOS ELEMENTOS DO DATAFRAME
tail(pesq) # retorna as 5 últimas linhas
tail(mtcars)

# DATA FRAMES BUILT-IN DO R
?mtcars
mtcars
View(mtcars)

# FILTRO PARA UM SUBSET DE DADOS QUE ATENDEM A UM CRITÉRIO
pesq[altura<1.60,] # retorna tudo da regra informada no dataframe
pesq[altura<1.60,c('codigo','olhos')]
pesq

# DATAFRAME NOMEADOS
names(pesq) <- c("Pais","Nome","Altura","Código","Olhos")
pesq

colnames(pesq) <- c("Var 01", "Var 02","Var 03","Var 04","Var 05")
rownames(pesq) <- c("Obs 01","Obs 02","Obs 03","Obs 04","Obs 05")
pesq

# CARREGAR UM ARQUIVO CSV
?read.csv
pacientes <- data.frame(read.csv(file = "pacientes.csv", header = TRUE, sep = ","))

# VISUALIZANDO O DATASET
View(pacientes)
head(pacientes)
summary(pacientes) # mostra resumos estatísticos.

# VISUALIZANDO AS VARIÁVEIS
pacientes$Diabete
pacientes$status
pacientes$Status

# HISTROGRAMA
hist(pacientes$Idade) # gráfico de distribuição de frequências das idades

# COMBINANDO DATAFRAMES
dataset_final <- merge(pesq, pacientes)
dataset_final