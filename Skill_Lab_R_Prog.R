# @title Demo
print("Hello World")
print(5+6+7+8)
a<-10
b=20  # assignment operator
print(a+b)
# print() is used for general-purpose printing in R, automatically formatting output and adding a newline,
# cat() is used for more controlled printing, concatenating its arguments with spaces by default and not automatically adding a newline

# @title Variable Declaration
10->a  # rightward declaration
b<-20  # leftward declaration
cat(a,"\n",b) # concatenate and print its arguments , cannot be used in iterable func
A <-B <-C <-D <- 'RVCE'  # multi-variable declaration
cat('\n',A,B,C,D,'\n')
print(paste0("Welcome to ",A))  # paste0 no space

# @title For Loop
for(x in 1:5)
print(x)     # need to use print in loops

# @title Variable Types
# Variable names must begin with a letter (uppercase or lowercase) or a dot (.). They can't start with a digit or an underscore.
# R Numbers - Integer, Numeric, Comple
a = TRUE  # boolean
class(a)
typeof(a)
ab = T    # T or F can also work
class(ab)
b = 45    # Numeric / Double
class(b)
typeof(b)
c = 10L   # Integer
class(c)
typeof(c)
d = 13.4  # Double
class(d)
typeof(d)
e = "a"   # Character
class(e)
typeof(e)

# @title Type-casting
x <- 1L # Integer
y <- 2 # Numeric
a <- as.numeric(x)
b <- as.integer(y)
cat(a, b, typeof(a), typeof(b))

# @title Raw Data Type
char_string <- "Welcome to RVCE!"
raw_code <- as.raw(charToRaw(char_string))  # Raw binary data
print(raw_code)
print(rawToBits(raw_code))
print(rawToChar(raw_code))

# @title Vectors
numbers <- c(3, 6, 9, 12, 15)  # c combines arguments together
mean_value <- mean(numbers)
print(mean_value)

vec1 <- c(4, 15, 19)
vec2 <- c(10, 100, 20)
vec3 <- c(vec1,vec2)
vec3

# @title List and Remove
ls()  # list all variables defined till now
print(ls(pattern = 'vec'))  # all.names = TRUE to print variables starting with dot
rm(ab) # delete variable
rm(list = ls()) # delete all variables
ls()

# @title Vectors
numbers1 <- 1:10
numbers1
numbers2 <- as.numeric(1.0:5.3)
numbers2
numbers3 <- as.numeric(1.2:4.2)
numbers3
numbers4 <- seq(1, 5.3, by = 0.1)
numbers4
length(numbers1)
length(numbers2)
length(numbers3)
length(numbers4)

# @title Length
name = c("Apple", "Orange", "Mango", NA)
length(name)-length(is.null(name))
length(na.omit(name))   # Omit null values

# @title Accessing vectors in R
vec <- c(4, 15, 19)
vec[3]  # indexing starts from 1
vec[c(1, 3)]
vec[1:3]
vec[-2]  # access all elements except the second element

# @title Sorting
x <- c(10, 5, 15, 20, 3)
sort(x)
fruits <- c("mango", "banana", "apple", "orange", "grapes")
sort(fruits)
sort(x, T)

# @title Repeating Vectors
rep(c(1,2,3), each = 3)
rep(c(1,2,3), times = 3)
rep(c(1,2,3), times = c(4,5,6))
rep(c(1,2,3), c(4,5,6))
rep(c(1,2,3), 4)

# @title Naming vectors
x <- c(1, 2, 3, 4, 5)
names(x) <- c("a", "b", "c", "d", "e")
x

# @title Vector Maths
vec1 <- c(4, 15, 19)
vec2 <- c(10, 100, 20)
vec1 + vec2  # Addition
vec1 - vec2  # Subtraction
vec1 * vec2  # Multiplication
vec1 / vec2  # Division
vec1 ** vec2 # Exponentiation

# @title List
my_list <- list("apple", 10, TRUE)
my_list

my_list[2]  # Access the second element
length(my_list)

"apple" %in% my_list  # Check if elemnt is present in list

my_list = append(my_list, "orange", after = 2)  # Adding at speciic position
my_list

my_list[2] <- NULL  # Remove the second element
my_list

# @title Joining List
list1 <- list("apple", "banana", "mango")
list2 <- list("orange", "grapes", "papaya")
list3 <- list(1,2,3)
combined_list <- c(list1, list2, list3)
combined_list

