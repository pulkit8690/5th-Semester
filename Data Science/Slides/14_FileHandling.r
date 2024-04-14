#Note-Keep your data file in working directory
getwd() #to get path of working directory
setwd("C:/TIET/TIET_CSED/2022-23/Sem1/Data Science_UCS538/Lab")

setwd("C:/Users/Lenovo/Documents")

#create directory
dir.create("Test")

# List files
list.files()

#create file
file.create("abc.txt")
file.create("abc.csv")

# Write dataset
# into the txt file
write.table(x = data[1:10, ], 
            file = "abc.txt")

read.table("abc.txt")


#CSV files
data<-read.csv("ds_salaries.csv")

#you can import data using files menu-->import datasets also 
#or from file window also select required file then it ask to import

#By default the read.csv() function gives the output as a data frame
print(is.data.frame(data))

#check the number of columns and rows
print(ncol(data))
print(nrow(data))

# Get the max salary from data frame.
sal <- max(data$salary)
print(sal)

# Get the person detail having max salary.
retval <- subset(data, salary == max(salary))
print(retval)

#Get information of job roles in large companies
retval <- subset( data, company_size == "L")
print(retval)


#Get information of getting salary in INR, work year is 2021 and working in large company
#use third argument select to return desired columns 
info <- subset(data, salary_currency == "INR" & work_year==2021 & company_size == "L", X)
print(info)

# Write filtered data into a new file.
write.csv(retval,"output.csv")
newdata <- read.csv("output.csv")
print(newdata)

# Rename file
file.rename("abc.txt", "subset1.txt")

#check whether file exist
file.exists("abc.txt")
file.exists("subset1.txt")


# Reading txt file
new.data <- read.table(file = "subset1.txt")
print(new.data)

#list all files
list.files()

# Copying
file.copy("C:/Users/Lenovo/Documents/subset1.txt", "C:/TIET/TIET_CSED/2022-23/Sem1/Data Science_UCS538/Lab")

# List the files in E:/ drive
list.files("C:/TIET/TIET_CSED/2022-23/Sem1/Data Science_UCS538/Lab")