#Intro to what R can do 
#boolean expressions
4>5
7+8==14

#basic math
6-3

#creating an object:
#"<-" is an assignment operator, the recipe is variable_name <- value_assigned
# "=" does the same thing, but = is also used in function calls
# Keyboard shortcut for <- is 'Option'+'-' on a mac
x <- 9
y <- x/2
x
y

## Note: R IS CASE SENSITIVE X AND x WILL BE DIFFERENT
# T and F are shorthand for TRUE FALSE
x <- T
x

# Functions
# rep() = repeat(what, how many times)
# put a questionmark in front of a function for documentation on a function
# help() does the same thing
# ?? in front helps no matter if the library the function is in is loaded or not
# example(function_name) will spit out the example portion of R documentation
?rep
rep("hey", time=3)
sqrt(25)
?sum
??sum
help(sum)
sum(1,4,6)
example(sum)


#Vector
#vector:list of values, does not have to be numbers
#they just need to be the same type
#c() = combine
c(7,8,9)
c("d","o","g")
c('c','a', 't')

#: creates a series
8:12
seq(8,12)
#but you don't have to sequence only integers
seq(8,12,.1)
#and it doesn't have to be in acsending order
seq(9,5)
#once we create a vector we can acess it's individual components
sentence <- c("walk", "the", "dog")
sentence
# square brackets are how you subset an object
sentence[3]
#you can also update a vector as you go
sentence[3]<-"plank"
sentence
#or add items to the vector
sentence[4] <- "now"
sentence[c(2,4)]

#you can assign names to the vector elements
#create a new vector with 3 integers, then name them
ranks <- 1:3
names(ranks) <- c("first","second","third")
ranks
ranks['first']
ranks["third"]<-4
ranks["third"]
ranks

#plotting 
#let's use vectors to make a bar plot
income<- c(11,14,17,18)
barplot(income)
?barplot
names(income)<- c("Store 1", "Store 2", "Store 3", "Store 4")
barplot(income)
names(income)<- c("Chipotle", "Rainbow", "Noodle Co", "Old Chicago")
barplot(income)
barplot(1:100)

#Vector Math
#you can apply a function to everything in a vector
z <- c(2,4,5)
z+1
z/2
2*z
y <- c(1,1,2)
2+y
2-y
# == can be used for boolean expressions
y==c(1,1,1)

log(y)
sqrt(y)

#scatterplot
x<- seq(1,10, 0.1)
y<- sin(x)
plot(x,y)
#with the plot function, first variable input goes to the x axis, 2nd variable goes on the y
plot(y,x)
v <- -10:10
absv = abs(v)
plot(v,absv)

# Missing values in R are coded as NA
a <- c(1,3,NA,7,9)
#if there's an NA in a vector some functions won't work
sum(a)
help(sum)
sum(a,na.rm=TRUE)
