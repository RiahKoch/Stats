########
#Conditional Execution
#'if','for' and 'while' statements

h <-26
if(h<=21){print("happy")}else{print("sad")}

#Example: tenure criterion
#6 people are up for tenure
#number of publications

n=6
publications.vec = rnorm(n,mean=15,sd=4)
publications.vec
#round to nearest integer
publications = round(publications.vec,0)
publications

#first thing is an identifier (1:n), the last thing in the dataframe will repeat NA
dt=data.frame(1:n,publications,rep(NA,times=n))
dt
#ultimately we want to have the last column say whether someone gets tenure or not
colnames(dt)=c("ID","Publications","decision")
dt

#suppose tenure is only given to those with 15 or more publications
#were creating a for loop
#[i,2] is the publications column
for(i in 1:n){
    if(dt[i,2]<15){dt[i,3]=c("No")}
    else{dt[i,3]=c("You're tenured.")}}
dt


###Simulatin a dinomial distribution
sam <- matrix(nrow=1000,ncol=1)
#you defined a matrix but didn't put anythign in there
for(i in 1:1000){
    u <- runif(1,min=0,max=1)
    if(u >0.5){x <- rnorm(1,mean=10,sd=2)}
      else{x <-rnorm(1,mean=-10, sd=2)}
    sam[i,]<-x
}
hist(sam)
#dats ugly
hist(sam,breaks=50)
#breaks = 50 means tell R to make 50 categories

#The while function
#a less common iterative fuction
#you need to be more careful with it

x <-0
while(x<5){
  x<-x+1
print(x)}

#typing the following would go forever, so it's just an example
#x<-0
#while(x<5){print(x)}
#this would just print 0,0,0,0,0,0,0,0 forever

x<-0
while(x<5){print(x);x=x+1}

x<-0
while(x<5){print(x);x=x+1; if(x>3){break}}


#######Moar plotting!!!!
#reconsider the puromycin dataset

data(Puromycin)
Puromycin

plot(Puromycin$conc,Puromycin$rate,pch='.',cex=4)
plot(log(Puromycin$conc),Puromycin$rate,pch='.',cex=4)
#consider fitting a model to this data
?lm
#"~" mean by
lm.fit<-lm(Puromycin$rate ~ log(Puromycin$conc))

attach(Puromycin)
lm.fit <- lm(rate~log(conc))

#results of lm
lm.fit
#get more info with 'summary'
summary(lm.fit)

#you can then extract info from that
lm.fit$residuals
lm.fit$coefficients
lm.fit$coefficients[1]
fitted(lm.fit)
resid(lm.fit)

#we can also plot the fitted line on our scatterplot
#pch is the symbol on the plot
#cex defines the size of the plot symbol
plot(log(conc),rate,pch='.',cex=4)
abline(lm.fit)

#make some changes
abline(lm.fit,col='red')
#lwd define the width of the line
abline(lm.fit,col='red',lwd=2)

plot(log(conc),rate,pch='.',cex=4)
abline(lm.fit,col='red',lwd=2,lty=2)
#lty lets you define what the line looks like
abline(lm.fit,col='red',lwd=2,lty="dashed")
#same thing

#se R documentaiton for 'par" for more optiosn
?par


#more graphics
x1 <- seq(from=-3, to =3,length=51)
x1

?dnorm
#normal distribution
#dnorm gives the density

y1<-dnorm(x1,mean=0,sd=1)
y1

#if we type
plot(x1,y1,xlab='',ylab='',
     type='n',axes=FALSE)
#plot with NOTHING!!!!!
plot(x1,y1,xlab='',ylab='',
     type='n',axes=TRUE)
#just gives the axes
plot(x1,y1,xlab='',ylab='',
     type='n')
#axes=true is the default, so you can leave it out
plot(x1,y1,xlab='',ylab='')

plot(x1,y1,xlab='',ylab='',pch='*',col='blue')
plot(x1,y1,type='l',
      main='Normal Density',xlab='x',
     ylab='density')


#might want to add a second plot
x2<-seq(from =-5, to=5, length=51)
y2<-dnorm(x2,mean=-2,sd=1)
lines(x2,y2,type='l',col='red')
#the x values shifted, and now you're missing a big hunk of the second curve
plot(x1,y1,type='l',
     main='Normal Density',xlab='x',
     ylab='density',xlim=c(-6,6), ylim=c(0,.5))
lines(x2,y2,type='l',col='red',lty=2)

#can label & annotate plots
#more on ledgend
leg.txt=c("mean 0","mean -2")
legend(2.5,0.3,text.col=c("black","red"),
  legend=leg.txt)

#add some symbols
plot(x1,y1,type='l',
     main='Normal Density',xlab='x',
     ylab='density',xlim=c(-6,6), ylim=c(0,.5))
lines(x2,y2,type='l',col='red',lty=2)

label1=expression(paste(mu,'=0'))
label2=expression(paste(mu,'-2'))

leg.txt=c(label1,label2)
legdent(2.4,.4,text.col=c('black','red'))
#above not compelte

?text
text(-6,0.22,label=label2)

#save a graphic using the export button

#we might wish to ave a pael of plots
x3<-seq(from=-5,to=5, lenght=51)


#optimization in r 
fun = function(x){
    fun =exp(x/10)*sin(x);return(fn)}

