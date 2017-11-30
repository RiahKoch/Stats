#####################################
# Conditional Execution
# 'if', 'for' and 'while' statements

# If Statement
h <- 26
if (h <= 21) {
  print("happy")
}else{
  print("sad")
}

# For Loop Example with If Statement: Job Applicants
# Number of candidates
n <- 6
requirements.vec  <-  rnorm(n,mean = 6,sd = 2)
requirements.vec
# round to nearest integer
requirements <-  round(requirements.vec,0)
requirements

dt <- data.frame(1:n,requirements,rep(NA,times = n))
dt

colnames(dt) <-  c("ID","RequirementsMetCount","Decision")
dt

# suppose job applicants are only asked to interview if them meet 6 or more of the job post requirements
for (i in 1:n) {
  if (dt[i,2] < 6) {
    dt[i,3] <- c("Thank you for your application...")
  }
  else{
    dt[i,3] <- c("We'd like to invite you for an interview.")
  };
}

dt

# For Loop Example:
# simulating a bimodal distribution
sam <- matrix(nrow = 1000,ncol = 1)

for (i in 1:1000) {
  u <- runif(1,min = 0,max = 1)
  if (u > 0.5) {
    x <- rnorm(1,mean = 10,sd = 2)
  }
  else{
    x <- rnorm(1,mean = -10,sd = 2)
  }
  sam[i,] <- x
}

hist(sam)
# ugly to look at, let's change the parameters to make it look better
hist(sam,breaks = 50)


# The 'while' function
# a less common iterative function and...
# potentially more problematic

x <- 0
while (x < 5) {
  x <- x + 1
  print(x)
}

# Do NOT typing the following into the console
# It won't make sense, and you'd need to force R to terminate

#x <- 0
#while(x < 5){print(x)}
#Nothing is being added, it'd just print 0 FOREVER

x <- 0
while (x < 5) {
  print(x); x = x + 1
}

x <- 0
while (x < 5) {
  print(x); x = x + 1; if (x > 3) {
    break
  }
}

##########################################
## More plotting
#reconsider the Puromycin data set

data(Puromycin)
Puromycin

#instead of just picking a symbol or type of lin from a list of possiblities
# see https://www.statmethods.net/advgraphs/parameters.html
# for a list of plotting characters, lines, colors, etc. and their codes
# you can just put your plotting character in quotes
plot(Puromycin$conc,Puromycin$rate,pch = ".",cex = 4)
plot(Puromycin$conc,Puromycin$rate,pch = "p",cex = 4)
# Log transformation
plot(log(Puromycin$conc),Puromycin$rate,pch = ".",cex = 4)

# Consider fitting a (linear) model to the log transformed data
?lm
# for lm() the first paremter is the response ~ anything after the ~ is the input variables
lm.fit <- lm(Puromycin$rate ~ log(Puromycin$conc),data = Puromycin)

# Since we are specifying the data within the names of the
# variables, we really don't need the data argument
lm.fit <- lm(Puromycin$rate ~ log(Puromycin$conc))

# you can also attach the data
attach(Puromycin)
lm.fit <- lm(rate ~ log(conc))

# results of lm
lm.fit

#lm produces a list. We can see more by using the
# extractor function summary

summary(lm.fit)

#can extract from the lm.fit list
lm.fit$resid
lm.fit$coeff
lm.fit$coeff[1]
lm.fit$coeff[2]
#you can also get the fitted values for the function
fitted(lm.fit)
# and the residuals
resid(lm.fit)

# we can also plot the fitted line on our scatter plot:
plot(log(conc),rate,pch = ".",cex = 4)
abline(lm.fit,col = "red",lwd = 2)

plot(log(conc),rate,pch = ".",cex = 4)
abline(lm.fit,col = "red",lwd = 2,lty = 2)

#or
plot(log(conc),rate,pch = ".",cex = 4)
abline(lm.fit,col = "red",lwd = 2,lty = "dashed")

plot(log(conc),rate,pch = ".",cex = 4)
abline(lm.fit,col = "red",lwd = 2,lty = "dotdash")

#or plotting residuals
plot(resid(lm.fit))