# @title Fibonacci using List
fib <- list(0, 1)
for (i in 3:10) {
  num <- fib[[i-1]] + fib[[i-2]]
  fib = c(fib , num)
}
fib

# @title Matrix
mat <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3 , ncol = 3)  # Create a matrix
print(mat)

cat("\n")
mat[2,1] # Accesing element
mat[2,]  # Accesing entire row
mat[,2]  # Accessing entire column
cat("\n")
mat[2:3,2:3] # Accessing sub-Matrix
cat("\n")

rows <- c("row1", "row2", "row3")
cols <- c("col1", "col2")
matrix(c(1, 2, 3, 4, 5, 6), nrow = 3, ncol = 2, byrow = T, dimnames = list(rows, cols))  # Create a matrix filling row wise , byrow = False -> Tranpose

# @title Matrix Using Vectors
vec1 <- c(1, 2, 3)
vec2 <- c(4, 5, 6)
vec3 <- c(7, 8, 9)

# Rbind
matrix_rbind <- rbind(vec1, vec2, vec3)
matrix_rbind
cat("\n")

# Cbind
matrix_cbind <- cbind(vec1, vec2, vec3)
matrix_cbind
cat("\n")

vec <- 1:9
dim(vec) <- c(3,3)
print(vec)

# @title Matrix Operations
matrix1 <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
matrix2 <- matrix(c(5, 6, 7, 8), nrow = 2, ncol = 2)

matrix1 + matrix2  # Addition
cat("\n")
matrix1 - matrix2  # Subtraction
cat("\n")
matrix1 * matrix2  # Multiplication
cat("\n")
matrix1 / matrix2  # Division
cat("\n")
matrix1 ** matrix2 # Exponentiation
cat("\n")

cat("Determinant", "\n")
det(matrix1) # Determinant
cat("Inverse", "\n")
solve(matrix1) # Inverse
cat("Transpose", "\n")
t(matrix1) # Transpose

# @title Combining Matrix Using rbind/cbind
matrix1 <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
matrix2 <- matrix(c(5, 6, 7, 8), nrow = 2, ncol = 2)
matrix3 <- matrix(c(4, 5, 0, 9), nrow = 2, ncol = 2)

# Rbind
matrix_rbind <- rbind(matrix1, matrix2, matrix3)
# Cbind
matrix_cbind <- cbind(matrix1, matrix2, matrix3)

matrix_rbind
cat("\n")
matrix_cbind

# @title Applying Funcion to Matrix Rows/Columns
matrix1 <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16), nrow = 4, ncol = 4)
print(matrix1)

# Row = 1, Columns = 2
row_sums <- apply(matrix1, 1, sum)
col_sums <- apply(matrix1, 2, sum)
col_means <- apply(matrix1, 2, mean)
row_means <- apply(matrix1, 1, mean)

cat("\n")
print(row_sums)
cat("\n")
print(row_means)
cat("\n")
print(col_means)
cat("\n")
print(col_sums)

# @title Array
arr <- array(c(1, 2, 3, 4, 5, 6, 7, 8), dim = c(2, 2, 3)) # Array is a multidimensional
print(arr)
cat("\n")
array(c(1, 2, 3, 4, 5, 6), dim = c(2, 3, 1))  # Create an array with dimension 2*3*1
cat("\n")

arr[1, , ]  # Accessing all elements of first row
arr[, 1, ]  # Accessing all elements of first column
arr[, , 2]  # Accessing all elements of second layer

# @title Applying Functions to Array
arr <- array(c(1, 2, 3, 4, 5, 6, 7, 8), dim = c(2, 2, 3))
print(arr)

apply(arr, c(1, 2, 3), function(x) x + 1)
# Row = 1, Column = 2, Layers = 3
apply(arr, 1, sum)
apply(arr, 2, mean)
apply(arr, 3, max)

# @title Factors
factor_var <- factor(c("A", "B", "C", "A", "B", "C"), levels = c("A", "B", "C"))
print(factor_var)
levels(factor_var)
factor_var <- droplevels(factor_var) # drop unused levels
print(factor_var)

# @title DataFrame
student_data <- data.frame(
  student_name = c("Mayur", "Garv", "Bhanu", "Vinayaka"),
  student_id = c(52, 34, 49, 23),
  marks = c(51, 49, 48, 50)
)
print(student_data)

