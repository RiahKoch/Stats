#R Worksheet 2
#Define an object A, an array with 4 elements integers 5 through 8 inclusive
A <- 5:8
A
#1a, liste lement 2 of a
A[2]
#list element 4 of a
A[4]
#calculate the product of elements 2 and 4
A[2]*A[4]
#assign the integers 3 and 4 to object B
A[c(3,4)]
B<-c(3,4)
B
#then use dereference elements 3 and 4 of object A
A
A[-B]
#extract every element of A except 2
A[-2]
#extract all those elements except 3 and 4
A[-3:-4]


#2
#define a marix with 3 rows and 3 columns, the elements begin the integers from 1-9
#first row will have 1-3
#second row 4-6, etc
matrix(1:9,3,3)
#right dimensions, but the row assignment isn't what we wanted
max<-c(matrix(1:9,3,3,byrow=TRUE))
dim(max)<-c(3,3)
max
#boom, there we go

#2a Derefrerence the value in the 2nd row, 2nd column
max[2,2]
#extract the whole second row
max[2,]
#extract the 3rd column
max[,3]
#multiply the matrix by its transpose
max%*%t(max)
#compute the determinant of the matrix
det(max)
#give the diagonal elemets of the matrix
diag(max)


#3
#A sample of annual incomes in $1,000 for 8 facotyr workers is given, create a vector called salary
salary<-c(23,23,25,27,25,24,24,31)
#find the mean, median and standard deviation of the salaries
mean(salary)
median(salary)
sd(salary)
#make a barplot, wtih a black line for the mean, a red line for the median and 2
#lines for +1sd and -1sd
barplot(salary)
abline(h=mean(salary),col='black')
abline(h=median(salary),col='red')
abline(h=mean(salary)+sd(salary),col='blue')
abline(h=mean(salary)-sd(salary),col='blue')


#4 
#Define a vector norm by generating 1000 values fromt he normal distribution
#with a mean of 200, and a sd of 15
pie<-rnorm(1000,mean=200, sd=15)
#comute teh mean, sd and values that are +/- 2 sd fromt the mean

mean(pie)
sd(pie)
mean(pie)+2*sd(pie)
mean(pie)-2*sd(pie)
#plot your data in a histogram
hist(pie)
#add a vertical line to show the mean, and the 2 standard devs, chose different colors for all
abline(v=mean(pie), col='red')
abline(v=mean(pie)-2*sd(pie), col='purple')
abline(v=mean(pie)+2*sd(pie), col="orange")
