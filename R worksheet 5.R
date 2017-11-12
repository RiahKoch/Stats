#R Worksheet 5

#1
#OrchardSprays is a dataset with 64 observations
#containing decrease in volume of the solutions of measured amounts of 
#lime sulphur emulsion in sucrose solution. 
#Seven different concentrations of lime sulphur 
#ranging from concentrations of 1/100 to 1/1,562,500
#in successive factors of 1/5 were used as well as a solution containing
#no lime sulphur. 
#For the treatment factor, A indicates the highest level of lime, 
#and H is no lime sulphur, all other levels are intermediate.

#a
#Construct a boxplot of the decrese in volume for each category of the lime sulphur
?OrchardSprays
names(OrchardSprays)
OrchardSprays
#treatment=A:H
attach(OrchardSprays)
plot(treatment,decrease)

#b
#pick out the row indices of the data for which the treatment was A

treatment
unique(treatment)
unique(treatment)[8]
rowpos[which(treatment == unique(treatment)[8])]

#c
#Pick out the values of decrease for which the tretment was A.
names(OrchardSprays)
decrease[which(treatment == unique(treatment)[8])]
Adecrease<-decrease[which(treatment == 'A')]

#d
#Find the mean and varience of these values
a<-rowpos[which(treatment == unique(treatment)[8])]
b<-decrease[which(treatment == unique(treatment)[8])]
mean(a)
var(a)
mean(b)
var(b)

#e
#Pick ou the row indices of the data, for which the treatmet was B
unique(treatment)
rowpos[which(treatment =="B")]

#f
#Pick out the values of decrease for which the treatment was B
decrease[which(treatment == 'B')]

#g
#Find the mean and varianc eof these values
summary(Bdecrease)
mean(Bdecrease)
var(Bdecrease)
mean(decrease[which(treatment == 'B')])
var(decrease[which(treatment == 'B')])
mean(rowpos[which(treatment =="B")])
var(rowpos[which(treatment =="B")])

#h
#Conduct a t-test (use the help function) between the values of 
#the decrease for group A and B
?t.test
t.test(Bdecrease,Adecrease)


#2
#Loan the R dataset airquality
airquality
names(airquality)
?airquality
attach(airquality)
#a
#Are any Ozone values NA?
is.na(Ozone)
any(Ozone=="NA")

#Yes

#b
#Which cases are these?
Ozone[Ozone=='NA']
Ozone[Ozone==""]
airquality
unique(Ozone)
which(Ozone == unique(treatment)["NA"]) #integer(0)
Ozone == unique(Ozone)['NA'] #batman
Ozone == unique(Ozone)[5] #pulls out all the NAs
Ozone =='NA'
#Kinda works?
which(Ozone=="NA") #also gives integer(0)

Ozone =="NA"
#best I could work out

#c
#Generate a datafram with no NA values for Ozone

clean<-na.omit(Ozone)

#d
#list the values for Wind which are greater than or equal to 16
Wind[Wind >= 16]

#e
#List the value for which wihchare greater than or equal to 16 
#and less than or equal to 4
Wind[Wind >=16 & Wind <=4] 
#none, obviously a number can't be both at the same time
#we need to use the or function "|"
Wind[Wind >=16 | Wind <=4]

#f
#What were the corresponding values for Oaone on those occasions
#for which wind was at least 17 and no more than 3?

Ozone[Wind>17&Ozone<3]
#this gives them where wind was over 17 and ozone was less than 3, never
Ozone[Wind>17|Wind<3]
#I guess this is it
airquality
#g
#Are there any NA values in either the Ozone observations, 
#or the Wind observations, for August?
is.na(Ozone[Month==8]|Wind[Month==8])
#no

