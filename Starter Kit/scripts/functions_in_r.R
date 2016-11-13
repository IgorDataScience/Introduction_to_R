# Functions in R

# A simple function that takes nothing, and gives nothing
fun <- function() {
  
}

class(fun)

# Function with non-trivial body
myFun <- function() {
  print("This is my non-trivial function")
}

myFun()

# A modified version of previous function - print $num$ number of times
myFun <- function(num) {
  for (i in 1:num) {
    print("This is my non-trivial function")
  }
}

myFun(7)

# A modified version of previous function - counts number of
# printed letters
myFun <- function(num, text) {
  for (i in 1:num) {
    print(text)
  }
  numChars <- nchar(text) * num
  numChars
}

var <- myFun(2, "Learning FUNctions is FUN")
print(var)

varVar <- myFun(text = "There is more than one way", num = 3)
print(varVar)

myFun(3) #this produces error

# Let's modify previous function, and add a default value for $text$
myFun <- function(num, text = "Hello, World!") {
  for (i in 1:num) {
    print(text)
  }
  numChars <- nchar(text) * num
  numChars
}

vaVar <- myFun(3)
print(vaVar)

formals(myFun)

# Note various ways for argument matching
seq(from = 1, to = 10, by = 0.1)
seq(1, 10, 0.1)
seq(to = 10, by = 0.1, from =1)
seq(from = 1, to = 10, 0.1)
seq(1, 10, by = 0.1)
seq(10, 1, by = 0.1) # Be careful when you are using positional matching!

# If a function has a default value for a parameter,
# then you don't have to specify that argument explicitly,
# unless you want to change it
vec <- seq(2, 17, by = 0.27)
mean(vec)
mean(vec, na.rm = FALSE) # na.rm (remove NAs) is FALSE by default

# On the side note, na.rm can be very useful, if a vector has
# any NAs, mean value will be NA. Use na.rm to remove NAs
vec <-c(vec, NA)
mean(vec)
mean(vec, na.rm = TRUE)

# There is one more argument to consider, the ... argument
args(paste)
args(cat)
args(c)
