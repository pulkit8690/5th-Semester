#apply family of functions
#Apply functions are a family of functions in base R which allow you to repetitively
#perform an action on multiple chunks of data. An apply function is essentially a loop, 
#but run faster than loops and #often require less code.

# Syntax: apply(X, MARGIN, FUN).

#X is an array or matrix (this is the data that you will be performing the function on)
#Margin specifies whether you want to apply the function across rows (1) or columns (2)
#FUN is the function you want to use

#Example 1
my.matrx <- matrix(c(1:10, 11:20, 21:30), nrow = 10, ncol = 3)
my.matrx

apply(my.matrx, 1, sum)
apply(my.matrx, 2, length)
apply(my.matrx, 2, function (x) length(x)-1)

#Example 2: Function outside apply()
st.err <- function(x){
  sd(x)/sqrt(length(x))
}
apply(my.matrx,2, st.err)

#Example 3:  to repeat a function on cells within a matrix. 
my.matrx2 <- apply(my.matrx,c(1,2), function(x) x+3)  
#OR
my.matrx2 <- apply(my.matrx,1:2, function(x) x+3)
my.matrx2

#Example 4: Looping through the vector
vec <- c(1:10)
vec
apply(vec, 1, sum)    # error, the input should be a 2D matrix

#lapply, sapply, and vapply: to work on list or vector 
lapply(vec, sum)

#Example 1
A<-c(1:9)
B<-c(1:12)
C<-c(1:15)
my.lst<-list(A,B,C)
lapply(my.lst, sum)
#sapply(): sapply works just like lapply, but will simplify the output if possible. 
#This means that instead of returning a list like lapply, it will return a vector 


sapply(vec, sum)
sapply(my.lst, sum)

#vapply():  requires you to specify what type of data you are expecting the arguments
vapply(vec, sum, numeric(1))
vapply(my.lst, sum, numeric(1))
vapply(my.lst, function(x) x+2, numeric(1))  #error, can not return more than one value



#sapply() can be used for this error
my.lst2 <- sapply(my.lst, function(x) x*2)
my.lst2

#tapply(): Sometimes you may want to perform the apply function on some data, 
#but have it separated by factor. In that case, you should use tapply. 
#Let's take a look at the information for tapply.

#Example 1: Means split by condition
tdata <- as.data.frame(cbind(c(1,1,1,1,1,2,2,2,2,2), my.matrx))
colnames(tdata)

#Example 1
#Now let's use column 1 as the index and find the mean of column 2
tapply(tdata$V2, tdata$V1, mean)

#Example 2: Combining functions
#a function that returns a vector ofboth the mean and standard deviation
summary <- tapply(tdata$V2, tdata$V1, function(x) c(mean(x), sd(x)))
summary


#mapply() function
#First you list the function, followed by the vectors you are using the rest 
#of the arguments have default values so they don't need to be changed for now. 
#When you have a function that takes 2 arguments, the first vector goes into the 
#first argument and the second vector goes into the second argument.

#Example 1: 1:9 is specifying the value to repeat, and 9:1 is specifying how many times to repeat.
mapply(rep, 1:9, 9:1)

#Example 2: Creating a new variable
tdata$V5 <- mapply(function(x, y) x/y, tdata$V2, tdata$V4)
tdata$V5


#Example 3: Saving data into a premade vector
new.vec <- vector(mode = "numeric", length = 10)
new.vec <- mapply(function(x, y) x*y, tdata$V3, tdata$V4)
new.vec
