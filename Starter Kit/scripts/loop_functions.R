# The "apply()" familly

# In this code we will review:
# 1. lapply()
# 2. sapply()
# 3. apply()
# 4. tapply()
# 5. mapply()

# ------------------------------------------------ #
# 1. lapply() - apply a function and return a list #
# ------------------------------------------------ #

myList <- list(seq(1, 5, 0.3), rep(10, 5), seq(12, 19, 1))
lapply(myList, mean)

# if objecty is not list, it will be coerced to become a list
# also, a function is passed to lapply() just like any other object
# note, that you don't have to add parentheses to runif
s <- 1:3
lapply(s, runif)

# the ... operator gives ability to use arguments of an input function
# run ?runif to see its arguments
# in the following two lines, we use min and max argument of runif()
s <- 1:3
lapply(s, runif, min = 0, max = 5)

# Anonymous functions can also be input arguments
mat1 <- matrix(1:9, 3, 3)
mat2 <- matrix(2*(1:9), 3, 3)
matrixList <- list(first = mat1, second = mat2)
# return fifth element of each list
lapply(matrixList, function(lst) { lst[[5]] })

# --------------------------------------------- #
# 2. sapply() - same as lapply() but simplified #
# --------------------------------------------- #

numbers <- list(a = 20:27, b = seq(1, 18, 0.23), c = rnorm(20, 4))
lapply(numbers, mean)
sapply(numbers, mean)

# ------------------------------------------------- #
# 3. apply() - evaluate a function over the margins #
# ------------------------------------------------- #

str(apply)
mat <- matrix(1:9, 3, 3)
print(mat)
apply(mat, 1, mean) # mean of each row
apply(mat, 2, mean) # mean of each column

# ------------------------------------------------------- #
# 4. tapply() - apply a function over subsets of a vector #
# ------------------------------------------------------- #

data <- c(runif(10, 10, 20), runif(10, 0, 12), runif(10, 27, 34))
myFact <- gl(3, 10)
tapply(data, myFact, mean)
tapply(data, myFact, mean, simplify = FALSE)

# --------------------------------------------------------------------- #
# 5. mapply() - multivariate apply which applies a function in parallel #
# --------------------------------------------------------------------- #

# mapply() can be applied to multiple R objects, consider the following:
list(rep(1, 4), rep(2, 3), rep(3, 2), rep(4, 1))
#instead
mapply(rep, 1:4, 4:1)

# --------------- #
# End of Tutorial #
# --------------- #