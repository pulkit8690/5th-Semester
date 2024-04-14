# Basics of R (Data Operators)
#------------------------------------------------------------------------

# 1. STRING IN R 
#------------------------------------------------------------------------
a=25

b <- "Hi how are you today?"
FALSE -> C
d=5

#--------------------------------------------------------------------------------------------
# 2. DATA OPERATORS
#--------------------------------------------------------------------------------------------

a+d
a

a*d
a/d
d^3
d^8

22 %% 7
22/7
22 %/% 7
3.8 %/% 2

e <<- 50
100 ->> f

f > e
e > f
e == f
d != e

d >= e

g=5
d >= g


X = TRUE
Y = FALSE
X & Y
X & X
Y & Y
X | Y
Y | X
Y | Y
!Y
Y


h <- 1:10
h
6 %in% h
15 %in% h


#--------------------------------------------------------------------------------------------
# 3. DATA TYPES
#--------------------------------------------------------------------------------------------

A = TRUE
B <- FALSE
C = 5
D = 5L
E = 8.5L
F = "R seems to be good!"


vtr <- c(11,22,33,44,55)
vtr1 <- c("Hi", 'Hello', "hey")
sortedvtr <- sort(vtr)
sortedvtr

sortedvtr <- sort(vtr1)
sortedvtr

vtr[2]
vtr [2:3]
vtr [-1]

vtr [3] <- 15
vtr

vtr[7] <- 15
vtr

vtr2 <- c("hi", 15, 21L, TRUE)
class (vtr2)
vtr2

list1 <- list("hey", FALSE, 54, 35L)
list1
sortedlist <- sort(list1)
list2 <- list("Hello", "Vinay", "R", 35, 1982)
list1
list2
list3 <- merge(list1, list2)
list3

list4 <- c(list1, list2)
list4
list4[5]


ctrl+l
list1 <- c(1,3,5,7)
list2 <- c("Red", "Blue", "Green")
list3 <- c(list1, list2)
list3

list4 <- list(list1, list2)
list4

ctrl+l


#--------------------------------------------------------------------------------------------
# 4. ARRAY and PRINT
#--------------------------------------------------------------------------------------------
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)

#--------------------------------------------------------------------------------------------
# 5. PRINT SELECTED ELEMENTS
#--------------------------------------------------------------------------------------------

# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")

# Print the third row of the second matrix of the array.
print(result[3,,2])

# Print the element in the 1st row and 3rd column of the 1st matrix.
print(result[1,3,1])

# Print the 2nd Matrix.
print(result[,,2])

#--------------------------------------------------------------------------------------------
# 6. ADD TWO MATRIX
#--------------------------------------------------------------------------------------------
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

# Take these vectors as input to the array.
array1 <- array(c(vector1,vector2),dim = c(3,3,2))

# Create two vectors of different lengths.
vector3 <- c(9,1,0)
vector4 <- c(6,0,11,3,14,1,2,6,9)
array2 <- array(c(vector3,vector4),dim = c(3,3,2))

# create matrices from these arrays.
matrix1 <- array1[,,2]
matrix2 <- array2[,,2]

# Add the matrices.
result <- matrix1+matrix2
print(result)

#--------------------------------------------------------------------------------------------
# 7. FACTOR
#--------------------------------------------------------------------------------------------
# Create a vector as input.
data <- c("East","West","East","North","North","East","West","West","West","East","North")

print(data)
print(is.factor(data))

# Apply the factor function.
factor_data <- factor(data)

print(factor_data)
print(is.factor(factor_data))

#--------------------------------------------------------------------------------------------
# 8. DATA FRAME
#--------------------------------------------------------------------------------------------

# Create the data frame.
  emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25)
)
# Print the data frame.			
print(emp.data) 

#--------------------------------------------------------------------------------------------
# 9. DECISION MAKING - IfElse
#--------------------------------------------------------------------------------------------

#DECISION MAKING 1
x <- 30L
if(is.integer(x)) {
   print("X is an Integer")
}


#DECISION MAKING 2
x <- c("what","is","truth")

