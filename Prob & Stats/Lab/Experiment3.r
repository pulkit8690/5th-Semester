#Q1
p <- pbinom(9, size = 12, prob = 1 / 6) - pbinom(6, size = 12, prob = 1 / 6)
p

#Q2
b <- pnorm(84, 72, 15.2, lower.tail = FALSE)
b

#Q3
x <- dpois(0, lambda = 5)
x
y <- ppois(50, lambda = 50) - ppois(47, lambda = 50)
y

#Q4
a <- dhyper(3, 17, 233, 5)
a

#Q5
x <- 0:31
z <- dbinom(x, 31, 0.447)
y <- pbinom(x, 31, 0.447)
plot(x, z)
plot(x, y)
n <- 31
prob <- 0.447
mean <- n * prob
var <- n * prob * (1 - prob)
sd <- sqrt(var)
mean
var
sd
