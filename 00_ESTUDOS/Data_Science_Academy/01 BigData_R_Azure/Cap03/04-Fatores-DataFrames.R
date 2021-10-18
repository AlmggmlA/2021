# FATORES E DATAFRAMES - compreendendo a ORDEM DOS FATORES

# NÍVEIS DOS FATORES
# Internamente, o R armazena valores inteiros e faz um mapeamento para as strings
# (em ordem alfabética) e agrupa as estatísticas por níveis.

# CRIANDO VETORES
vec1 <- c(1001,1002,1003,1004,1005)
vec2 <- c(0,1,1,0,2)
vec3 <- c('verde','laranja','azul','laranja','verde')

# UNINDO OS VETORES NUM DATAFRAME
df <- data.frame(vec1,vec2,vec3)
df

# Verificando que o R categorizou a última coluna como fator.
str(df)

# verificando os níveis do fator. Perceba que os níveis estão categorizados
# em ordem alfabética.
levels(df$vec3)

# CRIANDO UMA OUTRA COLUNA E ATRIBUINDO LABELS
df$cat1 <- factor(df$vec3,labels = c("cor2","cor1","cor3"))
df

# Internamente, os fatores são registrados como inteiros, mas a ordenação
# segue a ordem alfabética das strings.
str(df)

# Veja como foi feita a atribuição:
# azul = cor2
# laranja = cor1
# verde = cor3
# Ou seja, os vetores com os labels, seguiram a ordem alfabética dos níveis de vec3
# que foram classificados pelo R.

# CRIANDO UMA OUTRA COLUNA E ATRIBUINDO LABELS
# Ao aplicarmos a função factor() a coluna vec2, internamente o R classificou em ordem
# alfabética e quando atribuímos os labels, foi feita a associação.
df$cat2 <- factor(df$vec2,labels = c("Divorciado","Casado","Solteiro"))
df
str(df)
levels(df$cat2)