if("truth" %in% x) {
  print("Truth is found the first time")
} else if ("truth" %in% x) {
  print("truth is found the second time")
} else {
  print("No truth found")
}

#--------------------------------------------------------------------------------------------
# 10. DECISION MAKING - SWITCH CASE 
#--------------------------------------------------------------------------------------------

vtr <- c(2,2,2,2,2)
option <- "sum"

switch(option,
       "mean" = print(mean(vtr)),
       "sum" = print(sum(vtr)),
       
       print("Invalid Option")
)



#--------------------------------------------------------------------------------------------
# 11. STRING IN R 
#--------------------------------------------------------------------------------------------


a <- 'Start and end with single quote'
print(a)

b <- "Start and end with double quotes"
print(b)

c <- "single quote ' in between double quotes"
print(c)

d <- 'Double quotes " in between single quote'
print(d)

e <- 'Mixed quotes" 
print(e)

f <- 'Single quote ' inside single quote'
print(f)

g <- "Double quotes \" inside double quotes"
print(g)


#--------------------------------------------------------------------------------------------
# 12. STRING MANIPULATION IN R 
#--------------------------------------------------------------------------------------------

a <- "Hello"
b <- 'I am'
c <- "Vinay Arora"

print(paste(a,b,c))

print(paste(a,b,c, sep = "-"))

print(paste(a,b,c, sep = "", collapse = ""))


# Total number of digits displayed. Last digit rounded off.
result <- format(23.123456789, digits = 9)
print(result)

# Display numbers in scientific notation.
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)

# The minimum number of digits to the right of the decimal point.
result <- format(23.47, nsmall = 5)
print(result)

# Format treats everything as a string.
result <- format(6)
print(result)

# Numbers are padded with blank in the beginning for width.
result <- format(13, width = 3)
print(result)

# Left justify strings.
result <- format("Hello", width = 8, justify = "l")
print(result)

# Justfy string with center.
result <- format("Hello", width = 8, justify = "r")
print(result)

#Counting the number of Characters
result <- nchar("Count the number of characters")
print(result)


#--------------------------------------------------------------------------------------------
# 13. FUNCTION(S) IN R PROGRAMMING ENVIRONMENT
#--------------------------------------------------------------------------------------------

# Create a sequence of numbers from 32 to 44.
print(seq(32,44))

# Find mean of numbers from 25 to 82.
print(mean(25:82))

# Find sum of numbers frm 41 to 68.
print(sum(41:68))

#Sequence of DATES
print(seq.date("01/01/92", "12/31/92", by = "months"))
print(seq(as.Date("2000/1/1"), by = "month", length.out = 4))

#----------------------------------------------------------------------------------------------

# Create a function to print squares of numbers in sequence.
new.function <- function(a) {
   for(i in 1:a) {
      b <- i^2
      print(b)
   }
}

# Call the function new.function supplying 6 as an argument.
new.function(6)

#----------------------------------------------------------------------------------------------

# Create a function with arguments.
new.function <- function(a,b,c) {
  result <- a * b + c
  print(result)
  }

# Call the function by position of arguments.
new.function(5,2,3)


# Call the function by names of the arguments.
new.function(b = 5, a = 2, c = 3)

#----------------------------------------------------------------------------------------------

# Create a function with default arguments.
new.function <- function(a = 3, b = 6) {
   result <- a * b
   print(result)
}

# Call the function without giving any argument.
new.function()

# Call the function with giving new values of the argument.
new.function(9,5)

#----------------------------------------------------------------------------------------------

# Create a function with default arguments.
# Without using NEW keyword.
myFirstFunction <- function(a = 3, b = 6) {
  result <- a * b
  print(result)
}

# Call the function without giving any argument.
myFirstFunction()

# Call the function with giving new values of the argument.
myFirstFunction(9,5)

#--------------------------------------------------------------------------------------------
# 14. LAZY EVALUATION IN R
#--------------------------------------------------------------------------------------------

f <- function(a, b=c) 
{
  c = mean(1:3); 
  a*b
}
print(f(3))