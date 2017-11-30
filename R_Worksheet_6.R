#1 Load the r data set airquality
attach(airquality)

# using a for statement
# A)
#write a piece of code to warn if the Ozone varable has an NA value
#for any of its elements
head(airquality)
dim(airquality)
N <- dim(airquality)[1]
for (i in 1:N) {
  if (is.na(airquality$Ozone[i])) {
    print("MISSING")
  } else{
    print("OK")
  }
}

which(is.na(airquality$Ozone))

# b)
# do the same for Solar.R
for (i in 1:N) {
  if (is.na(airquality$Solar.R[i])) {
    print("MISSING")
  } else{
    print("OK")
  }
}

# 2
# a) Generate a sequence of intergers between 0 and 5
apple <- runif(5,min = 0,max = 5)
round(apple,0)

#Generate a sequence of letters from the word cat
cat <- c('c','a','t')
sample(cat,3)

# 3
# Use the while() function to:
# a) Generate a sequence of integers between 0 and 5
x <- 0
while (x < 5) {
  x <- x + 1
  print(x)
}

# b) Generate a sequence of letters from the word cat
cat <- c('c','a','t')
x <- 1
while (x <= 3) {
  x <- x + 1
  print(cat[x])
}
