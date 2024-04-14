# Q1
v1 = c(5,10,15,20,25,30)
print("The vector is: ")
print(v1)
print(paste("Maximum value of vector is: ",max(v1)))
print(paste("Minimum value of vector is: ",min(v1)))

# Q2
num = as.integer(readline(prompt="Enter the number: "))
factorial = 1
if(num < 0) {
  print("Factorial doesn't exist for negative numbers.")
} else if(num == 0) {
  print("Factorial of 0 is 1.")
} else {
  for(i in 1:num){
    factorial = factorial * i
  }
  print(paste("The factorial of",num, "is", factorial))
}

# Q3
fibonacci <- function(n) {
  a <- 0
  b <- 1
  
  cat("Fibonacci Sequence:")
  for (i in 1:n) {
    cat(a, " ")
    next_num <- a + b
    a <- b
    b <- next_num
  }
}
number_of_terms = as.integer(readline(prompt="Enter the number: "))
fibonacci(number_of_terms)

# Q4
add <- function(x, y) {
  return(x + y)
}
subtract <- function(x, y) {
  return(x - y)
}
multiply <- function(x, y) {
  return(x * y)
}
divide <- function(x, y) {
  return(x / y)
}

print("Select operation.")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
choice = as.integer(readline(prompt="Enter choice[1/2/3/4]: "))
num1 = as.integer(readline(prompt="Enter first number: "))
num2 = as.integer(readline(prompt="Enter second number: "))
operator <- switch(choice,"+","-","*","/")
result <- switch(choice, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2))
print(paste(num1, operator, num2, "=", result))

# Q5
x <- c(1, 2, 3, 4, 5)
y <- c(3, 5, 4, 6, 7)
plot(x, y, main = "Scatter Plot ", xlab = "X-axis", ylab = "Y-axis")

categories <- c("Category A", "Category B", "Category C")
values <- c(30, 45, 25)
pie(values, labels = categories, main = "Pie Chart Example")


categories <- c("Category A", "Category B", "Category C")
values <- c(30, 45, 25)
barplot(values, names.arg = categories, main = "Bar Plot Example", xlab = "Categories", ylab = "Values")

