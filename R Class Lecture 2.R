#matricies, simulation, lots to go through today

#review, arrays and dereferencing
a <- 2:8
a
a[2]
a[c(2,4)]
b<-c(3,4)
b
a[b]

#negavtive indicicies, means take it out
a[-5]
b
a[-b]
a
a[-c(3,4)]
#you can't mix neg and positive incidies



#A matrix is a 2d array
#matrix(what's inside,number rows,number columns)
matrix(0,9,4)
matrix(1,3,3)

#use a mvector to create a matrix
a <- 1:15
print(a)
matrix(a,3,5)
matrix(a,3,5,byrow=TRUE)
matrix(a,3,4)
#gets angry
matrix(a,6,5)
matrix(a,ncol=5)
matrix(a, ncol=4)
#won't work

#reshape a vector into a matrix
B <-1:8
# the dim function sets dimesions for a matrix
dim(B) <-c(2,4) 
#2 rows, 4 columns
print(B)

#pull stuff out of the matrix
B[2,3]
B[1,2]

#update items in a matrix
B[1,4] <- 0
print(B)

#show just the second row
B[2,]
#show a column
B[,3]
#or get multiples
B[,2:4]


#matrix operations
#default is to have byrow=False, so it reads like a manga instead of a book

A <- matrix(c(5,8,3,4,2,1),nrow=3)
A
B <- matrix(c(5,8,3,4,2,1),nrow=2)
B
A + B
dim(A)
A

#transpose
B
t(B)
A + t(B)

#matrix multiplication %*%, to tell R we're multiplying matricies
E <- A%*%B
E
G <- B%*%A
G

#diagonal diag()
diag(E)
#diag() can be used to construct an identity matrix
diag(3)

#Put in the diagonal of your choice
ID <-diag(3)
diag(ID)<- c(4,8,10)
ID

#cbind and rbind, columnbind and rowbind
v1 <- c(7,4,8,1)
v2 <- c(8,4,7,2)
v3 <- c(5,9,6,3)
 
mt1 <- cbind(v1,v2,v3)
mt1
mt1%*%mt1
mt1%*%t(mt1)  

#determinant
G
dt <- 55*41 - 28*75
dt
det(G)

#inverse of a matrix solve()
solve(G)


#########################
#Summary Statistics


#t = transactions per dia
t<- c(22,28,26,27,21,27,28,22,22,29)
mean(t)
barplot(t)
abline(h=mean(t))

median(t)
abline(h=median(t),col='red')
stdev <- sd(t)
#plot a line 1 standard deviation above the mean, and 1 below
abline(h=mean(t)-stdev, col='blue')
abline(h=mean(t)+stdev, col='blue')


###############################
#simulation

# R uses prefix 'r' for randomly generated numbers
#you can choose distribusion by specifying the suffix
#binomial=rbin

uni <- runif(30000, min=0, max=10)
uni[1:10]
head(uni)
#could forse them to be integers by using a "round" command, round the unit to 0

uni.int <- round(uni,0)
uni.int[1:10]

#tabluate them
table(round(runif(30000, min=0, max=10),0))
#or
table(uni.int)

#to simulate from a normal distribution
rnorm(1000, mean=2, sd=1)

#use hist() to make a histogram
#"main" enables us to entitle the graphic

hist(rnorm(1000, mean=2, sd=1), main="Normal")


#to simulate from a binomial distrubtions use rbino
#below n is sample size, size and prob are the parameters
#i.e. size is the number of trials, n is the number of deelies to make, prob is the probablilty of success

rbinom(size=10, n=10000, prob=.2)
hist(rbinom(size=10, n=10000, prob=.2), main="Binomial")
abline(v=2,col='red')

x<- rbinom(size=10, n=10, prob=.2)
mean(x)
hist(x)


##
#factors
#useful for categorical data
#we record teh sunny, cloudy and rainy days in a town for 7 days

weather <- c('sunny', 'cloudy', 'rainy', 'sunny','sunny','sunny','sunny')
#tell R that weather is a factor
types <- factor(weather)
weather
types
#note there are no quotes around the levels.
#these are integer references to the factor's levels.

#look at the underlying integers:
as.integer(types)

levels(types)
