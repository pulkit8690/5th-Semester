#WORKING WITH MATRICES
#MATRIX() FUNCTION
#****************************************************************

matrix(data = 1:6, nrow = 2, ncol = 3)


#By convention the matrix is filled by column. The default behavior can be changed with the byrow
#parameter as shown below:

matrix(data = 1:6, nrow = 2, ncol = 3, byrow = TRUE)


#vector can be transformed into a matrix. For example:
matrix(data = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), nrow = 3, ncol = 2)
matrix(data = c("a", "b", "c", "d", "e", "f"), nrow = 3, ncol = 2)

#The rows and columns of a matrix can have names. You can look at these 
#using the functions rownames and colnames.

mat1 <- matrix(data = 1:6, nrow = 2, ncol = 3, byrow = TRUE)
rownames(mat1)      #INITIALLY NO ROWNAMES
colnames(mat1)      #INITIALLY NO COLUMN NAMES
rownames(mat1) <- c("Row 1", "Row 2")                   #ASSIGNING ROW NAME
colnames(mat1) <- c("Col 1", "Col 2", "Col 3")          #ASSIGNING COLUMN NAME
mat1
mat1["Row 1","Col 1"]
mat1["Row 1",]
mat1[,"Col 1"]

#****************************************************************************
#LIST INTRODUCTION
#***************************************************************************
l1 <- list(c(1, 2, 3), c("a", "b", "c"))

#List names are accessed by the names function
names(l1)          #NO INITIAL NAME OF LIST
names(l1) <- c("vector1", "vector2")
l1

#ANOTHER EXAMPLE
l2 <- list(vec = c(1, 3, 5, 7, 9), mat = matrix(data = c(1, 2, 3), nrow = 3))
l2
names(l2)      #NAME OF THE VECTOR


#DATA FRAMES IN R
#****************************************************************************
#A data.frame is a special kind of list: it is rectangular. Each element (column) of the list has same length, and where
#each row has a "row name". Each column has its own class, but the class of one column can be different from the
#class of another column (unlike a matrix, where all elements must have the same class).
#***************************************************************************
patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")

patientdata <- data.frame(patientID, age, diabetes, status)
patientdata                       # PRINTING THE DATA FRAME


#SUBSETTING DATA FRAME
patientdata[1:2]
patientdata[3]
patientdata[c("diabetes", "status")]

#PARTICULAR ELEMENT OF DATA FRAME BY $
patientdata$age


#TABULATING DATA BASED ON KEY - CLASSIFICATION
table(patientdata$diabetes, patientdata$status)



#USE OF ATTACH, DETECH AND WITH FUNCTIONS
#EXAMPLE WITHOUT ATTACH
summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)
plot(mtcars$mpg, mtcars$wt)

#USING ATTACH FUNCTION
attach(mtcars)
   summary(mpg)
   plot(mpg, disp)
   plot(mpg, wt)
detach(mtcars)

#The limitations with this approach are evident when more than one object can have
#the same name. Consider the following code
mpg <- c(25, 36, 47)    #MPG IS ALREADY A FIELD IN MTCARS DATASET
attach(mtcars)
  plot(mpg, wt)
detach(mtcars)
mpg
  
#USE THE WITH FUNCTION TO AVOID THE ABOVE ERROR
with(mtcars, {
  summary(mpg, disp, wt)
  plot(mpg, disp)
  plot(mpg, wt)
})



#USE OF SPLIT() FUNCTION TO SPLIT ON A FEATURE
#***************************************************************
spl <- split(mtcars, mtcars$cyl)

#USE OF LAPPLY() TO FIND CARS WITH THE BEST 2 MPG VALUES
best2 <- lapply(spl, function(x) tail(x[order(x$mpg),], 2))

#we can combine everything together using rbind. We want to call rbind(best2[["4"]], best2[["6"]],
#best2[["8"]])
do.call(rbind, best2)


#FACTORS IN R
#Factors are one way to represent categorical variables in R. 
#A factor is stored internally as a vector of integers. 
#The unique elements of the supplied character vector are known as the levels 
#of the factor.
#EXAMPLE 1
charvar <- rep(c("n", "c"), each = 3)
f <- factor(charvar)
f
levels(f)

#EXAMPLE 2
diabetes <- c("Type1", "Type2", "Type1", "Type1")
diabetes <- factor(diabetes)
diabetes


#CHANGING THE ORDER OF THE LEVELS
levels(factor(charvar, levels = c("n","c")))


#ASSIGNING LABELS TO LEVELS
f <- factor(charvar, levels=c("n", "c"), labels=c("New", "Capy"))

#ORDERING THE VALUE IN FACTORS
Weekdays <- factor(c("Monday", "Wednesday", "Thursday", "Tuesday", "Friday", "Sunday", "Saturday"))
Weekdays

Weekdays <- factor(Weekdays, levels=c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday","Saturday", "Sunday"), ordered=TRUE)
Weekdays



#DROPPING A LEVEL IN FACTORS
Weekend <- subset(Weekdays, Weekdays == "Saturday" | Weekdays == "Sunday")
Weekend
Weekend <- droplevels(Weekend)
Weekend



#CHANGING THE ORDERING OF THE FACTORS
#BY DEFAULT THE FACTORS ARE ORDERED ALPHABATICALLY
charvar <- rep(c("W", "n", "c"), times=c(17,20,14))
f <- factor(charvar)
levels(f)

#RECREATING THE FACTOR USING LEVELS() PARAMETER
ff <- factor(charvar, levels = c("n", "W", "c"))
levels(ff)

#OR
gg <- factor(charvar, levels = c("W", "c", "n"))
levels(gg)


#When there is a quantitative variable related to the factor variable, 
#we could use other functions to reorder the levels.
miris <- iris #help("iris") # copy the data
miris$Species.o<-with(miris,reorder(Species,-Sepal.Width))
levels(miris$Species.o)