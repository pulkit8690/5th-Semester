#Question 1

# Wordcount program in R to tokenize

# Function to trim leading and trailing whitespaces
trimWhiteSpace <- function(line) gsub("(^ +)|( +$)", "", line)

# Function to split a line into words
splitIntoWords <- function(line) unlist(strsplit(line, "[[:space:]]+"))

# Sample input line
line <- "This is a demo program for R. Map Reduce is demo in R."

# Preprocess the input line
line <- trimWhiteSpace(line)
words <- splitIntoWords(line)

# Emit each word with count 1
for (w in words)
  cat(w, "\t1\n", sep = "")



#Question 2

# Wordcount program in R to count the occurrence

l=length(words)
env <- new.env(hash = TRUE) 
count <- 1 
for( w in words) 
{ 
  word <- w 
  if (exists(word, envir = env, inherits = FALSE)) { 
    oldcount <- get(word, envir = env) 
    assign(word, oldcount + count, envir = env) 
  } 
  else assign(word, count, envir = env) 
  l=l+1 
} 



for (w in ls(env, all = TRUE)) 
  cat(w, "\t", get(w, envir = env), "\n", sep = "")





#Question 3


# Read the contents of the text file
file_path <- "C:/Users/ExtremePc/Documents/Order.txt"

# Check if the file exists
if (file.exists(file_path)) {
  # Read lines from the file
  orders <- readLines(file_path)
  
  # Initialize environment for word count
  env <- new.env(hash = TRUE)
  count<-1
  # Process each order
  for (order in orders) {
    # Assuming the order structure is comma-separated and the product is in the first column
    product <- trimWhiteSpace(splitIntoWords(order)[1])
    
    # Check if the product already exists in the environment
    if (exists(product, envir = env, inherits = FALSE)) {
      oldcount <- get(product, envir = env)
      assign(product, oldcount + count, envir = env)
    } else {
      # If the product is encountered for the first time, initialize count to 1
      assign(product, count, envir = env)
    }
  }
  
  # Output word counts
  cat("Product\tCount\n")
  for (product in ls(env, all = TRUE))
    cat(product, "\t", get(product, envir = env), "\n", sep = "")
} else {
  cat("File not found:", file_path, "\n")
}

