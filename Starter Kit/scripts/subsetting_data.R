# Subsetting objects in R

# Subsetting Vectors and Matrices

# Following examples show subsetting of vectors

vec <- c("A", "Gray", "Fox")
vec[3]
vec[1]

myVar <- c("a", "b", "c", "d", "e", "f", "g")
myVar[2:4]
myVar[c(1, 3, 5)]

mySequence <- seq(from = 1, to = 10, by = 0.5)
myCondition <- mySequence > 7.5
mySequence[myCondition]

x <- 1:20
cond <- x >= 11
x[cond]

# Or, an easier way to do (i.e. putting condition directly
# into [] operator)

x[x >= 11]

# Folowing example shows subsetting of matrice

# Notice that you cannot have two values with same variable name in the Environment!
# The moment you define variable with the same name, you override the previous variable

x <- matrix(1:6, 2, 3)
print(x)
x[1, 2] # prints element in position: first row, second column
x[2, 1] # prints element in position: second row, first column

x[1, ] #extract the first row
x[, 2] #extract the second column

# Subsetting Lists

shoppingList <- c("Banana", "Tomato", "Apple")
toDoList <- c("Go to farmers' market", "Study R", "Practice R")
lottertNumbers <- c(7, 21, 49, 22, 13, 2, 37)

myList <- list(shop = shoppingList, todo = toDoList, nums =lottertNumbers)

myList[[1]]

myList[[3]]

# The operator [[]] can be used with named indices

myList[["shop"]]

# Or you can use dollar sign ($) operator

myList$shop

# $ cannot be used with computed indices, as shown below

z <- list(foo = 1:6, bar = seq(2, 4, 0.5), hello = "World!")
name <- "bar"
z[[name]]
z$name # this will return NULL but it will not generate an error

myNest <- list(letters = list("C", "R", "S"), constants = c(2.81, 3.14))

# Get the 3rd element of the 1st element
myNest[[c(1, 3)]]
myNest[[1]][[3]]
# Get the 1st element of the 2nd element
myNest[[c(2, 1)]]

# Extract second and fourth element of a list
x <- list(foo = 1:10, bar = seq(1, 4, 0.5), boo = "c", far = FALSE)
x[c(2, 4)]

# Removing NAs from a dataset can be important for you analysis

myData <- c("2015-10-10", "2015-10-11", NA, NA, "2015-10-14")
faultyData <- is.na(myData)
print(faultyData)

# faultyData variable can be used to subset non NA values
# from original dataset
myData[!faultyData]