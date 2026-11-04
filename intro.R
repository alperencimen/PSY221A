
#Assignment operator: <-
#R is case sensitive

#Name of the data structure <- data
#structureName <- data

#command+shift+c makes the selected lines in comment line. Like in python's command+1

scalar1 <- 1
scalar2 <- 2
scalar3 <- 21321312314

#c() makes a vector in any time. (c is abbreviation of combine)
vector1 <- c(1,2,3,4,5,6,7,8,9,10)
vector2 <- 1:10
vector3 <- 101:110

#factor() function creates a factor
factor1 <- factor(c(1,3), levels=1:3,
                  labels=c("cat","Platypus", "Dog"))
factor1 #To visualize it

#data.frame(vectors...), all the vectors need to be in the same length. 
#The difference between a 2D-Matrix and  data.frame is that, in 2D-Matrix you can only store numeric values. Whereas, in data.frame you can store different types.
yourData <- data.frame(vector1, vector2, vector3)


#You can put different type pf kinds of data structures in the list.
list1 <- list(scalar1, vector1, vector2, vector3, factor1, yourData)

#str() == structure function
str(list1)

#Gives you the names of the columns.
names(yourData)

#This is a quick way to look at the variable you created.
View(yourData)


head(yourData) #This shows the first n elements of your data. n is set to 6 bydefault but you can change it.
tail(yourData) #This shows the last n elements of your data. n is set to 6 bydefault but you can change it.


length(vector1)

nrow(yourData)
ncol(yourData)


dim(yourData)





vector1[1] <- 7 #Indexing in R starts from 1 like Matlab.
vector2[1:3] <- 10 #Assigning the firswt three element to 10.
vector2

vector1[1:4] #Displaying the first 4 elements.


vector1[-3] #This eliminates the third position when printing. It skips that column.
vector2[c(TRUE, TRUE, TRUE, FALSE, FALSE)]

yourData[4, 2] #Returning a specific value from the matrix. row, column

yourData[4, ]
yourData[,3]

yourData[,"vector3"]
yourData$vector3

list1[[4]]


colSums(yourData) #Sums the each column and returns
rowSums(yourData) #Sums the each rows and returns

4 == 4

4 != 4


4<3
4>3

!(1<1)


108 %in% vector3 # %in% checks if the value is in the vector
121312 %in% vector3


# &  ----> (AND) Gate
4>3 & 1==1
# | ----> (OR) Gate


# rm(list=ls()) this clear the variables

mean(vector1)#calculated the mean of the vector.
sum(vector1)/length(vector1)
mean(yourData$vector1)

colMeans(yourData)#calculates the means of columns
rowMeans(yourData)
median(yourData$vector1)


table(yourData$vector1) #gives how many observations you have as a table

sd(yourData$vector1)#gives the standard deviation
var(yourData$vector1)#gives the variance

range(yourData$vector1)#gives the min and max values


summary(yourData$vector1) #will give that min,max, median, meqn, 1st and 3rd quantiles.

NA #not applicable (missing entry)

NaN #not a number.

1/0

NULL #empty data structure

nullScalar <- c()


1:10
seq(1,10,1)

seq(1,10,2)
seq(35,450,length.out=5)

rep(1,5)
rep(1,times=5)
rep(c(1,2,3),times=5)
rep(c(1,2,3),each=5)
rep(c(1,2,3),times=5,each=2)
rep(c("high","low"),times=5,each=2)


cbind(vector1,vector2)
str(cbind(vector1,vector2))

cbind(yourData,vector1)


rbind(vector1,vector2)

sample(1:10,5)
sample(1:2,100,replace=T)
table(sample(1:2,100,replace=T,prob=c(.75,.25)))

sample(10,1)#This is odd. this does not work.


if (4>3){
  "yeah"
  
}

if (1>3){
  "yeah"
  } else{
    "nope"
  }


ifelse(4>3,"Yeah","Nope")

vector5 <- rep(0,10)
for (i in 1:length(vector5)){
  
  vector5[i] <- 2*vector1[i]
}


proc.time()-start
start <- proc.time()
blankVector <- c()
for (step in 1:10000){
  blankVector[step] <- step
}

proc.time()-start

start <- proc.time()
blankVector <- rep(0,10000)
proc.time()-start




a<-100
b<-0
while (a>b){
  
  b<-b+1
}



apply(yourData,1,mean)

apply(yourData,2,function(x) x-2)#Apply is used for dataframes

sapply(vector1, function(x) x-2)
lapply(list1,function(x) x)


tapply(yourData$vector1, yourData$vector2, mean)

1:10 + 100:109

functionName <- function(arguments){
  code
  return(value)
  
}

yourData$vector1 <- mean(yourData$vector1 - 2)

meanMinusTwo <- function(x){
  newVector <- mean(x-2)
  return(newVector)
  
}

meanMinusTwo(vector2)
yourData2 <- apply(yourData,2,meanMinusTwo)


install.packages("ggplot2")



library(ggplot2)
