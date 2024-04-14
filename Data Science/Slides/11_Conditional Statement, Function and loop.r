#CONTROL FLOW IN r
#***************************************************

x<-5.5
y<-"Hello"

if(is.numeric(x))
{
  print("X is numeric")
}

#if 
x <-5  
if(x%%2==0){  
  cat(x," is an even number")  
}  
if(x%%2!=0){  
  cat(x," is an odd number")  
} 


#If else
x <- c("Hardwork","is","the","key","of","success")  
y="is"
if(y %in% x) {    
  print("key is found")  
} else {  
  print("key is not found")  
}  


#switch
#syntax switch(expression, case1, case2, case3....)
#Program 1
x <- switch(
  4, 
  "first", 
  "second", 
  "third", 
  "fourth" ) 
print(x)


#Program 2: Mathematical calculation
val1 = 6  
val2 = 7
val3 = "s"  
result = switch(  
  val3,  
  "a"= cat("Addition =", val1 + val2),  
  "d"= cat("Subtraction =", val1 - val2),  
  "r"= cat("Division = ", val1 / val2),  
  "s"= cat("Multiplication =", val1 * val2),
  "m"= cat("Modulus =", val1 %% val2),
  "p"= cat("Power =", val1 ^ val2)
)  

print(result)  


#LOOPING IN r
#****************************************************
#for loop
v <- LETTERS[1:4]
for ( i in v) {
  print(i)
}

#While loop
v <- c("Hello Students","while loop")
count1 <- 2

while (count1 < 5) {
  print(v)
  count1 = count1 + 1
}


#repeat loop
v <- c("Hello","loop")
count2 <- 2

repeat {
  print(v)
  count2 <- count2+1
  
  if(count2 > 5) {
    break
  }
}



#SEQUENCING IN r
#****************************************************
seq(from=1,to=10)


seq(-1,-10)


seq(5.5,8)

seq(from=1,to=30,by=3)

seq(1,30,2)

seq.int(from=1,to=30, length.out=10)

y<-c(1,5,15,20)
seq(10,25,along.with = y)

seq_len(10)


#FUNCTIONS IN r
#*****************************************************************
# Create a function to print squares of numbers in sequence.
new.function <- function(a) {
  for(i in 1:a) {
    b <- i^2
    print(b)
  }
}


# Call the function new.function supplying 6 as an argument.
new.function(6)

# Create a function without an argument.
new.function1 <- function() {
  for(i in 1:5) {
    print(i^2)
  }
}	

# Call the function without supplying an argument.
new.function1()


#Calling a Function with Argument Values (by position and by name)

new.function <- function(a,b,c) {
  result <- a * b + c
  print(result)
}

# Call the function by position of arguments.
new.function(5,3,11)

# Call the function by names of the arguments.
new.function(a = 11, b = 5, c = 3)




#Calling a Function with Default Argument
# Create a function with arguments.
new.function <- function(a = 3, b = 6) {
  result <- a * b
  print(result)
}

# Call the function without giving any argument.
new.function()

# Call the function with giving new values of the argument.
new.function(9,5)