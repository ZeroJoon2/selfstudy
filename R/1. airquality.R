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

require(ggplot2)
data(diamonds)

dia.data <- diamonds
dia.data

head(dia.data)

summary(dia.data)
greedy.wilks()
iris[1,c(1,2)]

install.packages('plineplot')
library(plineplot)
plineplot(Species ~., data = iris[, c(1,3,5)], method = 'lda', x = iris[, 4], xlab = 'Petal.Width')

tmp_x <- c(1,2,3, NA)
tmp_x

mean(tmp_x)

mean(tmp_x, na.rm = T)

complete.cases(tmp_x)

is.na(tmp_x)

install.packages('DMwR2')
library(DMwR2)

tmp_x <- data.frame(
  A = c(1, 2, NA, 4, 5),
  B = c(10, 20, 30, NA, 50),
  C = c(100, 200, NA, 400, 500)
)
tmp_x
C = c(100, 200, NA, 400, 500)
mean(C, na.rm = T)
centralImputation(tmp_x)

geo_mean(C)

library(MASS)
head(Cars93)

attach(Cars93)
# 즉, Cars93$EngineSize 대신 단순히 EngineSize라고 입력할 수 있습니다.

lm(Price~EngineSize+RPM+Weight, data = Cars93)
#  선형 회귀 분석(linear regression)을 수행하는 R의 기본 함수

summary(lm(Price~EngineSize+RPM+Weight, data = Cars93))


library(boot)
data(nodal)

a <- c(2,4,6,7)
data <- nodal[, a]

glmModel <- glm(r~., family = 'binomial', data = data)
glmModel

summary(glmModel)

# 321페이지 부터