# @title Access values of DataFrame
print(student_data$student_name) # output in form of vectors , row-wise
cat("\n")
print(student_data[["student_name"]]) # output in form of vectors , row-wise
cat("\n")
print(student_data["student_name"]) # output column-wise
cat("\n")
print(student_data[2, 2])
cat("\n")
print(student_data[c(1, 3), c("student_name", "marks")])

# @title Combining DataFrames
data1 <- c("Ahibruth", 11, 48)

data2 <- data.frame(
  address = c("Bangalore", "Assam", "YGR", "Bellari")
)

# Row-wise
 rbind(student_data , data1)
# Column-wise
cbind(student_data , data2)

# @title Assignment : Level 1

# Question 1: Variable Assignment
# Assign the value 10 to a variable named x and then print the value of x.
x <- 10
print(x)
cat("\n")

# Question 2: Arithmetic Operations
# Create two variables a and b, assign them the values 5 and 3 respectively.
# Calculate the sum, difference, product, and quotient of these variables.
a <- 5
b <- 3
sum <- a + b
difference <- a - b
product <- a * b
quotient <- a / b
print(sum)
print(difference)
print(product)
print(quotient)
cat("\n")

# Question 3: Updating Variable Value
# Assign the value 7 to a variable y. Update the value of y to be its current value multiplied by 2.
y <- 7
y <- y * 2
print(y)
cat("\n")

# Question 4: Variable Types
# Create three variables: num with a numeric value 20, char with a character value "Hello", and bool with a logical value TRUE. Print the type of each variable.
num <- 20
char <- "Hello"
bool <- TRUE
print(class(num))
print(class(char))
print(class(bool))
cat("\n")

# Question 5: Variable Reassignment
# Assign the value 15 to a variable z. Reassign z to a character value "New Value". Print the value and type of z.
z <- 15
z <- "New Value"
print(z)
print(typeof(z))
cat("\n")

# Question 6: Logical Operations
# Create two variables p and q with values TRUE and FALSE respectively. Calculate the logical AND and logical OR of these variables and print the results.
p <- TRUE
q <- FALSE
logical_and <- p & q
logical_or <- p | q
print(logical_and)
print(logical_or)
cat("\n")

# Question 7: Concatenating Strings
# Create two variables first_name and last_name with values "John" and "Doe" respectively. Concatenate these two variables to form a full name and print it.
first_name <- "John"
last_name <- "Doe"
full_name <- cat(first_name, last_name)
print(full_name)
cat("\n")

# Question 8: Length of a Variable
# Create a variable vec with values 1, 2, 3, 4, 5. Find and print the length of this variable.
vec <- c(1, 2, 3, 4, 5)
print(length(vec))
cat("\n")

# Question 9: Variable with NA Value
# Create a variable data with values 5, NA, 8, NA, 12. Count and print the number of NA values in the variable.
data <- c(5, NA, 8, NA, 12)
na_count <- sum(is.na(data))
print(na_count)
cat("\n")

# Question 10: Subsetting Variables
# Create a variable numbers with values 10, 20, 30, 40, 50. Extract and print the third element from this variable.
numbers <- c(10, 20, 30, 40, 50)
third_element <- numbers[3]
print(third_element)

# @title Assignment : Level 2

# Question 1: Conditional Variable Assignment
# Create a variable temperature and assign it a value of 25. Write a conditional statement that assigns a new variable weather with the value "Hot" if temperature is greater than 30, "Warm" if temperature is between 20 and 30 (inclusive), and "Cold" if temperature is less than 20. Print the value of weather.
temperature <- 25
if (temperature > 30) {
  weather <- "Hot"
} else if (temperature >= 20 && temperature <= 30) {
  weather <- "Warm"
} else {
  weather <- "Cold"
}
print(weather)
cat("\n")

# Question 2: Vectorized Operations
# Create a numeric vector v with values 2, 4, 6, 8, 10. Multiply each element of the vector by 3 and then subtract 5 from each element. Print the resulting vector.
v <- c(2, 4, 6, 8, 10)
result <- (v * 3) - 5
print(result)
cat("\n")

