# Data types
# use sharp sign for comments, comments are part of code that is
# not executed

# Operator <- is used to assign a value to a variable (a.k.a. symbol)

# There are five atomic classes in R: character, numeric, integer, complex
# and logical, you can find class of a variable using class() functions

vec1 <- c(1, 2, 3)
vec2 <- c(TRUE, TRUE, FALSE)
vec3 <- c(T, F, F, T)
vec4 <- 9:29  # a vector can be also created using a colon operator
vec5 <- c("a", "b", "f", "q")
vec6 <- c(1+0i, 3+4i, 2+5i)
vec7 <- c(1L, 2L, 3L)

class(vec1)
class(vec2)
class(vec3)
class(vec4)
class(vec5)
class(vec6)
class(vec7)

# Vector is created by concatenating elements using c() function
myVector <- c(1, 2, 3, 4, 5, 6, 7)

# Matrix is created using matrix() function
myMatrix <- matrix(1:6, nrow = 2, ncol = 3)

vctr1 <- 3:5
vctr2 <- 1:3
cbind(vctr1, vctr2)
rbind(vctr1, vctr2)

# List are also very important in R
myList <- list("Hello, World!", FALSE, c(1:10))

# Probably the most important class in R is data frame
myFirstFrame <- data.frame(id = 1:7, day = c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"))