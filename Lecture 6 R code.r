#####################################
# Conditional Execution
# 'if', 'for' and 'while' statements

h <- 26
if(h<=21){print("happy")}else{print("sad")}

#Example: tenure criterion
# Number of publications 
n = 6
publications.vec  = rnorm(n,mean=15,sd=4)
publications.vec
# round to nearest integer
publications = round(publications.vec,0)
publications

dt=data.frame(1:n,publications,rep(NA,times=n))
dt

colnames(dt) = c("ID","Publications","Decision")
dt

# suppose tenure is only given to those with 15 or more
for(i in 1:n){
  if(dt[i,2] < 15){dt[i,3]=c("There's the door!")}
  else{dt[i,3]=c("You're tenured")};
}

dt

#simulating a bimodal distribution
sam <- matrix(nrow=1000,ncol=1)

for(i in 1:1000){
  u <- runif(1,min=0,max=1)
  if(u > 0.5){x <- rnorm(1,mean=10,sd=2)}
     else{x <- rnorm(1,mean=-10,sd=2)}
  sam[i,] <- x
}

hist(sam)
# ugly to look at, let's do another 
hist(sam,breaks=50)


# The 'while' function
#a less common iterative function and...
#potentially more problematic 

x <- 0
while(x < 5){
  x <- x + 1
print(x)}

#typing the following into the console would not be reasonable!!!
#so don't do it !!!!!....will be forced to terminate

#x <- 0
#while(x < 5){print(x)}

x <- 0
while(x < 5){print(x); x=x+1}

x <- 0
while(x < 5){print(x); x=x+1; if(x>3){break}}

##########################################
## More plotting
#reconsider the Puromycin data set

data(Puromycin)
Puromycin

plot(Puromycin$conc,Puromycin$rate,pch=".",cex=4)
plot(log(Puromycin$conc),Puromycin$rate,pch=".",cex=4)

# Consider fitting a model to this data
?lm

lm.fit <- lm(Puromycin$rate ~ log(Puromycin$conc),data=Puromycin)

# Since we are specifying the data within the names of the
# variables, we really don't need the data argument
lm.fit <- lm(Puromycin$rate ~ log(Puromycin$conc))

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
fitted(lm.fit)
resid(lm.fit)

# we can also plot the fitted line on our scatter plot:
plot(log(conc),rate,pch=".",cex=4)
abline(lm.fit)

#can make some changes:
abline(lm.fit,col="red")
abline(lm.fit,col="red",lwd=2)

plot(log(conc),rate,pch=".",cex=4)
abline(lm.fit,col="red",lwd=2,lty=2)

#or
plot(log(conc),rate,pch=".",cex=4)
abline(lm.fit,col="red",lwd=2,lty="dashed")

plot(log(conc),rate,pch=".",cex=4)
abline(lm.fit,col="red",lwd=2,lty="dotdash")

#see R documentation for `par' for more options
?par            


###more graphics

x1 <- seq(from= -3, to=3, length=51)
x1

?dnorm

y1 <- dnorm(x1,mean = 0,sd = 1)
y1

#if we type...
plot(x1, y1, xlab="", ylab="", 
     type="n", axes=FALSE)

# why?
?plot

#set type="n", then a blank plot is produced!

#now set axes=TRUE
plot(x1, y1, xlab="", ylab="", 
     type="n", axes=TRUE)

#by default R specifies axes=TRUE
plot(x1, y1, xlab="", ylab="", type="n")
#by setting type=n we are commanding R not to plot anything !

plot(x1, y1, xlab="", ylab="")

plot(x1, y1, xlab="", ylab="",pch="*",
     col="blue")

#adding points to a line plot
plot(x1, y1,type="l",
     main="Normal Density",xlab="x",
     ylab="density")
points(x1,y1,col="blue")

#might want to add a second plot
x2 <- seq(from= -5, to= 5, length=51)
y2 <- dnorm(x2, mean = -2, sd = 1)
lines(x2, y2,type="l",col="red")

#adjustments are needed - change range of the horiz axis
plot(x1, y1,type="l",main="Normal density",
     xlab="x",ylab="density",xlim=c(-6,6))
lines(x2, y2,type="l",col="red",lty=2)

#changing the range of the vertical axis
plot(x1, y1,type="l",main="Normal density",
     xlab="x",ylab="density",xlim=c(-6,6),
     ylim=c(0,0.5))
lines(x2, y2,type="l",col="red",lty=2)

#can label/annotate plots...

#?legend
leg.txt=c("mean 0","mean -2")
legend(2.5,0.4,text.col=c("black","red"),
       legend=leg.txt)

#...and add symbols (greek letters)
plot(x1, y1,type="l",main="Normal density",
     xlab="x",ylab="density",xlim=c(-6,6),ylim=c(0,0.5))
lines(x2, y2,type="l",col="red",lty=2)

label1=expression(paste(mu,"= 0") )
label2=expression(paste(mu,"= -2") )

label1
label2

leg.txt=c(label1,label2)
legend(2.5,0.4,text.col=c("black","red"),
       legend=leg.txt)

#can point to certain features with arrows
?arrows

#arrow starts at (-6,0.2) ends at (-4,0.05)
arrows(-6,0.2,-4,0.05)

#?text
text(-6,0.22,label=label2)

arrows(3,0.4,1.8,0.15)
arrows(3,0.4,1.8,0.15,code=3)
text(3,0.45,label=label1)

#saving the graphic - several options ps, eps, pdf 

# We might wish to have a panel of plots
x3 <- seq(from= -5, to= 5, length=51)
y3 <- dnorm(x2, mean = -1, sd = 1)

par(mfrow=c(2,2))
plot(x1, y1,type="l",main=expression(paste(mu,"=0") ))             
plot(x2, y2,type="l",main=expression(paste(mu,"=-2") ))
plot(x3, y3,type="l",main=expression(paste(mu,"=-1") ))
plot(x1, y1,type="l",main="",xlim=c(-6,6),xlab="x",ylab="density")             
lines(x2, y2,type="l",col="blue",lty="dashed")
lines(x3, y3,type="l",col="red",lty="dotdash")

#  optimization in R
fun = function(x){
  fn = exp(x/10)*sin(x);return(fn)
}

x = seq(-100,100,0.0001)

par(mfrow=c(1,2))
plot(x,fun(x),type="l")

#for 80 < x < 90 where do the local maxima occur ?
plot(x,fun(x),type="l",xlim=c(80,85))
optimise(fun,lower=80,upper=85,maximum=T)

#R packages  http://cran.r-project.org/web/packages/
