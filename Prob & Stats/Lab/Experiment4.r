#Q1
x <- c(0:4)
p_x <- c(0.41, 0.37, 0.16, 0.05, 0.01)
sum(x * p_x)
weighted.mean(x, p_x)
c(x %*% p_x)

#Q2
func <- function(t) {
  t * 0.1 * 2.71 ^ (-0.1 * t)
}
integrate(func, 0, Inf)$value

#Q3
x <- c(0:3) 
p <- c(0.1, 0.2, 0.2, 0.5) 
a <- sum(x*p) 
b <- 10*a-12 
b

#Q4
func2 <- function(t) {
  t * 0.5 * exp(-t)
}
mean_value <- integrate(func2, 1, 10)$value
mean_value
func3 <- function(t) {
  t^2 * 0.5 * exp(-t)
}
sec_moment <- integrate(func3, 1, 10)$value
sec_moment
vari <- sec_moment - (mean_value^2)
vari

#Q5
f5 <- function(y) { 
  (3/4)*((1/4)^((y^(1/2))-1)) 
} 
x <- 3 
y <- x^2 
f5(y) 
x <- c(1:5) 
y <- x^2 
mean <- sum(y*f5(y)) 
mean 
var <- sum(y*y*f5(y)) - mean*mean 
var 
