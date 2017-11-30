#Lecture_Code_4
# Function Creation
# Basic Plotting

# You can create your own homemade functions
# nameOfFunction <- (paramters){ what the function does; return(whatever you want back from the function)}
# a function can only return one thing to you

#example of a function 
FreedomUnitsMiles <- function(kilometers){
  return(kilometers*.621371)
}

FreedomUnitsMiles(3)

FreedomUnitsPounds <- function(kilograms){
  USPounds <- kilograms*2.20462
  return(USPounds)
}

FreedomUnitsPounds(5)

# basic plotting with plot()
attach(cars)
?cars
?plot
plot(speed, dist)
#first parameter is the x-axis, second is the y-axis
#you can change how it's plotted
# line or points with type=
plot(speed, dist, type = 'l')
plot(speed, dist, type = 'o')
#main lets you assign a title
#sub provides a sub title
#assign x and y axis if you don't like the default
#pch = plotting character
#cex = size
#color = color of plotted character
plot(speed, dist, pch=10, cex=2, col='red', main="Distance v. Speed", sub='How speed and distance are related', xlab='Speed in MPH', ylab='Dist in Miles')

#you can also mess with how many plots you fit in one window with par(mfrow=)
#to change the number of columns and rows of the plot window
par(mfrow=c(1,2))
plot(speed,dist)
plot(dist,speed)

par(mfrow=c(2,2))
plot(speed,dist)
plot(dist,speed)
plot(speed,dist)
plot(dist,speed)