### More Graphing
x1 <- seq(from = -3, to = 3, length = 51)
x1
# r norm makes random numbers from a given distribution
# d gives densities
?dnorm

y1 <- dnorm(x1,mean = 0,sd = 1)
y1

#if we type...
plot(
  x1, y1, xlab = "", ylab = "", type = "n", axes = FALSE
)

# it doesn't work. But why?
?plot

#set type="n", then a blank plot is produced!

#now set axes=TRUE
plot(
  x1, y1, xlab = "", ylab = "", type = "n", axes = TRUE
)

#by default R specifies axes=TRUE
plot(x1, y1, xlab = "", ylab = "", type = "n")
#by setting type=n we ask R to not plot anything

plot(x1, y1, xlab = "", ylab = "")
plot(
  x1, y1, xlab = "", ylab = "",pch = "*", col = "blue"
)

#adding points to a line plot
plot(
  x1, y1,type = "l",
  main = "Normal Density",
  xlab = "x",
  ylab = "density"
)
points(x1,y1,col = "blue")

#might want to add a second plot
x2 <- seq(from = -5, to = 5, length = 51)
y2 <- dnorm(x2, mean = -2, sd = 1)
lines(x2, y2,type = "l",col = "red")

#adjustments are needed - change range of the horiz ontalaxis
plot(
  x1, y1,type = "l",main = "Normal density",
  xlab = "x",ylab = "density",xlim = c(-6,6)
)
lines(x2, y2,type = "l",col = "red",lty = 2)

#changing the range of the vertical axis
plot(
  x1, y1,type = "l",main = "Normal density",
  xlab = "x",ylab = "density",xlim = c(-6,6),
  ylim = c(0,0.5)
)
lines(x2, y2,type = "l",col = "red",lty = 2)

# Labeling and Annotating plots

# Legends
leg.txt <- c("mean 0","mean -2")
legend(2.5,0.4,text.col = c("black","red"),
       legend = leg.txt)

# add symbols (like greek letters) to legends
plot(
  x1, y1,type = "l",main = "Normal density",
  xlab = "x",ylab = "density",xlim = c(-6,6),ylim = c(0,0.5)
)
lines(x2, y2,type = "l",col = "red",lty = 2)

label1 <- expression(paste(mu,"= 0"))
label2 <- expression(paste(mu,"= -2"))

label1
label2

leg.txt <- c(label1,label2)
#First part of legend is x and y location, starting in it's top left corner
legend(-6,0.52,text.col = c("black","red"),
       legend = leg.txt)

#can point to certain features with arrows
?arrows

#arrow starts at (-6,0.2) ends at (-4,0.05)
#it's drawing a line, just give the start and stop points
arrows(-6,0.2,-4,0.05)

#?text
text(-5,0.22,label = label2)

arrows(3,0.4,1.8,0.15)
arrows(3,0.4,1.8,0.15,code = 3) # Code 3 makes it double ended
text(3,0.45,label = label1)

#saving the graphic - several options ps, eps, pdf
# https://www.stat.berkeley.edu/classes/s133/saving.html

# We might wish to have a panel of plots
x3 <- seq(from = -5, to = 5, length = 51)
y3 <- dnorm(x2, mean = -1, sd = 1)

par(mfrow = c(2,2))
plot(x1, y1,type = "l",main = expression(paste(mu,"=0")))
plot(x2, y2,type = "l",main = expression(paste(mu,"=-2")))
plot(x3, y3,type = "l",main = expression(paste(mu,"=-1")))
plot(
  x1, y1,type = "l",main = "",xlim = c(-6,6),xlab = "x",ylab = "density"
)
lines(x2, y2,type = "l",col = "blue",lty = "dashed")
lines(x3, y3,type = "l",col = "red",lty = "dotdash")

#  optimization in R
fun = function(x) {
  fn <- exp(x / 10) * sin(x);return(fn)
}

x <- seq(-100,100,0.0001)

par(mfrow = c(2,1))
plot(x,fun(x),type = "l")

# Zoom in on a section of that graph/function
# for 80 < x < 90 where do the local maxima occur ?
# a maximize function can be used to find those values
plot(x,fun(x),type = "l",xlim = c(80,85))
optimise(fun,lower = 80,upper = 85,maximum = T)