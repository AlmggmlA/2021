# BIG DATA NA PRÁTICA 01 - Analisando a temperatura média nas cidades brasileiras.

setwd('C:/Users/Prígio/Desktop/FCD/BigDataRAzure/Cap03')
getwd()

install.packages('readr')
install.packages('data.table')
install.packages('dplyr')
install.packages('ggplot2')
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)

# CARREGANDO OS DADOS - usando um timer para comparar o tempo de carregamento

# USANDO read.csv2() ---> levou 417.34s (usuário: 401.61|sistema:3.14)
system.time(df_teste1 <- read.csv2("TemperaturasGlobais/TemperaturasGlobais.csv"))

# USANDO read.table() ---> levou 344.55s (usuário: 340.05|sistema:1.41)
system.time(df_teste2 <- read.table("TemperaturasGlobais/TemperaturasGlobais.csv"))

# USANDO fread() ---> levou 1.94s (usuário: 3,22|sistema:0.36)
system.time(df_teste3 <- fread("TemperaturasGlobais/TemperaturasGlobais.csv"))
?fread

# CRIANDO SUBSETS DOS DADOS CARREGADOS
cidadesBrasil <- subset(df_teste3, Country == 'Brazil')
cidadesBrasil <- na.omit(cidadesBrasil) #na -> not available

head(cidadesBrasil)
nrow(df_teste3)
nrow(cidadesBrasil)
dim(cidadesBrasil)

# PREPARAÇÃO E ORGANIZAÇÃO

# CONVERTENDO AS DATAS
cidadesBrasil$dt <- as.POSIXct(cidadesBrasil$dt,format = '%Y-%m-%d')
cidadesBrasil$Month <- month(cidadesBrasil$dt)
cidadesBrasil$Year <- year(cidadesBrasil$dt)

# CARREGANDO OS SUBSETS

#PALMAS
palmas <- subset(cidadesBrasil, City == 'Palmas')
palmas <- subset(palmas, Year %in% c(1796,1846,1896,1946,1996,2012))

#CURITIBA
curitiba <- subset(cidadesBrasil, City == 'Curitiba')
curitiba <- subset(curitiba, Year %in% c(1796,1846,1896,1946,1996,2012))

#PERNAMBUCO
recife <- subset(cidadesBrasil, City == 'Recife')
recife <- subset(recife, Year %in% c(1796,1846,1896,1946,1996,2012))

# CONSTRUINDO OS PLOTS
plt_palmas <- ggplot(palmas,aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
              geom_smooth(se=FALSE, fill=NA, size=2) +
              theme_light(base_size = 20) +
              xlab("Mês") +
              ylab("Temperatura Média") +
              scale_color_discrete("") +
              ggtitle("Temperatura Média ao longo dos anos em Palmas") +
              theme(plot.title = element_text(size=18))

plt_curitiba <- ggplot(curitiba,aes(x=(Month),y=AverageTemperature,color=as.factor(Year)))+
                geom_smooth(se=FALSE,fill=NA,size=2)+
                theme_light(base_size = 20)+
                xlab("Mês")+
                ylab("Temperatura Média")+
                scale_color_discrete("")+
                ggtitle("Temperatura Média ao longo dos anos em Curitiba")+
                theme(plot.title = element_text(size = 18))

plt_recife <- ggplot(recife, aes(x=(Month), y = AverageTemperature, color=as.factor(Year)))+
              geom_smooth(se=FALSE, fill=NA, size=2)+
              theme_light(base_size = 20)+
              xlab("Mês")+
              ylab("Temperatura Média")+
              scale_color_discrete("")+
              ggtitle("Temperatura Média ao longo dos anos em Recife")+
              theme(plot.title = element_text(size = 18))

# PLOTANDO
plt_palmas
plt_curitiba
plt_recife







