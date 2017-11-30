##Data Frame
##Data Frames are spreadsheets
##it keeps all of your variable together in one structure

exam1 <- c(73,93,89,73,51,69,47,87,79)
exam2 <- c(80,88,90,87,46,87,59,75,95)
class(exam2)
#we can create a data fram that includes all the grades together
#data.frame both join the data, name columns after the comonent objects, and put it in the data frame format
grades <- data.frame(exam1,exam2)
grades

#we can access columsn in the data fram by specifying their index number:
grades[2]

#or, specify the variable name:
grades["exam2"]

# or use shorthand notation
grades$exam1
grades$exam1[c(1,2)]

#How to read data in
#there's a ton of ways to do this

#use a csv file (comma separated values) + file.choose()
#you can save an excel as a csv

exams <- read.csv(file.choose())
#file.choose tells rstudio i'll find the file to open, i chose a random csv
#from an old class
head(exams)

#attach data already in R
attach(houses)
houses
Location
Price

#warning! sort() decouples
#using "order" is safer
Location[rev(order(Prices))]

############
##List
# Generate your own
# rnorm generates from a normal distribution
x <-rnorm(15,mean=0,sd=1)
x

#density will produce a list
#a list contains several objects
#objects can be any type
#and $ allows you to pull out specific componenets
den <- density(x)
den
class(den)
names(den)
den$x
den$y
den$bw
den$n
den$call
den$data.name
den$has.na

# lists are fucky
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
#it just starts over after it runs out of numbers
g = matrix(1:9,nrow=3)
g

f = data.frame(d)
f
#see how the column/row display changed?

#import data from R
#there's lots built in
#use data() to look at the list
data()
data(BOD)
BOD
?BOD
#put a question mark in front of the data set to learn more about it
# ? aren't just for functions

BOD[,1]
BOD[,2]
BOD[2,2]
dim(BOD)
names(BOD)
BOD$Time
BOD$demand
s