# Question 3: Data Frame Manipulation
# Create a data frame df with columns name (values: "Alice", "Bob", "Charlie"), age (values: 25, 30, 35), and salary (values: 50000, 60000, 70000). Add a new column bonus which is 10% of the salary. Print the updated data frame.
df <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  age = c(25, 30, 35),
  salary = c(50000, 60000, 70000)
)
df$bonus <- df$salary * 0.10
print(df)
cat("\n")

# Question 4: Handling Missing Values
# Create a vector data with values 1, 2, NA, 4, 5, NA, 7. Replace all NA values with the mean of the non-NA values in the vector. Print the resulting vector.
data <- c(1, 2, NA, 4, 5, NA, 7)
mean_value <- mean(data, na.rm = TRUE)
data[is.na(data)] <- mean_value
print(data)
cat("\n")

# Question 5: List Operations
# Create a list my_list with elements: a numeric vector c(1, 2, 3), a character vector c("a", "b", "c"), and a logical vector c(TRUE, FALSE, TRUE). Add a new element to the list which is a matrix matrix(1:9, nrow = 3). Print the updated list.
my_list <- list(
  numeric_vector = c(1, 2, 3),
  character_vector = c("a", "b", "c"),
  logical_vector = c(TRUE, FALSE, TRUE)
)
my_list$matrix <- matrix(1:9, nrow = 3)
print(my_list)
cat("\n")

# Question 6: String Manipulation
# Create a string variable text with the value "Hello World". Replace all occurrences of "World" with "R" and convert the entire string to uppercase. Print the resulting string.
text <- "Hello World"
text <- gsub("World", "R", text)
text <- toupper(text)
print(text)
cat("\n")

# Question 7: Filtering Data Frame
# Create a data frame students with columns name (values: "Alice", "Bob", "Charlie", "David"), score (values: 85, 92, 78, 90). Filter the data frame to include only the students with scores greater than 80. Print the filtered data frame.
students <- data.frame(
  name = c("Alice", "Bob", "Charlie", "David"),
  score = c(85, 92, 78, 90)
)
filtered_students <- students[students$score > 80, ]
print(filtered_students)
cat("\n")

# Question 9: Factor Variables
# Create a factor variable colors with levels "red", "green", and "blue". Assign the values "red", "blue", "green", "red" to the factor variable. Print the factor variable and its levels.
colors <- factor(c("red", "blue", "green", "red"), levels = c("red", "green", "blue"))
print(colors)
print(levels(colors))

# @title Defining DataFrames
student <- data.frame (
  USN = c("1RV23AI008", "1RV23AI034", "1RV23AI052"),
  Name = c("Aditya", "Garv", "Mayur")
)
student
cat("\n")

employee <- data.frame (
  employee_id = c(1:5),
  Name = c("Aditya", "Garv", "Mayur", "Bhanu", "Vinayak"),
  DOJ = as.Date(c("2000-01-05", "2001-02-04", "2002-03-03", "2003-04-02", "2004-05-01"))  # Enter Date
)
employee
cat("\n")
str(employee) # Gives Structure of Data

# @title Extracting Data
print(employee$Name) # Column Values (Row-Wise)
cat("\n")
print(employee["Name"]) # Column Values (Column- Wise)
cat("\n")
print(data.frame(employee$Name)) #In  Form of DataFrame
cat("\n")
print(employee[1,]) # Print 1st Row of DataFrame
cat("\n")
print(employee[2:3,]) # Print multiple Rows of DataFrame
cat("\n")
print(employee[c(2,3),c(1,3)]) # Print using c [ 2nd and 3rd row && 1st and 3rd Column ]
cat("\n")
summary(employee) # Gives all Analysis

# @title Deleting Rows/Columns
df <- data.frame(x = 1:5, y = 6:10, z = 11:15)
df

df <- df[-1,] # Remove 1st Row
df

df <- data.frame(x = 1:5, y = 6:10, z = 11:15)
df$x <- NULL # Remove Column
df

df <- data.frame(x = 1:5, y = 6:10, z = 11:15)
df[2, ] <- NA # Delete row 2
df

# @title Setting Directory If Needed
print(getwd())
# setwd("C://Aditya")
print(getwd())

