install.packages('reshape')

library(reshape)

data(airquality)

head(airquality)

df <- airquality

df

aqm = melt(df, id = c('Month', 'Day'), na.rm = T)

head(df)

head(aqm)

cast(aqm, Day ~ Month ~ variable)

library(sqldf)
sqldf("
SELECT
*

FROM aqm

limit 3"
)




data(airquality)

df = airquality


rm(airquality)

head(df)

library(plyr)

ddply(df, 'Ozone', function(x){
    m.value <- mean(x$Temp, na.rm = TRUE)
    sd.value <- sd(x$Temp, na.rm = TRUE)
    cv <- round(sd.value / m.value, 4)
    data.frame(cv.value = cv)
})

install.packages('data.table')

library(data.table)
DF <- data.frame(x = runif(2.6e+07), y = rep(LETTERS, each = 10000))
df <- data.frame(x = runif(2.6e+07), y = rep(letters, each = 10000))

system.time(x <- DF[DF$y == 'C',])


DT = as.data.table(DF)

setkey(DT, y)
system.time(x <- DT[J('C'), ])

summary(df)

install.packages('ggplot2')

require(ggplot2)
data(diamonds)
dia.data <- diamonds
dia.data

# 263부터 계속