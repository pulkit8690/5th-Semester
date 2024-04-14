choice<-c(rep('Gold',20),rep('Silver',30),rep('Bronze',50))
choice
ss<-sample(choice,10,replace=FALSE)
ss


prob_success <- 0.9
prob_failure <- 0.1
sample_space <- sample(c("Success", "Failure"), 10, replace =TRUE, prob = c(prob_success, prob_failure))
sample_space



pbirthday(150, classes = 365, coincident = 2)
qbirthday(prob = 0.5, classes = 365, coincident = 2)




conditional_probability <- function(prob_A, prob_B_given_A, prob_B) {
  prob_A_given_B <- (prob_A * prob_B_given_A) / prob_B
  
  return(prob_A_given_B)
}
prob_cloudy <- 0.4
prob_rain <- 0.2
prob_cloudy_given_rain <- 0.85
prob_rain_given_cloudy <- conditional_probability(prob_rain, prob_cloudy_given_rain, prob_cloudy)
cat("Probability of rain given it's cloudy:", prob_rain_given_cloudy, "\n")





df<-data.frame(iris)
df
head(df)
str(df)
# Find the range of sepal length
range(iris$Sepal.Length)
# Find the mean of sepal length
mean(iris$Sepal.Length)
# Find the median of sepal length
median(iris$Sepal.Length)
# Find the quartiles and interquartile range of sepal length
quantile(iris$Sepal.Length, c(0.25, 0.75))
IQR(iris$Sepal.Length)
# Find the standard deviation and variance of sepal length
sd(iris$Sepal.Length)
var(iris$Sepal.Length)


# Find the range of sepal Width
range(iris$Sepal.Width)
# Find the mean of sepal Width
mean(iris$Sepal.Width)
# Find the median of sepal Width
median(iris$Sepal.Width)
# Find the quartiles and interquartile range of sepal Width
quantile(iris$Sepal.Width, c(0.25, 0.75))
IQR(iris$Sepal.Width)
# Find the standard deviation and variance of sepal Width
sd(iris$Sepal.Width)
var(iris$Sepal.Width)


# Find the range of petal length
range(iris$Petal.Length)
# Find the mean of petal length
mean(iris$Petal.Length)
# Find the median of petal length
median(iris$Petal.Length)
# Find the quartiles and interquartile range of petal length
quantile(iris$Petal.Length, c(0.25, 0.75))
IQR(iris$Petal.Length)
# Find the standard deviation and variance of petal length
sd(iris$Petal.Length)
var(iris$Petal.Length)

summary(df)

data <- c(1,1,2,2,2,3,3,4,4,5,5,5,5)
cal_mode <- function(vec)
{
  f_table<-table(vec)
  max_freq<-max(f_table)
  mode_value<-as.numeric(names(f_table[f_table==max_freq]))
  return (mode_value)
}
cal_mode(data)
