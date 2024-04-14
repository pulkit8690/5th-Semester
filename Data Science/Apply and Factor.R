vec <- c(1, 2, 3, 4, 5)
result <- vapply(vec, mean, numeric(1))
print(result)

lapply(vec, sum)
sapply(vec, sum)
vapply(vec, sum, numeric(1))
vapply(vec, function(x) x + 2, numeric(2))

# Sample data: a list of numeric vectors
my_list <- list(c(1, 2, 3), c(4, 5, 6), c(7, 8, 9))

# Using vapply to calculate the mean of each vector
result <- vapply(my_list, sum, numeric(2))

# Printing the result
print(result)

# Sample data: a list of numeric vectors
my_list <- list(c(1, 2, 3), c(4, 5, 6), c(7, 8, 9))

# Using vapply to apply a function that returns a numeric vector of length 2
result <- vapply(my_list, function(x) c(mean(x), sum(x)), numeric(2))

# Printing the result
print(result)

result <- vapply(my_list, function(x) list(mean = mean(x), sum = sum(x)), list(mean = numeric(1), sum = numeric(1)))

# Sample data
values <- c(1, 2, 3, 4, 5, 6)
categories <- factor(c("A", "B", "A", "B", "A", "B"))

# Using tapply to calculate the mean for each category
result <- tapply(values, categories, mean)

# Printing the result
print(result)

class(categories)
levels(categories)
str(categories)
categories
categories[3]
categories[c(2,3)]
categories[-1]
categories[c(T,F,F,T,F,T)]
categories[1]<-"B"
categories

#Assigning new levels 
levels(categories)<-c(levels(categories),"C")
levels(categories)
categories[3]<-"C"
categories

categories<-relevel(categories,"B")

#changing levels of factor
x<-factor(c("Male","Female","Transgender"))
x
x<-relevel(x,"Female")
levels(x)

#To convert vector to Factor
y<-c("A","C","A","B","B","C")
is.factor(y)
y<-factor(y)
is.factor(y)
y

#generating factor
gl(2,4,labels = c("A","B"))

#changing order of factor or redefining a factor
z<-c("A","B","C","A","C")
z<-factor(z)
z
z<-factor(z,levels = c("C","A","B"))
z

#Labels
p<-factor(c("A","B","A","C","B"))
l<-c("High","Medium","low")
p<-factor(p)
p
p<-factor(p,levels = c("A","B","C"),labels = l)
p

#Ordered factor
d<-factor(LETTERS[1:6])
d
is.ordered(d)
d<-factor(LETTERS[1:6], ordered = T)
d
is.ordered(d)




#DATA FRAMES
df<- data.frame(
  Sno=c(1:3),
  Age=c(12,14,16),
  name=c("John","Tom","Jerry")
)
df
dim(df)
names(df)
nrow(df)
ncol(df)
length(df) # same as ncol
str(df)
df
df[,1:2]
df[1,]
df$name
typeof(df)
class(df)
class(df$name)
class(df$Sno)
edit(df)
h<-subset(df,name=="John")
h$Sno

df1 = data.frame(
  "Name" = c("Amiya", "Raj", "Asish"),
  "Language" = c("R", "Python", "Java"),
  "Age" = c(22, 25, 45)
)
df1
newDf1 = subset(df, Name =="Amiya"|Age>30)


#Formats
g<-format(4)
g
format(32.3334,nsmall=6)
format(13, width=3)
format(c(6,322.23,0.003),scientific = T)
format(2.32123,digit=4)
format("Hello",width=9,justify="l")
format("Hello",width=9,justify="r")
format("Hello",width=9,justify="c")

.0