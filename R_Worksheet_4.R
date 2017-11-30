#R Worksheet 4
#1) Creating Functions
#a) Create a function called none() which has one parameter x, and simply
#returns the value of x sent to it. Run none(), sending the value of 3 to it

none <-function(x)
  {
  result <- x
  return(result)
  }
none(3)

#b) 
#Create a function called mulp() which multiples two numbers.
#Send 4 and 8 to mulp().
mulp <-function(x,y)
  {
  result <-x*y
  return(result)
  }
mulp(4,8)
#this format for functions isn't required, but it can be easier to read. 
#the following works too.
mulp <- function(x,y){product <- x*y; return(product)}
mulp(10,2)

#c)
#Define two varialbes, a=5 and b=7. send a and b to mulp()
a<-5
b<-7
mulp(a,b)

#d)
#Put the output of none(), which itself has an input of 6, as one of the inputs of mulp()
#This process is called nesting. 
#Let the other input to mulp() be 7
mulp(none(6),7)
#or
d <- none(6)
mulp(d,7)

#2
#The dataset "airquality" in R, contains a sequence of daily readings of New York's
#air quality between May and September 1973.
#They have numberic readings for ozone, temp, wind and solar radiation
#There are also 2 ordinal variables indicating the day of the month, and the month.
#a)
#Produce scatterplots of each and every variable against each other using the plot() function
attach(airquality)
plot(airquality)

#b)
#Produce scatterplots of the ozone measurment againts temp, and wind against temp
#Provide a main title for our plots and label the axes appropriately
#Change the plotting character and size of your plotting character.
plot(Ozone,Temp, xlab="Ozone", ylab="Temperatire",main="Ozone v. Temperature")
#because you attached airqulaity you don't have to do airquality$Temp

plot(Temp,Wind, xlab="Temperature", ylab = "Wind in MPH", main = "Temperature v. Wind")

plot(Ozone,Temp, xlab="Ozone", 
     ylab="Temperatire",main="Ozone versus Temperature", pch=6, cex=2)
plot(Temp,Wind, xlab="Temperature", 
     ylab = "Wind in MPH", main = "Temperature versus Wind", pch=2, cex=6)

#c)
#Use the par() function to plot the scatter plots in (b) side by side
par(mfrow=c(1,2))
plot(Ozone,Temp, xlab="Ozone", 
     ylab="Temperatire",main="Ozone versus Temperature", pch=6, cex=2)
plot(Temp,Wind, xlab="Temperature", 
     ylab = "Wind in MPH", main = "Temperature versus Wind", pch=2, cex=6)
#nasty
par(mfrow=c(2,1))
plot(Ozone,Temp, xlab="Ozone", 
     ylab="Temperatire",main="Ozone versus Temperature", pch=6, cex=2)
plot(Temp,Wind, xlab="Temperature", 
     ylab = "Wind in MPH", main = "Temperature versus Wind", pch=2, cex=6)
#less nasty

#d)
#Calculate the correlation matrix for these observed varialbes (you may
#have to specify some NA handling mechanism to get cor() to work properly) 
#see the help page for further information. 

cor(airquality)
cleanAirquality<-na.omit(airquality)
cor(cleanAirquality)

#e)
#The correlation matrix displayed at seven decimal points is difficult to read
#Use round() to examine it at two decimal places
?round()
round(cor(clean),digits=2)

#f
#Construct boxplots for ozone and temperature against each month.
?boxplot()
par(mfrow=c(1,2))
boxplot(Temp~Month)
boxplot(Ozone~Month)
#i can't see anything
#undo graphical speifications you did with dev.off()
dev.off()
boxplot(Temp~Month)
boxplot(Ozone~Month)
#in the plot viewer you can use the arrow keys to look at different plots if there's too much detail for side by side.˜