# @title Creating the CSV File
data <- data.frame(
    id = c(1, 2, 3, 4, 5, 6, 7, 8),
    name = c("Shubham", "Arpita", "Vaishali", "Nishka", "Gunjan", "Sumit", "Anisha", "Akash"),
    salary = c(613.3, 525.2, 63, 749, 863.25, 588, 932.8, 712.5),
    start_date = c("01-01-2012", "23-09-2013", "15-11-2014", "11-05-2014", "27-03-2015", "21-05-2013", "30-07-2013", "17-06-2014"),
    dept = c("IT", "Operations", "IT", "HR", "Finance", "IT", "Operations", "Finance")
)
csv_file <- "record.csv"
write.csv(data, file = csv_file, row.names = FALSE)
cat("CSV file created successfully:", csv_file)

# @title Importing Dataset
record <- read.csv("record.csv") # Read Dataset and return DataFrame
record
print(is.data.frame(record)) # Check if Data-Frame
cat("\n")
ncol(record) # No. of Columns
nrow(record) # No. of Rows

# @title Analysing DataFrame
max(record$salary) #get Maximum Salary
min(record$salary) #get Minimum Salary
summary(record)

subset(record, salary==max(salary)) # Subset of a Dataset using condition : subset(reference , column == (condition))
subset(record, salary == min( subset(record, dept == "Operations" )$salary )) # Minimum Salary in Operations Department

# @title Data Arrangement
library("dplyr")
dplyr::arrange(record,name) # arranging data based on condition
cat("\n")
dplyr::arrange(record,desc(salary)) # arranging salary in descending order

# @title Filter, Select Functions
filter(record, salary > 700) # filter( dataset, condition)
cat("\n")
select(record, name, dept) # get multiple data from multiple columns

# @title Pipes
record %>% filter (dept == "Operations") %>% select (name, dept) # Apply multiple conditions

# @title Select Functions : matches, starts_with, contains
select(record, matches("name"))
cat("\n")
select(record, starts_with("sal"))
cat("\n")
select(record, contains("dept"))
# All apply on column names

# @title 1. Paste Function
paste("Hello","Computer","Science", sep = "_") # takes multiple arguments and concatenates to give output
cat("\n")
paste(c(1:10), collapse = "_") # use collapse w.r.t vectors
cat("\n")
paste0(c("one", "two", "three", "four", "five") , 10:15 , collapse = " - & - ") # vectors and sequence gets concatenated
cat("\n")
paste(record$name , sep = '_', collapse = '  ') # Printing Datafram

# @title 2. nchar( ) Function
nchar("RVCE") # length of String
cat("\n")
v = c('geeks' , '2', 'hello' , 55, 57)
nchar(v) # Prints individual character length

# @title 3. Length Function
v = c('geeks' , '2', 'hello' , 55, 57) # It will give length of the Vector instead of Individual
length(v)

# @title 4. Strsplit Function
strsplit("Hello World, Welcome to RV College of Engineering", " ") # strsplit( string, split expression)  default separator : space
strsplit("RV123College456Of789Engineering", "[0-9]+") # To separate string and numbers : wherever number 0-9 , considered as split expression
strsplit("RV123College456Of789Engineering", "[a-z A-Z]+") # To get only numbers , Regular Expression
Date_Values <- c("2023-01-01", "2023-02-02", "2023-03-03", "2023-04-04", "2023-05-05")
strsplit(Date_Values, split = "-")

# @title 5. Sprintf Function
f <- 10
c <- "Mayur"
sprintf("%s scored %d", c, f) # Formatter

# @title 6. Substr Function
substr("RVCE", 1, 3)
substr("RVCE", 2, 3)
substr(1234567, 3, 6)

# @title 7. Cat Function
cat("Hello World", "Welcome to RVCE" , sep = ":")
cat(c(1:5) , file = 'sample.txt')  # File Creation using cat func

# @title 8. Case Conversion
str <- c("Hello", "WORLD", "How", "Are", "You")
tolower(str) # Convert to lowercase
toupper(str) # Convert to uppercase
cat("\n")
casefold(str , upper = F)
casefold(str , upper = T)

# @title 9. Chartr Function
string <- "Hello World , Welcome to RVCE"
chartr("lo", "12", string) # Substitute specific characters in a string

# @title 10. Gsub Function
str_trim <- function(x) {
  gsub("^\\s+|\\s+$", "", x)
}

# Replace all white space with underscore
str_underscore <- function(x) {
  gsub("\\s+", "_", x)
}

# Replace all white space with comma
str_comma <- function(x) {
  gsub("\\s+", ",", x)
}

