#R_Worksheet_7
# subset()
# ifelse()
# cut()
# libraries

#Install the R library "Datasets"
install.packages('datasets')
library(datasets)
#do some EDA on the islands data set
?islands
summary(islands)
head(islands)
names(islands)
hist(islands)
#use the subset function to get islands that are larger than average
subset(islands, islands>mean(islands))
#use subset to get islands smaller than the mean
subset(islands, islands<median(islands))

#create an if else statement and ifelse() to say if the first island in the dataset is a continent or not
if (islands[1]>mean(islands)) {print("Continent")} else{print("Non-Continent")}

ifelse(islands[1]>mean(islands),print("Continent"),print("Non-Continent"))

#Use the cut() function to come up with 4 size categories for islands, and return the category for the 4th island
cut(islands[5],4,labels = c('micro',"tropical","oceanic",'continental'))

# load in the Orange data set
# make a linear model to test for a linear relationship between age and circumference 
# plot that data along with the regression line
head(Orange)
attach(Orange)
model <- lm(circumference~age)
summary(model)

plot(age,circumference)
abline(model,col='red')

#plot the residuals of the linear model
plot(model$residuals)
