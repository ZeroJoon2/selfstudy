a <- seq(1,10, 2)
a
a <- c(1, 10)
a

a <- 1:10
a

c(2,4,6,8) + c(1,3,5,7,9)

as.numeric(a)

a <- c(1:10, 'B')
a

as.numeric(a)

as.numeric(a == 'B')


as.vector(a)

b = matrix(c(1:10), nrow = 5)
b

as.vector(b)

as.numeric(b == 1)

x <- 10

mean(x, na.rm=T)


'+'(2,3)

y = c(1,2,3,NA)

3 * y

s <- c('Monday', 'TuesDay', 'Wednesday')
substr(s, 1,1)


x <- c(1:5)
y <- seq(10, 50, 10)
xy <- rbind(x, y)
xy

xy[,2]

matrix(c(1,2,3,4,5,6), ncol = 2, byrow = TRUE)

as.Date('08/23/2019', '%m/%d/%Y')

A <- cbind(c(1,2,3), c(4,5,6), c(7,8,9))

colnames(A) <- c('A', 'B', 'C')
rownames(A) <- c('r1', 'r2', 'r3')

A
A[,"A"]
A[-c(2,3),]
A[, 1]
A[, -(2:3)]
A

install.packages('XML')
library(XML)

f <- function(x, a) return((x-a)^2)
f(1:2, 3)

a <- C(1,2,3,NA)
mean(a)

x <- 1:100
sum(x>50)
x
(50 + 100)/ 50

a <- matrix(c(1:100), ncol = 5, byrow = TRUE)
a
a>50

100 - 51 + 1

sqldf()


df <- data.frame(
  'col1' = c(1:100)
  , 'col2' = rep(c('A', 'B', 'C', 'D'), length.out = 100)
  , 'col3' = rep(c(500, 1000, 10), length.out = 100)
)
df


install.packages('sqldf')

library(sqldf)

sqldf('select avg(col1) from df')
subset(df, subset = (col3 == 500))


rm(list = ls())
data(airquality)
df = airquality

install.packages('reshape')
library(reshape)
melt(df, id = c('Month', 'Day'), na.rm = T)

df

# jupyter Notebook을 위해 패키지 설치
install.packages('IRkernel')
IRkernel::installspec(user = FALSE)

data()