# @title Matrices
P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(c("row1", "row2", "row3", "row4"), c("col1", "col2", "col3")))
print(P)
cat("\n")
N <- matrix(c(3:14), nrow = 4, byrow = FALSE, dimnames = list(c("row1", "row2", "row3", "row4"), c("col1", "col2", "col3")))
print(N)

# @title Accessing elements and Changing Values
P[2,3]  # Access the element in the second row and third column
N[3, ]  # Acces third row
P[3,3] = 13 # Using Index Operator to change
P[P<5]<-1 # Using Relational Operators
P
length(P) # Gives total number of elements in P
# P[5,5] = 10 Out Of Bounds Error

# @title Matrix Operations
matrix1 <- P
matrix2 <- N
matrix1
cat("\n")
matrix2
cat("\n")
matrix1 + matrix2  # Addition
cat("\n")
matrix1 - matrix2  # Subtraction
cat("\n")
matrix1 * matrix2  # Multiplication
cat("\n")
matrix1 / matrix2  # Division
cat("\n")
matrix1 ** matrix2 # Exponentiation
cat("\n")
6 %in% matrix1 # %in% Operator to check Presence

# @title Combining Matrix Using rbind/cbind
matrix1 <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
matrix2 <- matrix(c(5, 6, 7, 8), nrow = 2, ncol = 2)
matrix3 <- matrix(c(4, 5, 0, 9), nrow = 2, ncol = 2)

# Rbind
matrix_rbind <- rbind(matrix1, matrix2, matrix3)
# Cbind
matrix_cbind <- cbind(matrix1, matrix2, matrix3)

matrix_rbind
cat("\n")
matrix_cbind

# @title Matrix Multiplication in R
A <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
B <- matrix(c(5, 6, 7, 8), nrow = 2, ncol = 2)
# Multiply the matrices using %*% operator
C <- A %*% B
print(C)

# @title Removing Rows/Columns
mat <- matrix(c(4, 5, 0, 9), nrow = 2, ncol = 2)
print(mat)
mat[-1,] # Removing 1st row
mat[,-2] # Removing 2nd column

# @title Printing Matrix Using For Loop
matrix <- matrix(1:9, nrow = 3, ncol = 3)
for (i in 1:nrow(matrix)) {
  for (j in 1:ncol(matrix)) {
    print(matrix[i, j])
  }
}

# @title Matrix Multiplication using For Loop
A <- matrix(c(1:6), nrow = 3, ncol = 2)
B <- matrix(c(5:10), nrow = 2, ncol = 3)
C <- matrix(c(0), nrow = 3, ncol = 3)

for (i in 1:nrow(A)) {
  for (j in 1:ncol(B)) {
    for (k in 1:ncol(A)) {
      C[i, j] <- C[i, j] + A[i, k] * B[k, j]
    }
  }
}
print(C)

# @title Assignment 1
# Write a program to create a data frame to represent the data given in the table and perform the following operations.

# 1. Display the Batsmen's name along with runs scored in Test and T20. Display the details of the batsmen who have scored more than 2000 in ODI
# 2. Display the 2nd and 4th row of the dataframe
# 3. Delete the data of "Hardik Pandya" and "Shikhar Dhawan" from the original dataframe.

# SNo Batsman_Name   Test ODI  T20
# 1   Virat Kohli    3543 2245 1925
# 2   Ajinkya Rebane 2578 2165 1853
# 3   Rohit Sharma   2280 2080 1522
# 4   Shikhar Dhawan 2158 1957 1020
# 5   Hardik Pandya  1879 1856 980

stats <- data.frame (
  SNo. = c(1:5),
  Batsman_Name = c("Virat Kohli", "Ajinkya Rahane", "Rohit Sharma", "Shikhar Dhawan", "Hardik Pandya"),
  Test = c( 3543, 2578, 2280, 2158, 1879),
  ODI = c( 2245, 2165, 2080, 1957, 1856),
  T20 = c( 1925, 1853, 1522, 1020, 980)
)
stats                    # Step 1 : Creating a DataFrame
cat("\n")
stats[,c(1:3,5)]         # Step 2 : Displaying only Test and T20 scores
cat("\n")
filter(stats, ODI>2000)  # Step 3 : Displaying those with more than 2000 ODI runs
cat("\n")
stats[c(2,4),]           # Step 4 : Displaying 2nd and 4th row of DataFrame
cat("\n")
stats <- subset(stats, Batsman_Name != "Hardik Pandya" & Batsman_Name != "Shikhar Dhawan")  # Step 5 : Deleting the data of "Hardik Pandya" and "Shikhar Dhawan" from the original dataframe.
stats

 # @title Importing Library
 install.packages("openxlsx")
 install.packages("readxl")

