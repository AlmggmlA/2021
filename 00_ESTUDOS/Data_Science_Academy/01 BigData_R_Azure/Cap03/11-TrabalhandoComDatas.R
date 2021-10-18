# Datas e Hora

# HORA E DATA DO SISTEMA
hoje <- Sys.Date()
hoje
class(hoje)
Sys.time()
Sys.timezone()


# DATA - representada por DATE
# Armazenados como número de DIAS desde 1 de Janeiro de 1970

# TIME - representado por POSIXct
# Armazenados como número de SEGUNDOS desde 1 de Janeiro de 1970

# FORMATANDO DATAS
#
# %d: dia do mês em 2 dígitos (13)
# %m: mês em 2 digitos (01)
# %y: ano em 2 dígitos (82)
# %Y: ano em 4 dígitos (1982)
# %A: dia da semana (Friday)
# %a: dia da semana abreviado (Fri)
# %B: mês (July)
# %b: mês abreviado (Jul)


# FORMATANDO HORA
#
# %H: hora (00-23)
# %M: minuto
# %S: segundo
# %T: formado reduzido para %H:%M:%S
?strptime


# FORMATANDO A SAÍDA - as.Date()
as.Date("2021-06-11")
as.Date("Jun-11-21", format = "%b-%d-%y")
as.Date("28 Junho,2018", format = "%d %B,%Y")

# FUNÇÃO format()
Sys.Date()
format(Sys.Date(), format = "%d %B,%Y")
format(Sys.Date(),format = "Hoje é %A!")

# CONVERTENDO DATAS - as.POSIxct
date1 <- "Jun 13, '96 hours:23 minutes:01 seconds:45"
date1_convert <- as.POSIXct(date1,format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
date1_convert

# OPERAÇÕES COM DATAS
dataHoje <- as.Date("2021-06-11", format = "%Y-%m-%d")
dataHoje
dataHoje+1

minhaHora <- as.POSIXct("2020-06-21 21:23:50")
minhaHora
minhaHora+1

dataHoje - as.Date(minhaHora)
dataHoje - minhaHora


# CONVERTENDO DATA EM FORMATO ESPECÍFICO
#
# O vetor de números pode representar o número de dias, horas ou minutos (de acordo com o que você quer converter)
# A Linguagem R considera o ponto de início a data de 01 de Janeiro de 1970 e contabiliza o total
# de horas, minutos ou segundos, aquilo que o vetor numérico representar
dts = c(1127056501,1104295502,1129233601,1113547501,1119826801,1132519502,1125298801,1113289201)
mydates = dts

# POSIXct, armazena os segundos desde uma data específica, 
# convertendo os valores numéricos (que podem representar horas, minutos ou segundos) desde 01 de Janeiro de 1970
#
# POSIXt é a classe principal e POSIXct e POSIXlt são subclasses. 
# Poderíamos usar aqui apenas POSIXct, que é a subclasse (mas não podemos usar apenas a classe principal)
class(mydates) = c('POSIXt','POSIXct')
mydates
class(mydates)

mydates = structure(dts, class = c('POSIXt','POSIXct'))
mydates

# FUNÇÃO ISODate
b1 = ISOdate(2011,3,23)
b1
b2 = ISOdate(2012,9,19)
b2
b2 - b1

# diferença em SEMANAS
difftime(b2, b1, units = 'weeks')


# PACOTE lubridate
?lubridate
install.packages("lubridate")
require(lubridate)

ymd("20180604") 
mdy("06-04-2018") 
dmy("04/06/2018")

chegada <- ymd_hms("2016-06-04 12:00:00", tz = "Pacific/Auckland")
partida <- ymd_hms("2011-08-10 14:00:00", tz = "Pacific/Auckland")

chegada
partida

second(chegada)
second(chegada) <- 23
chegada
wday(chegada)
wday(chegada, label = TRUE)
class(chegada)

# Cria um objeto que especifica a data de início e data de fim
interval(chegada, partida)


tm1.lub <- ymd_hms("2020-05-24 23:55:26")
tm1.lub

tm2.lub <- mdy_hm("05/25/20 08:32")
tm2.lub

year(tm1.lub)
week(tm1.lub)

tm1.dechr <- hour(tm1.lub) + minute(tm1.lub)/60 + second(tm1.lub)/3600
tm1.dechr
force_tz(tm1.lub, "Pacific/Auckland")


# GERANDO UM DATAFRAME DE DATAS
sono <- data.frame(bed.time = ymd_hms("2013-09-01 23:05:24", "2013-09-02 22:51:09", 
                                      "2013-09-04 00:09:16", "2013-09-04 23:43:31", "2013-09-06 00:17:41", "2013-09-06 22:42:27", 
                                      "2013-09-08 00:22:27"), rise.time = ymd_hms("2013-09-02 08:03:29", "2013-09-03 07:34:21", 
                                                                                  "2013-09-04 07:45:06", "2013-09-05 07:07:17", "2013-09-06 08:17:13", "2013-09-07 06:52:11", 
                                                                                  "2013-09-08 07:15:19"), sleep.time = dhours(c(6.74, 7.92, 7.01, 6.23, 6.34, 7.42, 6.45)))
sono
sono$eficiencia <- round(sono$sleep.time/(sono$rise.time - sono$bed.time) * 100, 1)
sono


# GERANDO UM PLOT A PARTIR DE DATAS
par(mar = c(5, 4, 4, 4))
plot(round_date(sono$rise.time, "day"), sono$eficiencia, type = "o", col = "blue", xlab = "Manhã", ylab = NA)
par(new = TRUE)
plot(round_date(sono$rise.time, "day"), sono$sleep.time/3600, type = "o", col = "red", axes = FALSE, ylab = NA, xlab = NA)
axis(side = 4)
mtext(side = 4, line = 2.5, col = "red", "Duração do Sono")
mtext(side = 2, line = 2.5, col = "blue", "Eficiência do Sono")

