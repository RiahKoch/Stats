#1 Load the r data set airquality
attach(airquality)
#a 
if.any

#write a piece of code to warn if the Ozone varable has an NA value 
#for any of its elements
airquality

for(i in 1:50)
{if(Ozone>100){print("STOP")}else{print("OK")}}
warnings()
which(Ozone!==1:10) 
Ozone


#b
for(i in 1:154)
{if(Solar.R=="NA"){print("STOP")}else{print("Ok")}}



for(i in 1:n){
  if(dt[i,2] < 15){dt[i,3]=c("There's the door!")}
  else{dt[i,3]=c("You're tenured")};
}

#c
#d

#2
#Use the for() function to
#a Generate a sequence of intergers between 0 and 5
apple <- runif(5,min=0,max=5)
#Generate a sequence of letters from the word cat
cat<-c('c','a','t')
cats<-matrix(cat,3,3)
catsdt<-data.frame(cats)
catsdt
#I made a matrix, does that count? 
#use the length() function 
#and integer dereferenceing 
#to generate the sequence of letters of the word cat
#I don't even know what you're asking for
?length()
length(cat)

#3Use the while() function to:
#a Generate a sequence of integers between 0 and 5
x <-0
while(x<5){
  x<-x+1
  print(x)}
#Generate a sequence of letters from the word cat
x<-c('c','a','t')


for (i in 1:length(x)) {
  print(x[i])
}






