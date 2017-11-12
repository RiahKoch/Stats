#####################
# Subsetting data
# Extracting rows of a vector, matrix or data frame
# that satisfy a condition.

data("InsectSprays")
InsectSprays
attach(InsectSprays)

mean(count)
many <- subset(InsectSprays, count>9.5, select=(c(count,spray)))
many

not.B <- subset(InsectSprays, spray != "B", select=(c(count,spray)))
not.B


#########################################
# ifelse command

x <- 5
if (x > 0) print("Positive number")
if (x > 0) {print("Positive")} else {print("0 or negative")}

ifelse(x >= 0, sqrt(x), NA)


############################################
# cut function

summary(count)
cut(count,3)
cut(count,3,labels=c('small','medium','large'))

###########################################
# table of counts: 
table(spray)

##########################################
# Install Packages
# R contains many collections of compiled code. 
# You can find packages that are included within 
# the base package of R:
library()

# Other packages may be added from contributed packages
# available through the Comprehensive R Archive Network.

library(car)
?car

x <- c(15,26,10,9,15,20,18,11,8,20,7,9,10,11,11,10,
       12,42,17,11,10)
y <- c(95,71,83,91,102,87,93,100,104,94,113,96,83,84,
       102,100,105,57,121,86,100)
plot(x,y)

lm.fit <- lm(y ~ x)
abline(lm.fit)

cooks <- cooks.distance(lm.fit)
plot(cooks)

## Installing packages that are not in the base 
# package of R
install.packages("fortunes")
library(fortunes)
#a set of humorous and thought-provoking quotes
# from mailing lists and help sites.

fortune("This is R")
fortune(11)

# to get a random selection from the quotes:
fortune()