# @title Creating Excel File
Empinfo <- data.frame (
  EmpNo. = c("E01", "E02", "E03", "E04", "E05"),
  Department = c("Akhil", "Bhaskar", "Deepika", "Kunal", "Sashi"),
  Salary = c(30000, 50000, 100000, 75000, 90000),
  Age = c(24, 25, 25 ,26, 30)
)

Deptinfo <- data.frame (
  EmpNo. = c("E01", "E03", "E04", "E06", "E07"),
  Department = c("Akhil", "Deepika", "Kunal", "Shyla", "Vishnu"),
  Designation = c("Developer", "Team Lead", "Senior Developer", "Manager", "Project Lead")
)

library(openxlsx)
write.xlsx(Empinfo, file = "Empinfo.xlsx", rowNames = FALSE)
write.xlsx(Deptinfo, file = "Deptinfo.xlsx", rowNames = FALSE)

# @title Assignment 2
# Write a Program to Import Excel Files into 2 DataFrames and perform the following :

# 1. Inner Join ,
# 2. Right Outer Join
# 3. Cross Join

library(readxl)

df1 <- read_excel("/content/Empinfo.xlsx")
df2 <- read_excel("/content/Deptinfo.xlsx")

inner_join <- inner_join(df1, df2, by = "EmpNo.")

right_outer_join <- right_join(df1, df2, by = "EmpNo.")

cross_join <- merge(df1, df2, by = NULL)

cat("Inner Join:\n")
print(inner_join)
cat("\nRight Outer Join:\n")
print(right_outer_join)
cat("\nCross Join:\n")
print(cross_join)

# @title 1. Pie Chart
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")
piepercent <- round(100*x/sum(x), 1)
 # png(file = "City Pie Chart.jpg") to generate Pie Chart Image instead of printing it
pie(x, labels, main = "City Pie Chart", col = rainbow(length(x)))
pie(x, labels = piepercent , main = "City Pie Chart", col = rainbow(length(x))) # As perentage
legend("bottomright", legend = labels, fill = rainbow(length(labels)))

# @title 2. 3D Pie Chart
install.packages("plotrix", dependencies = TRUE)
library(plotrix)

x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")
pie3D(x, labels = labels , main = "City Pie Chart")

# @title 3. Bar Chart
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

barplot(x, names.arg =labels, main = "Bar Chart", xlab = "Cities", ylab = "Values", col = "blue", border = "red")

# @title 4. Stacked Bar Chart
regions <- c("East", "West", "North")
months <- c("Mar", "Apr", "May", "Jun", "Jul")
colors <- c("green", "orange", "brown")
values <- matrix(c(10, 15, 20, 25, 30, 8, 12, 18, 22, 28, 6, 9, 12, 15, 20), nrow = length(regions), byrow = TRUE)

barplot(values, beside = F, col = colors, names.arg = months, main = "Stacked Bar Chart by Region and Month", xlab = "Months", ylab = "Values")
legend("topright", legend = regions, fill = colors)

# @title 5. Box Plot
data(mtcars)
boxplot(mpg ~ cyl, data = mtcars, main = "Number of Cylinders", xlab = "Number of Cylinders", ylab = "Miles per Gallon", col = "lightblue")
boxplot(mpg ~ cyl, data = mtcars, main = "Number of Cylinders", xlab = "Number of Cylinders", ylab = "Miles per Gallon", col = c("green", "yellow", "purple"), notch = T, varwidth = T)

# @title 6. Histogram
data <- c(10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60)
hist(data, main="Histogram of Sample Data", xlab="Value", ylab="Frequency", col = "Yellow")
hist(data, main="Histogram of Sample Data", xlab="Value", ylab="Frequency", col = "Green", border = "Red", xlim = c(0,60), ylim = c(0,5))

# @title 7. Line / Scatter / Stair-Case Graph
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 5, 8, 10)

