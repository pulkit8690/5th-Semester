df<-data.frame(PatientID=c(1,2,3,4),
               AdmDate=c("2009-10-15", "2009-01-11", "2009-10-21", "2009-10-28"),
               Age=c(25,34,28,52),
               Diabetes=c("Type1","Type2","Type1","Type1"),
               Status=c("Poor","Improved","Excellent","Poor")
               )
df  


#Q2. Perform the following operation on DF.
#a. Extract PatientID and Age in Subset 1.
#b. Identify the Type1 patients from DF.
#c. Count the patient of Poor status.
#d. Print the summary of the DF.
#e. Find the average age of patient having Diabetes.
#f. Input more patient data from Keyboard.
library(dplyr)
df[c(1,3),]
s1
select(df,PatientID,Age)
subset(df,select=c("PatientID","Age"))
df["PatientID"]
subset(df,df$Diabetes=="Type1")
v1<-subset(df,df$Status=="Poor")
v1
nrow(v1)
summary(df)
v2<-select(df,Age)
v2
mean(v2$Age)
PatientID<-as.integer(readline(prompt = " ENter Id: "))
AdmDate<-as.Date(readline(prompt = " ENter Date: "))
Age<-as.integer(readline(prompt = " ENter age: "))
Diabetes<-as.character(readline(prompt = "Enter Dia"))
Status<-as.character(readline(prompt = " ENter status: "))

k<-data.frame(PatientID,AdmDate,Age,Diabetes,Status)
k
rbind(df,k)


#Q3. Create a list named MyList having title “My First List” and criteria having following items:
 # a. Age vector a = (12, 14,16, 20)
#b. A two dimensional matrix with 5 rows.
#c. A score vector with values s = („First‟, „Second‟, „Third‟)
#Print MyList, criteria, and vector a.
age<-c(12,14,16,20)
m1<-matrix(1:5,nrow=5)

s <- c("First", "Second", "hird")
M<-list(age,m1,s)
M
MyList <- list(
  title = "My First List",
  criteria = list(
    a = c(12, 14, 16, 20),
    matrix = matrix(1:5, nrow = 5),
    s = c("First", "Second", "Third")
  )
)
MyList
