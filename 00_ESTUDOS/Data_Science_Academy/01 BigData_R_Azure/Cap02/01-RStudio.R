#DIRETÓRIO DE TRABALHO, evitar usar diretórios com espaço no nome.
setwd("C:/Users/Prígio/Desktop/FCD/BigDataRAzure/Cap02")
getwd() #exibe o diretório de trabalho atual.

#NOME DOS CONTRIBUTORS
contributors()

#LICENÇA
license()

#INFORMAÇÕES SOBRE A SESSÃO
sessionInfo()

#IMPIRMIR TELA
print('Iniciando minha carreira de Cientista de Dados!')

#CRIAR GRÁFICOS
plot(1:25)

# 1º INSTALAR PACOTES
install.packages('randomForest')
install.packages('ggplot2')
install.packages("dplyr")

# DEVTOOL é um pacote de desenvolvimento que permite instalar outros pacotes
# sua instalação é obrigatória.
install.packages("devtools") 


# 2º CARREGAR O PACOTE NA MEMÓRIA DO R
library(ggplot2)

# DESANEXAR/DESCARREGAR O PACOTE
# Como o pacote consome memória, então, se você não vai mais usar, o ideal
# é desanexar ele.Ele continuará instalado, mas não poderá ser usado nessa
# sessão.
detach(package:ggplot2) 

#SE SOUBER O NOME DA FUNÇÃO
help(mean)
?mean

#PARA BUSCAR MAIS OPÇÕES SOBRE UMA FUNÇÃO, USE O PACOTE SOS
install.packages("sos")
install.packages('utils')
library(sos)
findFn("fread")

#SE NÃO SOUBER O NOME DA FUNÇÃO
help.search('randomForest')
help.search('matplot')
??matplot
RSiteSearch('matplot')
example('matplot')

#SAIR
q()
