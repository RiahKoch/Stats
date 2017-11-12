####
##More on dereferencing

data(Puromycin)
names(Puromycin)
Puromycin
attach(Puromycin)
conc

#How many distinct concentration levels?
unique(conc)
unique(conc)[1]
length(unique(conc))

#More use of R's logic operators
#of all the substrates, which has conc level equal to unique level 1
conc == unique(conc)[1]
#or
conc==0.02

which(conc== unique(conc)[1])
which(conc==0.02)

#if we want to know the substrates with conc=0.02
#what are their coresponding rates?
rate[which(conc == unique(conc)[1])]

#a little cleaner to create a vector from substrate ids
id.002<-which(conc == 0.02)

rate.002<-rate[id.002]


id.006 <- which(conc==0.06)
rate.006<-rate[id.006]

mean(rate.002)
mean(rate.006)

#significantly different?
#check with a t-test
t.test(rate.002,rate.006)
#nul hypothesis is that the means are equal, remember?
#alt, the means =/=
#reject the nul, low p value, 
#and the confience interval does not include 0


####
#other logical opeartors
x=1:10
#and "&"
#or is "|"
# not equal is "!="
x[x>7]
x[x<=4]
x[x<3 | x>=9]


#######
#Interogation
d<-6

d<2
d>2
#do ask about equality ==
d<-3
d==3
#you can use = instead of <- when assinging a thingy
#it's considered "better coding" to use <-
d==6

d!=6
d!=3

#the not (!) operator inverst the value of d == 3, it reverses your quesiton
!d==3

a<-1:3
a
#check for na values
is.na(a)

#create a vector with some missing values
v1 <-c(44,39,NA,29)
is.na(v1)
#what is not NA?
!is.na(v1)


e <- d < 2
e

#consider"&"
d<4
e
#is d<4 AND e both true?
(d<4)&e
#false b/c e is false

(d<4)&(d==3)
(a>=2)&(a==2)

a[a > 1]
a[a < 2]


#interogation in a datafram
data(BOD)
BOD

BOD$Time[BOD$demand > 13]


g<- c(12,13,14)
any(g>16)
any(g==13)
which (g==13)
g[g==13]
