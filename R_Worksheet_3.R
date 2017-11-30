#R_Worksheet_3
#1
#a)
#generate 100 observations from a binomial distribution with a 50% chance of success
?rbinom
binom<-rbinom(100,1,prob=.5)
binom

#b)
#Plot your generated observations with a histogram
hist(binom)

#c)
#turn the outcome from a numberic class to a list
listBinom <- as.list(binom)
listBinom

#d) Get the 5 number summary of your binomial distribution
summary(binom)

#e) up the number to 500 instead of 100, plot and get the summary of that larger sample size
biggerBinom <- rbinom(500,1,.5)
hist(biggerBinom)
summary(biggerBinom)
#is the mean closer to .5?