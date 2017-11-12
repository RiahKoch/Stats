##Data Frame
##Data Frames are spreadsheets
##it keeps all of your variable together in one structure

exam1 <- c(73,93,89,73,51,69,47,87,79)
exam2 <- c(80,88,90,87,46,87,59,75,95)

#we can create a data fram that includes all the grades together
grades <- data.frame(exam1,exam2)

#we can access columsn in the data fram by specifying their index number:
grades[2]

#or, specify the varalbe name:
grades["exam2"]

# or use shorthand notation
grades$exam1
grades$exam1[c(1,2)]


#How to read data in
#use a csv file (comma separated values)
#you can save an excel as a csv

exams <- read.csv(file.choose())
#file.choose tells rstudio i'll find the file to open, i chose a random csv
#from an old class
head(exams)
?read.table

#attach data
attach(houses)
houses
Location
Price

#warning ! sort decouples
#using "order" is safer
Location[rev(order(Prices))]

############
##List
#
x <-rnorm(15,mean=0,sd=1)
x

#density will produce a list
#a list contains several objects
#objects can be any type
den <- density(x)
den

names(den)
den$x
den$y
den$bw
den$n
den$call
den$data.name
den$has.na

#names function is multi-purpose
a <-c(1,2)
b <-5
c <- list(a,b)
c
names(c)
names(c)<- c("first","second")
names(c)
c
c$first
c$second

###define a matrix and a data fram
a <-1:8
d <- matrix(a, ncol=3, byrow=TRUE)
d
g = matrix(1:9,nrow=3)
g

f = data.frame(d)
f



#import data from R
#there's lots built in
data()
data(BOD)
BOD
?BOD

BOD[,1]
BOD[,2]
BOD[2,2]
dim(BOD)
names(BOD)
BOD$Time
BOD$demand
