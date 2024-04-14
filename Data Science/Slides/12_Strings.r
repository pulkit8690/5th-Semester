#String Functions
# Valid Strings
a <- 'Start and end with single quote'
print(a)

b <- "Start and end with double quotes"
print(b)

c <- "single quote ' in between double quotes"
print(c)

d <- 'Double quotes " in between single quote'
print(d)

#Examples of Invalid Strings
e <- 'Mixed quotes" 
print(e)

f <- 'Single quote' inside single quote'
print(f)

g <- "Double quotes " inside double quotes"
print(g)
#Error: unexpected symbol in "g <- "Double quotes " inside"
#String Manipulation

#Concatenating Strings - paste() function

#Many strings in R are combined using the paste() function.
#It can take any number of arguments to be combined together.
#paste(..., sep = " ", collapse = NULL)
# Following is the description of the parameters used −
# 
# ... represents any number of arguments to be combined.
# 
# sep represents any separator between the arguments. It is optional.
# 
# collapse is used to eliminate the space in between two strings. But not the space within two words of one string.

a <- "Hello"
b <- 'How'
c <- "are you?"

print(paste(a,b,c))

print(paste(a,b,c, sep = "-"))

print(paste(a,b,c, sep = "", collapse = ""))

# Formatting numbers & strings - format() function
# Numbers and strings can be formatted to a specific style using format() function.
# 
# Syntax
# The basic syntax for format function is −

#format(x, digits, nsmall, scientific, width, justify = c("left", "right", "centre", "none"))
Following is the description of the parameters used −

# x is the vector input.
# 
# digits is the total number of digits displayed.
# # nsmall is the minimum number of digits to the right of the decimal point.
# # scientific is set to TRUE to display scientific notation.
# # width indicates the minimum width to be displayed by padding blanks in the beginning.
# # justify is the display of the string to left, right or center.
#---------------------------------------------------
# Total number of digits displayed. Last digit rounded off.

result <- format(23.123456789456, digits = 9)
print(result)

# Display numbers in scientific notation.
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)
result <- format((6), scientific = TRUE)
print(result)

# The minimum number of digits to the right of the decimal point.
result <- format(23.47, nsmall = 5)
print(result)

# Format treats everything as a string.
result <- format(6)
print(result)

# Numbers are padded with blank in the beginning for width.
result <- format(13.7, width = 6)
print(result)

# Left justify strings.
result <- format("Hello", width = 8, justify = "l")
print(result)

# Justfy string with center.
result <- format("Hello", width = 8, justify = "c")
print(result)

# Counting number of characters in a string - nchar() function

# This function counts the number of characters including spaces in a string.
# Syntax
# The basic syntax for nchar() function is −
#  nchar(x)
nchar(x, type = ”char”, allowNA = FALSE, keepNA = NA )
#  x is the vector input.

result <- nchar("Count the number of characters")
print(result)

# Changing the case - toupper() & tolower() functions
# These functions change the case of characters of a string.
# Syntax
# The basic syntax for toupper() & tolower() function is −
# toupper(x)
# tolower(x)

# Changing to Upper case.
result <- toupper("Changing To Upper")
print(result)

# Changing to lower case.
result <- tolower("Changing To Lower")
print(result)



# Extracting parts of a string - substring() function
# This function extracts parts of a String.
# Syntax
# The basic syntax for substring() function is −
# substring(x,first,last)
# Following is the description of the parameters used −
# x is the character vector input.
# first is the position of the first character to be extracted.
# last is the position of the last character to be extracted.

result <- substring("Extract", 5, 7)


# The Grep function
#"The grep() function searches for a pattern inside a given string and returns the number of instances a match is found. The following is the syntax of the grep function."
s= "This is a string of string inside a big string"
x <- c("GFG", "gfg", "Geeks", "GEEKS")
grep("string", s)
grep("gfg", x)
grep("gfg", x, ignore.case = FALSE)
grep("gfg", x, ignore.case = TRUE)
grep("gfg", x, ignore.case = TRUE,value = TRUE)

#REPLACING FIRST OCCURANCE OF A STRING sub() function
df<-"R is a collaborative project with many contributors"
#replaces the string 
sub('R','R language',df)
print(result)

#REPLACING ALL OCCURANCE
df<-("I love R. The R is a statistical analysis language")
#substituting the values using gsub()
gsub('R','R programming',df)

#WITH REGULAR EXPRESSION, ELIMINATIG ALL NUMBERS
df<-"I was born on June 5,1998"
#eliminating the numeric values
gsub('[0-9]*','',df)