x1 <- c(1, 2, 3, 4, 5)
y1 <- c(2, 4, 4, 7, 4)

plot(x, y, type = "l", col = "blue", lwd = 2, main = "Line Graph", xlab = "X-axis", ylab = "Y-axis")

# lines() to plot on same graph
lines(c(1, 5, 7, 7, 1) , type = "b", col = "red", lwd = 2)
lines(c(3, 7, 2, 6, 5) , type = "o", col = "blue", lwd = 2)


plot(x1, y1, type = "p", col = "purple", lwd = 2, main = "Line Graph", xlab = "X-axis", ylab = "Y-axis") # Scatter Plot
lines(c(4, 7, 5, 2, 5) , type = "s", col = "black", lwd = 2)
lines(c(1:5) , type = "h", col = "purple", lwd = 2)

# @title 8. Scatter Plot Matrices
data(mtcars)
pairs(~wt+mpg+disp+cyl, data = mtcars , main = "Scatter Plot Matrix")

# @title Working on "mtcars" Dataset
library(ggplot2)
data(mtcars)
str(mtcars)

# @title Scatter Plot (ggplot)
# Convert the variables 'am', 'cyl', 'vs', and 'gear' to factors
mtcars$am <- factor(mtcars$am)
mtcars$cyl <- factor(mtcars$cyl)
mtcars$vs <- factor(mtcars$vs)
mtcars$gear <- factor(mtcars$gear)

ggplot(mtcars, aes(x = cyl, y = vs)) + geom_point()
cat("\n")
ggplot(mtcars, aes(x = cyl, y = vs)) + geom_jitter( width = 0.1)
cat("\n")
ggplot(mtcars, aes(x = cyl, y = vs)) + geom_jitter( width = 0.1 , alpha = 0.5)

# @title Bar Chart (ggplot)
library(ggplot2)

ggplot(mtcars, aes(x = factor(cyl), fill = factor(am))) +
  geom_bar(position = "fill") +
  labs(x = " Cylinders", y = "Proportion", fill = "Transmission") +
  facet_wrap(~gear)

# @title Histogram (ggplot)
library(ggplot2)

ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 2, fill = "skyblue", color = "black") +
  labs(title = "Histogram of MPG in mtcars", x = "MPG", y = "Frequency")

# @title Assignment 1
data(airquality)

# 1. Display row(s) where Ozone has the maximum value
filter(airquality, Ozone == max(Ozone, na.rm = TRUE))

# 2. Display vector of values of wind for the values of Ozone that are above the upper quartile
boxplot(Wind ~ Ozone, data = airquality, main = "Ozone Vs Wind", xlab = "Ozone", ylab = "Wind", col = "lightblue")

upper_quartile <- quantile(airquality$Ozone, 0.75, na.rm = TRUE)
above_upper_quartile <- airquality$Ozone > upper_quartile
na.omit(airquality$Wind[above_upper_quartile])

# @title Assignment 2

# 1. Create a Dataframe "snow"
snow <- data.frame (
  year <- c(1970, 1972, 1973, 1974, 1974, 1976),
  snowcover <- c(6.5, 12.0, 14.9, 10.0, 10.7, 7.9)
)

snow
cat("\n")

# 2. Display mean, median, 4th decile, and coefficent of Variance of snowcover
mean(snow$snowcover)
median(snow$snowcover)
quantile(snow$snowcover, probs = 0.4)
sd(snow$snowcover) / mean(snow$snowcover) * 100
cat("\n")

# 3. Find mean of snowcover for odd and even numbered years
print("Odd Years")
mean(subset(snow$snowcover, snow$year %% 2 != 0))
print("Even Years")
mean(subset(snow$snowcover, snow$year %% 2 == 0))

# @title Assignment 3
data(PlantGrowth)

# Draw boxplot of weight as a funtion of group and perform the following :
# 1. Provide X axis Label as "Treatmemt Group" and Y axis Label as "Dried Biomass Weight"
# 2. Set color of box as red and border.
# 3. Change color and width of the staple and whisker

boxplot(weight ~ group,
        data = PlantGrowth,
        main = "Dried Biomass Weight vs Treatment Group",
        xlab = "Treatment Group",
        ylab = "Dried Biomass Weight",
        col = "red",
        border = "blue",
        whisklty = 2,
        whisklwd = 2,
        staplelty = 1,
        staplelwd = 2)