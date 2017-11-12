#R Worksheet 1
#Problem section 1
a <- c(5)
b <- c(7)
a+b
b/a
7/5
a<5
a==5
a>5
b<5
b==5
b>5

#2
?rep
#2a
C <- c(2,6,10,14,18)
rep(C, each=3)
#2b
rep(C, time=4)
#2c
rep(C, each=3, length=17)


#3a
X <- sum(rep(C, each=3))
X
Y <- sum(rep(C, time=4))
Y
Z <- sum(rep(C, each=3, length=17))
Z
#3b
sqrt(X)
sqrt(Y)
sqrt(Z)

#4
vectorX <- c(seq(10,20, .1))
vectorY <- c(log(vectorX))
plot(vectorX,vectorY)
vectorY[30]
vectorY[50:60]

#5
percentages <-c(72,81,52,63)
names(percentages) <-c("County A", "County B", "County C", "County D")
barplot(percentages)
mean(percentages)
sd(percentages)
